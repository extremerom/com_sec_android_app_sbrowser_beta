.class public abstract Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;


# static fields
.field static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field static final ERROR_MSG:Ljava/lang/String; = "error_msg"

.field static final IS_SUCCESS:Ljava/lang/String; = "is_success"

.field protected static final KEY_FILE_HASH:Ljava/lang/String; = "mhtml"

.field protected static final KEY_RECORD_ID:Ljava/lang/String; = "record_id"

.field protected static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final LAST_SYNC_PAGE_TOKEN:Ljava/lang/String; = "last_sync_page_token"

.field static final LAST_SYNC_TIME:Ljava/lang/String; = "last_sync_time"

.field static final MAX_COUNT:Ljava/lang/String; = "max_count"

.field static final NEED_COLD_START:Ljava/lang/String; = "need_cold_start"

.field static final SERVER_CHANGE_ID_LIST:Ljava/lang/String; = "server_change_id_list"

.field static final STATUS_DELETE:Ljava/lang/String; = "delete"

.field static final STATUS_NORMAL:Ljava/lang/String; = "normal"

.field static final STATUS_UPLOAD_COMPLETE:Ljava/lang/String; = "uploadComplete"

.field static final TYPE_DOWN_SYNC:Ljava/lang/String; = "downSync"

.field static final TYPE_SYNC:Ljava/lang/String; = "sync"


# instance fields
.field final mLocalKeyList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRecordMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "LI8/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mLocalKeyList:Ljava/util/Set;

    return-void
.end method

.method private getDAPIFromLocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private queryLocalKeys(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mLocalKeyList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getCursorForQueryLocalKeys(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mLocalKeyList:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkMandatoryFields(LI8/a;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "deleted"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteOwnData(Landroid/content/ContentValues;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish type : "

    invoke-static {v1, p2, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mLocalKeyList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    if-eqz p3, :cond_1

    const-string p2, "is_success"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "last_sync_time"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish success lastSyncTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getSyncAdapterName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->setLastSyncTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "error_code"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "error_msg"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "finish Sync is failed errorCode : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorMsg : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public fromJSON(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getColumns()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDAPIFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->isSupportNullField(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "There is no column in json : "

    invoke-static {v6, v4, v5}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public abstract getAccountTypeColumnName()Ljava/lang/String;
.end method

.method public abstract getColumns()[Ljava/lang/String;
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public getCursorForHeader(Landroid/content/Context;Z[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getAccountTypeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDirtyColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    if-eqz p3, :cond_1

    array-length v3, p3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p3, v5

    const-string v7, ", \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p3, " and "

    invoke-static {v1, p3}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v4, v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    if-lez p4, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getIdColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " DESC LIMIT "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v6, p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getCursorForQueryLocalKeys(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getAccountTypeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "LI8/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getData"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI8/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public abstract getDeleteColumnName()Ljava/lang/String;
.end method

.method public abstract getDirtyColumnName()Ljava/lang/String;
.end method

.method public getDownloadPathMap(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LI8/c;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getFaviconColumnName()Ljava/lang/String;
.end method

.method public getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "LI8/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-string v0, "need_cold_start"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "server_change_id_list"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "max_count"

    invoke-virtual {p2, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHeader isColdStart : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", serverChangeIdList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", maxCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateCurrentSyncStatus(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getCursorForHeader(Landroid/content/Context;Z[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->makeHeader(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_0

    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getHeader - unable to query : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getHeader result size : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public abstract getIdColumnName()Ljava/lang/String;
.end method

.method public abstract getJSONObject(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
.end method

.method public abstract getKeyColumnName()Ljava/lang/String;
.end method

.method public abstract getKeyPrefix()Ljava/lang/String;
.end method

.method public abstract getSyncAdapterName()Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTimeStampColumnName()Ljava/lang/String;
.end method

.method public getTouchIconColumnName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insertOrUpdate(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;JLcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z
    .locals 4

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->fromJSON(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getFaviconColumnName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p6, :cond_0

    invoke-static {p6, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getFaviconColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTouchIconColumnName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_1

    invoke-static {p6, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTouchIconColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object p6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDirtyColumnName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->isExist(Ljava/lang/String;)Z

    move-result p4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p5, "true"

    const-string p6, "caller_is_syncadapter"

    const/4 v1, 0x1

    if-eqz p4, :cond_3

    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p6, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p1, p5, p2, p4, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->skipToDownload(Landroid/content/ContentValues;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getSyncAdapterName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getLastSyncTime(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->deleteOwnData(Landroid/content/ContentValues;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p3

    const-string p4, "insertOrUpdate : deleteOwnData"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDirtyColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual {p3, p6, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "insert is failed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_6
    return v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mLocalKeyList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupportNullField(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeHeader(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/List;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "LI8/b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    if-eqz v0, :cond_6

    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v12, v1, [Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v13, v1, [J

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v14, v1, [Z

    const/16 v16, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getIdColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    aput-boolean v1, v14, v16

    aget-object v1, v12, v16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-boolean v1, v14, v16

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    aget-object v1, v12, v16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->generateSyncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v16

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v13, v16

    new-instance v8, LI8/b;

    aget-object v5, v12, v16

    aget-object v6, v11, v16

    aget-boolean v1, v14, v16

    if-eqz v1, :cond_3

    const-string v2, "delete"

    :goto_2
    move-object v7, v2

    goto :goto_3

    :cond_3
    const-string v2, "normal"

    goto :goto_2

    :goto_3
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LI8/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_5

    new-instance v7, LI8/a;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getColumns()[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v11, v16

    aget-object v6, v12, v16

    aget-wide v17, v13, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v0, v7

    move-object v15, v8

    move-wide/from16 v7, v17

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getJSONObject(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LI8/a;-><init>(Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->checkMandatoryFields(LI8/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, LI8/c;

    invoke-direct {v1, v15, v0}, LI8/c;-><init>(LI8/b;LI8/a;)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    aget-object v2, v11, v16

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mandatory fields are not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move-object v15, v8

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "makeHeader error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->queryLocalKeys(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getLastSyncTime(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "prepare type : "

    const-string v5, " lastSyncTime : "

    invoke-static {v4, p2, v5, v1, v3}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string v1, "prepare NumberFormatException!"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getCursorForHeader(Landroid/content/Context;Z[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string p2, "has_upload"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_4

    :goto_2
    if-eqz p1, :cond_2

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p2
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "prepare - unable to query : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_5
    const-string p0, "last_sync_time"

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public setData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LI8/c;",
            ">;",
            "Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;",
            ")Z"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    const/4 v9, 0x0

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setData : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x1

    move v12, v11

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI8/c;

    iget-object v1, v0, LI8/c;->a:LI8/b;

    iget-object v1, v1, LI8/b;->d:Ljava/lang/String;

    const-string v2, "normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, LI8/c;->a:LI8/b;

    if-eqz v1, :cond_2

    iget-object v3, v2, LI8/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v4, "setData normal recordId : "

    invoke-static {v4, v3, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, LI8/c;->b:LI8/a;

    iget-object v4, v0, LI8/a;->a:Lorg/json/JSONObject;

    iget-wide v5, v2, LI8/b;->c:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move-wide v4, v5

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->insertOrUpdate(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;JLcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, v2, LI8/b;->d:Ljava/lang/String;

    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, LI8/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setData delete recordId : "

    invoke-static {v2, v0, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->delete(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, v2, LI8/b;->d:Ljava/lang/String;

    const-string v1, "uploadComplete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, LI8/b;->b:Ljava/lang/String;

    iget-object v1, v2, LI8/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setData uploadComplete localId : "

    const-string v4, " recordId : "

    invoke-static {v3, v0, v4, v1, v2}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->uploadComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not supported status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v11

    :goto_2
    if-nez v0, :cond_1

    move v12, v9

    goto :goto_0

    :cond_5
    return v12

    :cond_6
    :goto_3
    return v9
.end method

.method public setLocalKey(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mLocalKeyList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mLocalKeyList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public skipToDownload(Landroid/content/ContentValues;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toJSON(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getColumns()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->isSupportNullField(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDAPIFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "record_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "toJSON error : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method public uploadComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getIdColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDirtyColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v2, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {p3, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3, v3, v0, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v1
.end method
