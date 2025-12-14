.class public Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;
.super Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;
.source "SourceFile"


# static fields
.field private static final HISTORY_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "[HistorySync]HistorySyncClientImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "URL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "TITLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "VISIT_COUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "VISIT_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "ACCOUNT_NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "ACCOUNT_TYPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "DEVICE_NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "DEVICE_ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "DEVICE_TYPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->HISTORY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;-><init>()V

    return-void
.end method

.method private getLastSyncPageToken()Ljava/lang/String;
    .locals 3

    const-string p0, "getLastSyncPageToken"

    const-string v0, "[HistorySync]HistorySyncClientImpl"

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

    const-string v0, "last_sync_page_token"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setLastSyncPageToken(Ljava/lang/String;)V
    .locals 2

    const-string p0, "setLastSyncPageToken"

    const-string v0, "[HistorySync]HistorySyncClientImpl"

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

    const-string v0, "last_sync_page_token"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public checkMandatoryFields(LI8/a;)Z
    .locals 2

    iget-object p0, p1, LI8/a;->a:Lorg/json/JSONObject;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "TITLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "URL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VISIT_COUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VISIT_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->deleteFromSync(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "deleted"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "downSync"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "last_sync_time"

    const-string v2, "is_success"

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p3, v2, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "last_sync_page_token"

    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "finish downSync pageToken : "

    const-string v2, "[HistorySync]HistorySyncClientImpl"

    invoke-static {v0, p2, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->setLastSyncPageToken(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getSyncAdapterName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->setLastSyncTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "sync"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p3, v2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->sendSyncCompletedMessage(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getAccountTypeColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "ACCOUNT_TYPE"

    return-object p0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->HISTORY_COLUMNS:[Ljava/lang/String;

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->HISTORY_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public getCursorForHeader(Landroid/content/Context;Z[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getCursorForHeader(Z[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getCursorForQueryLocalKeys(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getCursorForQueryLocalKeys()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETED"

    return-object p0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "DIRTY"

    return-object p0
.end method

.method public getFaviconColumnName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIdColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "_ID"

    return-object p0
.end method

.method public getJSONObject(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/sync/JSONParser;->toJSON(Landroid/database/Cursor;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, p5, p6, p7}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public getKeyColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC1"

    return-object p0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSyncAdapterName()Ljava/lang/String;
    .locals 0

    const-string p0, "SBROWSER_HISTORY"

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "[HistorySync]HistorySyncClientImpl"

    return-object p0
.end method

.method public getTimeStampColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC5"

    return-object p0
.end method

.method public insertOrUpdate(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;JLcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->fromJSON(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getDirtyColumnName()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "insertOrUpdate : "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->isExist(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->updateFromSync(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->insertFromSync(Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return p4
.end method

.method public prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getLastSyncPageToken()Ljava/lang/String;

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

    const-string p2, "[HistorySync]HistorySyncClientImpl"

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public uploadComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getDirtyColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getDeleteColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->uploadCompleteFromSync(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sync/HistorySyncClientImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method
