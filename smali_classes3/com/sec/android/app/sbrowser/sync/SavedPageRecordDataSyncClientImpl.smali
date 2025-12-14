.class public Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;
.super Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;
.source "SourceFile"


# static fields
.field static final SAVED_PAGE_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SavedPageRecordDataSyncClientImpl"


# instance fields
.field private final mSavedPageMessageHandler:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

.field private mSavedPagedStorageDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v14, "isNightMode"

    const-string v15, "isReadingItem"

    const-string v0, "_id"

    const-string v1, "path"

    const-string v2, "dir_path"

    const-string v3, "title"

    const-string v4, "description"

    const-string v5, "favicon"

    const-string v6, "url"

    const-string v7, "account_name"

    const-string v8, "account_type"

    const-string v9, "device_id"

    const-string v10, "device_name"

    const-string v11, "created"

    const-string v12, "modified"

    const-string v13, "image_style"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->SAVED_PAGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPageMessageHandler:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPagedStorageDirPath:Ljava/lang/String;

    return-void
.end method

.method private downloadFile(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/io/File;
    .locals 4

    const-string v0, "mhtml"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPagedStorageDirPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "SavedPageRecordDataSyncClientImpl"

    const-string p1, " Unable to create directory"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncItem;->getFileName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPagedStorageDirPath:Ljava/lang/String;

    invoke-static {v1, p0, p3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method private getLastSyncPageToken()Ljava/lang/String;
    .locals 3

    const-string p0, "getLastSyncPageToken"

    const-string v0, "SavedPageRecordDataSyncClientImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "context is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v0, "current_sync"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "saved_page_last_sync_page_token"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isDuplicated(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 8

    const-string p0, "dir_path"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "device_id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "dir_path = ? AND device_id = ? AND sync1 != ?"

    filled-new-array {p0, p3, p2}, [Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_1

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

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
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isDuplicated - Unable to query "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "SavedPageRecordDataSyncClientImpl"

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return v1
.end method

.method private setLastSyncPageToken(Ljava/lang/String;)V
    .locals 2

    const-string p0, "setLastSyncPageToken"

    const-string v0, "SavedPageRecordDataSyncClientImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "context is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "current_sync"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "saved_page_last_sync_page_token"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->delete(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncItem;->getFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPagedStorageDirPath:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "File deleted : "

    const-string p2, "SavedPageRecordDataSyncClientImpl"

    invoke-static {p1, p0, p2}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "downSync"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "last_sync_time"

    const-string v2, "is_success"

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p3, v2, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "SavedPageRecordDataSyncClientImpl"

    if-eqz p2, :cond_0

    const-string p2, "last_sync_page_token"

    const-string v2, ""

    invoke-virtual {p3, p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "finish downSync pageToken : "

    invoke-static {v2, p2, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->setLastSyncPageToken(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->setLastSyncTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPageMessageHandler:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->SYNCED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    goto :goto_0

    :cond_0
    const-string p0, "finish downSync failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "sync"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    const/4 p0, 0x0

    invoke-virtual {p3, v2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->sendSyncCompletedMessage(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getAccountTypeColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "account_type"

    return-object p0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->SAVED_PAGE_COLUMNS:[Ljava/lang/String;

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public getDeleteColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "is_deleted"

    return-object p0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "is_dirty"

    return-object p0
.end method

.method public getFaviconColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "favicon"

    return-object p0
.end method

.method public getIdColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "_id"

    return-object p0
.end method

.method public getJSONObject(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p2, p5, p6, p7}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncItem;->toJSONObject(Landroid/database/Cursor;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public getKeyColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "sync1"

    return-object p0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSyncAdapterName()Ljava/lang/String;
    .locals 0

    const-string p0, "SBROWSER_SAVEDPAGES"

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SavedPageRecordDataSyncClientImpl"

    return-object p0
.end method

.method public getTimeStampColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "sync5"

    return-object p0
.end method

.method public insertOrUpdate(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;JLcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z
    .locals 9

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncItem;->parseJSONObject(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getDirtyColumnName()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-direct {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->isDuplicated(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "insert is failed."

    const-string v2, "true"

    const-string v3, "caller_is_syncadapter"

    const/4 v4, 0x1

    if-eqz p4, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "insertOrUpdate duplicated"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getDirtyColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    :catch_0
    move-exception p1

    goto/16 :goto_0

    :cond_0
    if-eqz p6, :cond_2

    invoke-direct {p0, p6, p3, p2}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->downloadFile(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "insertOrUpdate failed because the file does not exist"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->isExist(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " = ? "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p4

    invoke-virtual {p4, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_3

    move p5, v4

    :cond_3
    return p5

    :cond_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->skipToDownload(Landroid/content/ContentValues;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v4

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return p5

    :cond_6
    return v4

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return p5
.end method

.method public makeHeader(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/List;)V
    .locals 23
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

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "mhtml"

    if-eqz v10, :cond_7

    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v13, v0, [Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v14, v0, [Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v15, v0, [J

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Z

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getIdColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    move/from16 v0, v16

    :goto_1
    aput-boolean v0, v7, v17

    const-string v0, "path"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v17

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v17

    aget-object v0, v14, v17

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-boolean v0, v7, v17

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    aget-object v0, v14, v17

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->generateSyncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v17

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v15, v17

    new-instance v0, LI8/b;

    aget-object v4, v14, v17

    aget-object v5, v13, v17

    aget-boolean v18, v7, v17

    if-eqz v18, :cond_3

    const-string v1, "delete"

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_3
    const-string v1, "normal"

    goto :goto_2

    :goto_3
    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LI8/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v18, :cond_6

    new-instance v6, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPagedStorageDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v8, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getColumns()[Ljava/lang/String;

    move-result-object v4

    aget-object v18, v13, v17

    aget-object v19, v14, v17

    aget-wide v20, v15, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v10, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    move-object/from16 v22, v8

    move-wide/from16 v7, v20

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getJSONObject(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/scloud/util/HashUtil;->getFileSHA256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, LI8/a;

    invoke-direct {v2, v1, v10}, LI8/a;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;)V

    invoke-virtual {v9, v2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->checkMandatoryFields(LI8/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, LI8/c;

    invoke-direct {v1, v0, v2}, LI8/c;-><init>(LI8/b;LI8/a;)V

    iget-object v2, v9, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    aget-object v3, v13, v17

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mandatory fields are not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeHeader fileHash error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    move-object/from16 v19, v7

    move-object/from16 v22, v8

    goto :goto_5

    :cond_6
    move-object/from16 v19, v7

    move-object/from16 v22, v8

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v10, p2

    move-object/from16 v7, v19

    move-object/from16 v8, v22

    goto/16 :goto_0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "makeHeader error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/readinglist/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPagedStorageDirPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->getLastSyncPageToken()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "last_sync_page_token"

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "prepare result : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SavedPageRecordDataSyncClientImpl"

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setSavedPagedStorageDirPath(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageRecordDataSyncClientImpl;->mSavedPagedStorageDirPath:Ljava/lang/String;

    return-void
.end method
