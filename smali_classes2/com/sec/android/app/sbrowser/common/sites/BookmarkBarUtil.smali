.class public Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarUtil;->lambda$sendStatusLogForBookmarkBarItemCount$0(ZLandroid/app/Activity;)V

    return-void
.end method

.method public static getBookmarkBarWidth(Landroid/content/Context;)I
    .locals 3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0701f6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0701f4

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    const v1, 0x7f0701f0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v2

    sub-int/2addr v0, p0

    return v0
.end method

.method private static synthetic lambda$sendStatusLogForBookmarkBarItemCount$0(ZLandroid/app/Activity;)V
    .locals 10

    const-string v0, "BookmarkBarUtil"

    if-eqz p0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getBookmarkBarId(Landroid/net/Uri;)J

    move-result-wide v1

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v5, "PARENT = ? AND DELETED = ? AND IS_COMMITED = ?"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getBookmarkBarId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v6

    const-string v1, "_ID"

    const-string v9, "FOLDER"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "POSITION DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v8

    if-eqz p1, :cond_3

    :goto_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_1
    move-exception p1

    move v1, v8

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBookmarkBarChildrenSize failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "isSecretMode : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "bookmarkItemCount : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "folderItemCount : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5

    const-string p1, "5803"

    goto :goto_6

    :cond_5
    const-string p1, "5800"

    :goto_6
    invoke-static {p1, v8}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    if-eqz p0, :cond_6

    const-string p1, "5804"

    goto :goto_7

    :cond_6
    const-string p1, "5801"

    :goto_7
    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    if-eqz p0, :cond_7

    const-string p0, "5805"

    goto :goto_8

    :cond_7
    const-string p0, "5802"

    :goto_8
    add-int/2addr v8, v1

    invoke-static {p0, v8}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendStatusLogForBookmarkBarItemCount(Landroid/app/Activity;Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140d6c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f140d6b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "On"

    goto :goto_1

    :cond_1
    const-string v1, "Off"

    :goto_1
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sites/a;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/app/sbrowser/common/sites/a;-><init>(ZLandroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
