.class public Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static volatile sSyncTask:Ljava/util/TimerTask;

.field private static volatile sSyncTimer:Ljava/util/Timer;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private checkForHistoryUpdate()Z
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;->isUpdatedItemExist()Z

    move-result p0

    return p0
.end method

.method private checkForTabsUpdate()Z
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants;->TAB_URI:Landroid/net/Uri;

    const-string p0, "TAB_URL"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIRTY = 1 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_0

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
    move-exception v0

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "check updates Exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SBrowserSyncTimer"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancelSyncTimer()V
    .locals 1

    const-string p0, "SBrowserSyncTimer"

    const-string v0, "cancelSyncTimer"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTask:Ljava/util/TimerTask;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTask:Ljava/util/TimerTask;

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTask:Ljava/util/TimerTask;

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTimer:Ljava/util/Timer;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTimer:Ljava/util/Timer;

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method public startSyncTimer()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTimer:Ljava/util/Timer;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTimer:Ljava/util/Timer;

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTask:Ljava/util/TimerTask;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer$1;-><init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTask:Ljava/util/TimerTask;

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTimer:Ljava/util/Timer;

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->sSyncTask:Ljava/util/TimerTask;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string p0, "SBrowserSyncTimer"

    const-string v1, "SyncTimer scheduled"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public triggerSyncManually()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->checkForTabsUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->checkForHistoryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->startSyncTimer()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "SBrowserSyncTimer"

    const-string v1, "Calling notifyChange from triggerSyncManually()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants;->TAB_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->notifyChange(Landroid/content/Context;Landroid/net/Uri;Z)V

    :cond_2
    :goto_1
    return-void
.end method
