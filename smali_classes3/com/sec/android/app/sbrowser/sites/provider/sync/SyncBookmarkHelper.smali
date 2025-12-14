.class public Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;
    }
.end annotation


# static fields
.field private static sSyncBookmarkHelper:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;


# instance fields
.field private mBookmarkUri:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SyncBookmarkHelper :SBrowserSync"

    const-string v1, "SyncBookmarkHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->lambda$updateDBOnSyncCompletion$0(IJ)V

    return-void
.end method

.method public static bookmarkSyncCompleted(I)V
    .locals 2

    const-string v0, "SyncBookmarkHelper :SBrowserSync"

    const-string v1, "bookmarkSyncCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SYNC_COMPLETED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private static databaseModifiedOnBookmarkSync()V
    .locals 2

    const-string v0, "SyncBookmarkHelper :SBrowserSync"

    const-string v1, "databaseModifiedOnBookmarkSync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DATABASE_MODIFIED_ON_SYNC:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized getBookmarkUri()Landroid/net/Uri;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mBookmarkUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bookmark_sync_local_changes"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mBookmarkUri:Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mBookmarkUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->sSyncBookmarkHelper:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->sSyncBookmarkHelper:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->sSyncBookmarkHelper:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$updateDBOnSyncCompletion$0(IJ)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getDownSyncCount()I

    move-result v0

    const-string v1, "updateDBOnSyncCompletion : downSyncCount : "

    const-string v2, "SyncBookmarkHelper :SBrowserSync"

    invoke-static {v0, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updateBookmarksTable(IJ)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->bookmarkSyncCompleted(I)V

    :cond_0
    return-void
.end method

.method private removeDuplicates()I
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "PARENT"

    const-string v3, "SyncBookmarkHelper :SBrowserSync"

    const-string v4, "SYNC5"

    const-string v10, "SYNC5"

    const-string v11, "CREATED"

    const-string v5, "_ID"

    const-string v6, "URL"

    const-string v7, "TITLE"

    const-string v8, "FOLDER"

    const-string v9, "PARENT"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v14

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "DELETED!= 1 AND bookmark_type = "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x1

    :try_start_0
    iget-object v12, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v13

    const-string v17, " SYNC5 DESC"

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_2

    :goto_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_ID"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v10, "URL"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v10, "TITLE"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v10, "FOLDER"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "CREATED"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    new-instance v12, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v23, v9

    int-to-long v8, v0

    if-ne v10, v7, :cond_0

    move/from16 v16, v7

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    :goto_1
    int-to-long v10, v11

    move-wide/from16 v17, v10

    move-object v11, v12

    move-object v0, v12

    move-wide v12, v8

    :try_start_2
    invoke-direct/range {v11 .. v22}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJ)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v23

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    move-object v8, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v23, v9

    goto :goto_2

    :cond_1
    move-object/from16 v23, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeDuplicates items size : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v8

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_2
    move-object/from16 v23, v9

    :goto_5
    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_7
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_d

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    add-int/lit8 v8, v8, 0x1

    move v10, v8

    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget-boolean v12, v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mIsFolder:Z

    const-string v13, "_ID = "

    const-string v14, "DELETED"

    const-string v15, "MODIFIED"

    const-string v7, "DIRTY"

    if-eqz v12, :cond_a

    iget-object v12, v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mTitle:Ljava/lang/String;

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_9

    iget-boolean v12, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mIsFolder:Z

    if-eqz v12, :cond_9

    iget-object v12, v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v5

    iget-object v5, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mTitle:Ljava/lang/String;

    invoke-static {v12, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v13

    iget-wide v12, v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mParentId:J

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    iget-wide v3, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mParentId:J

    cmp-long v3, v12, v3

    if-nez v3, :cond_7

    iget-wide v3, v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    iget-wide v12, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    cmp-long v3, v3, v12

    if-eqz v3, :cond_7

    iget-wide v3, v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mSync5:J

    iget-wide v12, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mSync5:J

    cmp-long v21, v3, v12

    if-gtz v21, :cond_5

    cmp-long v3, v3, v12

    if-nez v3, :cond_4

    iget-wide v3, v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J

    iget-wide v12, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J

    cmp-long v3, v3, v12

    if-lez v3, :cond_4

    goto :goto_a

    :cond_4
    move/from16 v21, v8

    move-object/from16 v4, v20

    const/4 v3, 0x1

    move-object/from16 v20, v2

    move-object v2, v9

    goto/16 :goto_e

    :cond_5
    :goto_a
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    iget-wide v3, v9, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    move-object/from16 v4, v20

    invoke-static {v3, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    const-string v2, "PARENT = "

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v21, v8

    move-object v2, v9

    iget-wide v8, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v12, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v6, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    :cond_6
    :goto_b
    const/4 v3, 0x1

    goto/16 :goto_e

    :cond_7
    move/from16 v21, v8

    move-object/from16 v4, v20

    move-object/from16 v20, v2

    :goto_c
    move-object v2, v9

    goto :goto_b

    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    :goto_d
    move/from16 v21, v8

    goto :goto_c

    :cond_9
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v18, v5

    goto :goto_d

    :cond_a
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v18, v5

    move/from16 v21, v8

    move-object v2, v9

    move-object v5, v13

    iget-object v3, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mUrl:Ljava/lang/String;

    iget-object v8, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mUrl:Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mTitle:Ljava/lang/String;

    iget-object v8, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mTitle:Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v8, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mParentId:J

    iget-wide v12, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mParentId:J

    cmp-long v3, v8, v12

    if-nez v3, :cond_6

    iget-wide v8, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    iget-wide v12, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    cmp-long v3, v8, v12

    if-eqz v3, :cond_6

    iget-wide v8, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mSync5:J

    iget-wide v12, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mSync5:J

    cmp-long v3, v8, v12

    if-gtz v3, :cond_b

    cmp-long v3, v8, v12

    if-nez v3, :cond_6

    iget-wide v8, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J

    iget-wide v12, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J

    cmp-long v3, v8, v12

    if-lez v3, :cond_6

    :cond_b
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, v6, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, v11, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object v9, v2

    move v7, v3

    move-object/from16 v5, v18

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move/from16 v8, v21

    goto/16 :goto_9

    :cond_c
    move-object/from16 v19, v3

    move/from16 v21, v8

    goto/16 :goto_8

    :cond_d
    move-object/from16 v19, v3

    const-string v1, "removeDuplicates : updated : "

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private removeNullUrls()I
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DELETED"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "DIRTY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    const-string v2, "MODIFIED"

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    const-string v2, "SYNC5"

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object p0

    const-string v2, "FOLDER = 0 AND (URL = \'\' OR URL IS NULL OR TITLE = \'\')"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string v0, "removeNullUrls: updated :  "

    const-string v1, "SyncBookmarkHelper :SBrowserSync"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private updateBookmarksTable(IJ)V
    .locals 4

    const-string v0, "SyncBookmarkHelper :SBrowserSync"

    const-string v1, "updateBookmarksTable : updatedRows : "

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long p1, p2, v2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updateInvalidParentId()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->removeDuplicates()I

    move-result p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->removeNullUrls()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updateChildrenCount()Z

    move-result p2

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updateChildrenPosition(J)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Calling notifyChange from updateBookmarksTable()"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->notifyChange(Landroid/content/Context;Landroid/net/Uri;Z)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->databaseModifiedOnBookmarkSync()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updateBookmarksTable Exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateDBOnSyncCompletion(IJ)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/a;-><init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;IJ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "SyncBookmarkHelper :SBrowserSync"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateInvalidParentId()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$1;-><init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->updateInvalidParentIdToRootFolder()V

    return-void
.end method

.method private updatePositionInDB(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;I)V
    .locals 7

    iget v0, p1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mDBPosition:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "DIRTY"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "POSITION"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    const-string v5, "SYNC5"

    invoke-static {v4, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    const-string v5, "MODIFIED"

    invoke-static {v4, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object p0

    const-string v5, "_ID = "

    invoke-static {v0, v1, v5}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "updatePositionInDB : update db operation has failed for _ID = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Position = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " DB Position = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mDBPosition:I

    const-string p2, "SyncBookmarkHelper :SBrowserSync"

    invoke-static {p0, p1, p2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updatePositions(IILjava/util/ArrayList;Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;",
            ">;",
            "Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updatePositions currentPosition :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":nextPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncBookmarkHelper :SBrowserSync"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "samePositionIds size :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updatePositionInDB(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;I)V

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    add-int/lit8 p1, p1, 0x1

    if-ne p1, p2, :cond_4

    const-string p0, "updatePositions currentPosition == nextPosition : "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p2, v0

    :goto_1
    if-ge p2, p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "samePositionIds.get(i)._id :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget-wide v3, v3, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "samePositionIds.get(i).position before update:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget v3, v3, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iput p1, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mPosition:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "samePositionIds.get(i).position after update:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget v3, v3, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p4, :cond_3

    move p1, v0

    :goto_2
    if-ge p1, p0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget-wide v2, p2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J

    iget-wide v4, p4, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    const-string p0, "samePositionIds whereToAdd = "

    invoke-static {p1, p0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    move p0, p1

    goto :goto_3

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const-string p1, "samePositionIds whereToAdd ending position= "

    invoke-static {p0, p1, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p0, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_4
    if-ge v0, p0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updatePositions currentPosition == nextPosition : samePositionIds "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget-wide v2, p2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updatePositionInDB(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;I)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public onChanged(ILjava/lang/Object;)V
    .locals 3

    const-string v0, "onChanged receiving propertyType = "

    const-string v1, "SyncBookmarkHelper :SBrowserSync"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string p0, "onChanged wrong propertyType"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "current_sync"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sync_bookmarks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updateDBOnSyncCompletion(IJ)V

    :goto_0
    return-void
.end method

.method public updateChildrenCount()Z
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const-string v1, "SyncBookmarkHelper :SBrowserSync"

    const-string v0, "updateChildrenCount : folderCursor.getCount() : "

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "PARENT"

    const-string v6, "TAGS"

    const-string v11, "_ID"

    filled-new-array {v11, v5, v6}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v3, :cond_6

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v6

    const-string v8, "FOLDER = 1 AND DELETED != 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    move-object v7, v12

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v15, :cond_4

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v16, 0x0

    :goto_0
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v17, 0x1

    const-string v10, "updateChildrenCount : updated : "

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARENT = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v5, v3

    move-object v7, v12

    move-object/from16 v20, v15

    move-wide v14, v8

    move-object v8, v0

    move-object/from16 v9, v18

    move-object v0, v10

    move-object/from16 v10, v19

    :try_start_4
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "CHILDREN_COUNT"

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_1
    move-object v2, v0

    move-object/from16 v14, v16

    goto/16 :goto_4

    :cond_0
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x190

    if-ne v5, v6, :cond_1

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v0

    move/from16 v13, v17

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v14, v16

    move/from16 v13, v17

    goto :goto_4

    :cond_1
    :goto_3
    :try_start_6
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object/from16 v15, v20

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v20, v15

    goto :goto_1

    :cond_2
    move-object v0, v10

    move-object/from16 v20, v15

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v14, v16

    move/from16 v13, v17

    goto :goto_6

    :cond_3
    move-object/from16 v14, v16

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v20, v15

    const/4 v7, 0x0

    move-object v2, v0

    move-object v14, v7

    :goto_4
    :try_start_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2

    :catchall_5
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_4
    move-object/from16 v20, v15

    const/4 v7, 0x0

    move-object v14, v7

    :goto_6
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_5
    :goto_7
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V

    goto :goto_a

    :catchall_6
    move-exception v0

    const/4 v7, 0x0

    move-object v14, v7

    goto :goto_9

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    move-object v14, v7

    :goto_8
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChildrenCount exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :goto_9
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V

    throw v0

    :cond_6
    :goto_a
    return v13
.end method

.method public updateChildrenPosition(J)V
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, " dbPosition = "

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "_ID"

    const-string v0, "PARENT"

    const-string v6, "FOLDER"

    const-string v7, "POSITION"

    const-string v8, "CREATED"

    filled-new-array {v5, v0, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v15

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v0, "parent id "

    const-string v12, "SyncBookmarkHelper :SBrowserSync"

    invoke-static {v9, v10, v0, v12}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 p2, v12

    :try_start_1
    const-string v12, "PARENT = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v16, "POSITION ASC,CREATED ASC"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v13, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v15

    move-object/from16 v17, v15

    move-object/from16 v15, p2

    const/4 v1, 0x0

    move-object v1, v14

    move-object/from16 v14, v16

    :try_start_2
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v9, :cond_6

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;-><init>(IJJ)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-wide v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-wide v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v10, p0

    :goto_2
    move-object/from16 v18, v8

    move-object v8, v7

    :goto_3
    move-object v7, v0

    goto/16 :goto_b

    :cond_0
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "first item id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mDBPosition:I

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;-><init>(IJJ)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "item id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mDBPosition:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "samePositionIds.size() = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v10, :cond_2

    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    check-cast v12, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget v10, v12, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mPosition:I

    iget v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mDBPosition:I

    if-eq v10, v12, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-le v10, v11, :cond_1

    const/4 v10, 0x0

    :try_start_6
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget v12, v12, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mPosition:I

    iget v13, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mDBPosition:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v14, v10

    move-object/from16 v10, p0

    :try_start_7
    invoke-direct {v10, v12, v13, v1, v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updatePositions(IILjava/util/ArrayList;Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;)V

    :goto_6
    move-object/from16 v18, v8

    move-object v8, v7

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move v14, v10

    goto/16 :goto_1

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget v13, v13, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mPosition:I

    invoke-direct {v10, v12, v13}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updatePositionInDB(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_3
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v13, v14

    :goto_7
    if-ge v13, v12, :cond_4

    :try_start_8
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    move/from16 v16, v12

    iget-wide v11, v14, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v14, v7

    move-object/from16 v18, v8

    :try_start_9
    iget-wide v7, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    cmp-long v7, v11, v7

    if-lez v7, :cond_3

    move v12, v13

    goto :goto_9

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object v7, v14

    move/from16 v12, v16

    move-object/from16 v8, v18

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto :goto_7

    :catchall_4
    move-exception v0

    :goto_8
    move-object v7, v0

    move-object v8, v14

    goto/16 :goto_b

    :catchall_5
    move-exception v0

    move-object v14, v7

    move-object/from16 v18, v8

    goto :goto_8

    :cond_4
    move-object v14, v7

    move-object/from16 v18, v8

    move/from16 v16, v12

    :goto_9
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adding to samePositionIds for : id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object v8, v14

    :try_start_b
    iget-wide v13, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " pos ="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mDBPosition:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_a
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_5

    iget-wide v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-wide v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v12, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_5
    move-object v7, v8

    move-object/from16 v8, v18

    goto/16 :goto_5

    :catchall_6
    move-exception v0

    goto/16 :goto_3

    :catchall_7
    move-exception v0

    move-object v8, v14

    goto/16 :goto_3

    :cond_6
    move-object/from16 v10, p0

    move-object/from16 v18, v8

    move-object v8, v7

    goto :goto_d

    :goto_b
    :try_start_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v9, v0

    :try_start_d
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v7

    :catch_0
    move-exception v0

    goto :goto_f

    :goto_d
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_10

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v18, v8

    :goto_e
    move-object v8, v7

    goto :goto_f

    :catch_2
    move-exception v0

    move-object v10, v1

    move-object/from16 v18, v8

    move-object v1, v14

    move-object/from16 v17, v15

    move-object/from16 v15, p2

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v10, v1

    move-object/from16 v18, v8

    move-object v1, v14

    move-object/from16 v17, v15

    move-object v8, v7

    move-object v15, v12

    :goto_f
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "updateChildrenPosition Exception "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_7
    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;

    iget v0, v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mPosition:I

    const v7, 0x7fffffff

    const/4 v9, 0x0

    invoke-direct {v10, v0, v7, v1, v9}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updatePositions(IILjava/util/ArrayList;Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;)V

    :cond_8
    move-object v14, v1

    move-object v7, v8

    move-object v1, v10

    move-object/from16 v15, v17

    move-object/from16 v8, v18

    goto/16 :goto_0

    :cond_9
    return-void
.end method
