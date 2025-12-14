.class public Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;


# instance fields
.field private mBookmarkBarId:J

.field private mBookmarkBarIdForSecret:J


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarId:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarIdForSecret:J

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->sInstance:Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->sInstance:Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->sInstance:Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private queryBookmarkBarId(Landroid/net/Uri;)J
    .locals 8

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "BookmarkBarIdManager"

    if-nez p0, :cond_0

    const-string p0, "queryBookmarkBarId() context is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string v4, "SYNC4 = ? AND DELETED = ?"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SBROWSERBOOKMARKBAR"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "_ID"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getBookmarkBarId(Landroid/net/Uri;)J
    .locals 6

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BookmarkBarIdManager"

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarIdForSecret:J

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->queryBookmarkBarId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarIdForSecret:J

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BookmarkBarIdManager mBookmarkBarIdForSecret id : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarIdForSecret:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarIdForSecret:J

    return-wide p0

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarId:J

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->queryBookmarkBarId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarId:J

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BookmarkBarIdManager mBookmarkBarId id : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarId:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarId:J

    return-wide p0
.end method

.method public setBookmarkBarId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarId:J

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->mBookmarkBarIdForSecret:J

    return-void
.end method
