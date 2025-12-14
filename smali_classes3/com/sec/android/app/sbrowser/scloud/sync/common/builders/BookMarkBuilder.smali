.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder$FOLDER;
    }
.end annotation


# static fields
.field private static final SBOOKMARK_COLUMNS:[Ljava/lang/String;

.field private static final STOCKBOOKMARK_COLUMNS:[Ljava/lang/String;


# instance fields
.field public mAuthorityUri:Landroid/net/Uri;

.field private mBookmarkId:J

.field public mBookmarkUri:Landroid/net/Uri;

.field private mBookmarksColumns:[Ljava/lang/String;

.field public mContentUri:Landroid/net/Uri;

.field private mFolderMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v15, "sync3"

    const-string v16, "sync4"

    const-string v0, "title"

    const-string v1, "url"

    const-string v2, "favicon"

    const-string v3, "thumbnail"

    const-string v4, "touch_icon"

    const-string v5, "folder"

    const-string v6, "parent"

    const-string v7, "position"

    const-string v8, "insert_after"

    const-string v9, "account_name"

    const-string v10, "account_type"

    const-string v11, "sourceid"

    const-string v12, "version"

    const-string v13, "created"

    const-string v14, "modified"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->STOCKBOOKMARK_COLUMNS:[Ljava/lang/String;

    const-string v18, "sync4"

    const-string v19, "tags"

    const-string v1, "title"

    const-string v2, "url"

    const-string v3, "favicon"

    const-string v4, "parent"

    const-string v5, "touch_icon"

    const-string v6, "dominant_color"

    const-string v7, "folder"

    const-string v8, "position"

    const-string v9, "insert_after"

    const-string v10, "account_name"

    const-string v11, "account_type"

    const-string v12, "sourceid"

    const-string v13, "device_name"

    const-string v14, "device_id"

    const-string v15, "created"

    const-string v16, "modified"

    const-string v17, "sync3"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->SBOOKMARK_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;-><init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkId:J

    new-instance p3, Landroid/util/LongSparseArray;

    invoke-direct {p3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mFolderMap:Landroid/util/LongSparseArray;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mContentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mAuthorityUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkUri:Landroid/net/Uri;

    const-string p3, "com.android.browser"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->STOCKBOOKMARK_COLUMNS:[Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarksColumns:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mAccount:Landroid/accounts/Account;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;->addSamsungBookmark(Landroid/accounts/Account;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkId:J

    goto :goto_0

    :cond_0
    const-string p3, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    sget-object p3, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->SBOOKMARK_COLUMNS:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarksColumns:[Ljava/lang/String;

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkId:J

    :cond_2
    :goto_0
    const-string p1, "content://"

    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mAuthorityUri:Landroid/net/Uri;

    const-string p2, "bookmarks"

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mContentUri:Landroid/net/Uri;

    const-string p2, "caller_is_syncadapter"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->getFolderList()V

    return-void
.end method

.method private getFolderList()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mContentUri:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder$FOLDER;->a()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "folder= 1 AND account_type= \'com.osp.app.signin\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mFolderMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mFolderMap:Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-void

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFolderList() :RemoteException"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BookMarkBuilder"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method private makeContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarksColumns:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/JSONParser;->fromJSONString(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p0

    const-string p1, "thumbnail"

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    const-string p1, "favicon"

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BookMarkBuilder"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "favicon decode error : "

    invoke-static {p1, v1, v2}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p1, "touch_icon"

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_2
    const-string p1, "dominant_color"

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NumberFormatException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public insert(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 5

    const-string v0, "BookMarkBuilder"

    const-string v1, "sync3"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->makeContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    const-string v3, "sync1"

    invoke-virtual {p1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sync5"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "parent"

    const/4 p4, 0x1

    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "bookmark_bar"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    return p4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkUri:Landroid/net/Uri;

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return p4

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RemoteException"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to Parse;"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public parse(Landroid/database/Cursor;JLjava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string p4, "BookMarkBuilder"

    const-string v0, "Error while trying to update sync3 "

    const-string v1, "updated bookmark with new  sync3 "

    const-string v2, "_id = "

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarksColumns:[Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/common/sync/JSONParser;->toJSON(Landroid/database/Cursor;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "parent"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkId:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v7, v5, v7

    const-string v8, "sync3"

    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mFolderMap:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v3, p1

    goto :goto_2

    :cond_1
    const-string v7, ""

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mFolderMap:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkUri:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p0, v7, p2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "parse():Exception in parsing"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object p0, v3

    :goto_3
    return-object p0
.end method

.method public update(Ljava/lang/String;JJLjava/lang/String;)Z
    .locals 5

    const-string p6, "BookMarkBuilder"

    const-string v0, "sync3"

    const-string v1, "parent"

    const-string v2, "_id="

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->makeContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    const-string v4, "sync5"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "deleted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;->mBookmarkUri:Landroid/net/Uri;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p0, p1, p3, p4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RemoteException"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to Parse;"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v3
.end method
