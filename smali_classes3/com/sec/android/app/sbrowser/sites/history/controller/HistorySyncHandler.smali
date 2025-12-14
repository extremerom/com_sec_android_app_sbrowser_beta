.class public Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

.field private mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

.field private mTerraceHistoryManagerListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->initHistoryListener()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->lambda$migrateIfNeeded$4()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->lambda$deleteAllFromLocal$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->lambda$deleteFromLocal$2(Ljava/lang/String;J)V

    return-void
.end method

.method private createHistoryModel()V
    .locals 2

    const-string v0, "[HistorySync]HistorySyncHandler"

    const-string v1, "createHistoryModel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mTerraceHistoryManagerListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    new-instance v1, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-direct {v1, v0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->initListenerHelper()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->migrateIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->deleteOldHistoryItemsIfNeeded()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->lambda$insertFromLocal$0(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method private deleteNativeHistory(Ljava/lang/String;J)V
    .locals 4

    const-string v0, "deleteNativeHistory deleted : "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteNativeHistory url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " visitTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HistorySync]HistorySyncHandler"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->HISTORY_URI:Landroid/net/Uri;

    const-string v3, "url = ? and date = ?"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v3, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "deleteNativeHistory Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private deleteOldHistoryItemsIfNeeded()V
    .locals 6

    const-string v0, "deleteOldHistoryItemsIfNeeded"

    const-string v1, "[HistorySync]HistorySyncHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x1cf7c5800L

    sub-long/2addr v2, v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->deleteOldHistoryItemsIfNeeded(J)I

    move-result p0

    const-string v0, "deleteOldHistoryItemsIfNeeded deleted : "

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->lambda$migrateHistoryItems$5(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->lambda$updateFromLocal$1(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->sInstance:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;-><init>()V

    sput-object v2, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->sInstance:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->sInstance:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->createHistoryModel()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->migrateHistoryItems(Ljava/util/List;)V

    return-void
.end method

.method private initHistoryListener()V
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    const-string v1, "[HistorySync]HistorySyncHandler"

    if-nez v0, :cond_1

    const-string v0, "initHistoryListener Terrace uninitialized"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$2;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$2;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/terrace/TerraceHelper;->initializeAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "initializeAsync acquire"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "initializeAsync time out"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "initHistoryListener Terrace initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->createHistoryModel()V

    :goto_1
    return-void
.end method

.method private insertNativeHistory(Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "VISIT_TIME"

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "url"

    const-string v3, "URL"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date"

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "created"

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    const-string v2, "TITLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "visits"

    const-string v2, "VISIT_COUNT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "insertNativeHistory Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "[HistorySync]HistorySyncHandler"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteAllFromLocal$3()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->clearAllHistory(Landroid/content/Context;)I

    move-result p0

    const-string v0, "onHistoryCleared deleteAllFromLocal() : "

    const-string v1, "[HistorySync]HistorySyncHandler"

    invoke-static {p0, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$deleteFromLocal$2(Ljava/lang/String;J)V
    .locals 3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->isSynced(Ljava/lang/String;J)Z

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "URL = ? and VISIT_TIME = ?"

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "DELETED"

    invoke-virtual {p1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "DIRTY"

    invoke-virtual {p1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    const-string v2, "SYNC5"

    invoke-static {p3, p1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->s(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {p3, p1, v1, v0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->updateHistory(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->deleteHistory(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->HISTORY_URI:Landroid/net/Uri;

    invoke-static {p0, p3, p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->notifyChange(Landroid/content/Context;Landroid/net/Uri;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onHistoryItemUpdated deleteFromLocal() : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[HistorySync]HistorySyncHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$insertFromLocal$0(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TITLE"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "VISIT_COUNT"

    if-lez p3, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "VISIT_TIME"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "DIRTY"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "DELETED"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, ""

    if-eqz p1, :cond_1

    move-object p1, p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p3, "ACCOUNT_NAME"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object p2

    :goto_2
    const-string p1, "ACCOUNT_TYPE"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_ID"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEVICE_NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "DEVICE_TYPE"

    if-eqz p1, :cond_3

    const-string p1, "03"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p1, "01"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SYNC5"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->insertHistory(Landroid/content/ContentValues;)Z

    move-result p0

    const-string p1, "onHistoryItemReceived insertFromLocal() : "

    const-string p2, "[HistorySync]HistorySyncHandler"

    invoke-static {p1, p2, p0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$migrateHistoryItems$5(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->insertHistoryItems(Landroid/content/Context;Ljava/util/List;)V

    const-string p0, "[HistorySync]HistorySyncHandler"

    const-string p1, "insertHistoryItems finished"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$migrateIfNeeded$4()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v3, v1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getAllHistoryByDuration(DDI)V

    return-void
.end method

.method private synthetic lambda$updateFromLocal$1(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "VISIT_COUNT"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "VISIT_TIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "DIRTY"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "DELETED"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, ""

    if-eqz p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v2, "ACCOUNT_NAME"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string p2, "ACCOUNT_TYPE"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "DEVICE_ID"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "DEVICE_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p2

    const-string v1, "DEVICE_TYPE"

    if-eqz p2, :cond_2

    const-string p2, "03"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p2, "01"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "SYNC5"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    const-string p2, "URL = ? and VISIT_TIME = ?"

    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->updateHistory(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string p1, "onHistoryItemUpdated updateFromLocal() : "

    const-string p2, "[HistorySync]HistorySyncHandler"

    invoke-static {p0, p1, p2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private migrateHistoryItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "[HistorySync]HistorySyncHandler"

    const-string v1, "migrateHistoryItems"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/history/controller/c;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->getMetaInfoThread()Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private migrateIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mContext:Landroid/content/Context;

    const-string v1, "pref_migrate_history_db_done"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getDefaultPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/controller/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/controller/f;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteAllFromLocal()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/controller/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/controller/f;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->getMetaInfoThread()Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteFromLocal(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/controller/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/controller/g;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->getMetaInfoThread()Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteFromSync(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYNC1 = ?"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->getHistoryItem(Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->deleteHistory(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->deleteNativeHistory(Ljava/lang/String;J)V

    :cond_0
    return p1
.end method

.method public getCursorForHeader(Z[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->getCursorForHeader(Z[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getCursorForQueryLocalKeys()Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->getCursorForQueryLocalKeys()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public insertFromLocal(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    new-instance v7, Lcom/sec/android/app/sbrowser/sites/history/controller/d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sites/history/controller/d;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->getMetaInfoThread()Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertFromSync(Landroid/content/ContentValues;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->insertHistory(Landroid/content/ContentValues;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->insertNativeHistory(Landroid/content/ContentValues;)V

    return v0
.end method

.method public updateFromLocal(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 8

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/history/controller/e;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p6

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/sites/history/controller/e;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->getMetaInfoThread()Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFromSync(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    const-string v1, "SYNC1 = ?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->updateHistory(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->insertNativeHistory(Landroid/content/ContentValues;)V

    if-lez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateHistoryOnSignIn()V
    .locals 2

    const-string v0, "[HistorySync]HistorySyncHandler"

    const-string v1, "updateHistoryOnSignIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->updateHistoryOnSignIn()V

    return-void
.end method

.method public updateHistoryOnSignOut()V
    .locals 2

    const-string v0, "[HistorySync]HistorySyncHandler"

    const-string v1, "updateHistoryOnSignOut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->updateHistoryOnSignOut()V

    return-void
.end method

.method public uploadCompleteFromSync(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    const-string v0, "_ID = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->updateHistory(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
