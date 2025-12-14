.class public Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# instance fields
.field private final mBookMarkSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mSyncRetryCount:I

.field private final mTabSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mTabSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;

    new-instance p2, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mBookMarkSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "sync_success_time"

    const-string v6, " canceled : "

    const-string v7, "onPerformSync - finished. "

    const-string v8, "onPerformSync - retry sync : count: "

    const-string v9, "sync_success"

    const-string v10, "onPerformSync - started."

    const-string v11, "SyncAdapter-SBrowser-Proxy"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    const-wide/16 v12, 0x1

    const/4 v15, 0x0

    :try_start_0
    iput-boolean v15, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->isSyncNetworkAvailable(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v0, "Network is not available"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v12

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mTabSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isFailBadAccessToken()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mBookMarkSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isFailBadAccessToken()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    move-object v14, v5

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->newInstance(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;->clearWithRefresh()V

    iget v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    if-ge v2, v10, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->retrySync()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    invoke-static {v0, v1, v11}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_2
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iget-object v3, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v14, v5

    iget-wide v4, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v4, v12

    iput-wide v4, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    invoke-static {v11, v3, v4}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iput v15, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    iget-boolean v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v9, v2}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v5, v14

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateLongValuePrivate(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v15}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_5
    :try_start_1
    iget-boolean v14, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    if-nez v14, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isOpenTabSyncEnabled()Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mTabSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v12, v2, v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->performSync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)Landroid/content/SyncResult;

    :cond_6
    iget-boolean v12, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    if-nez v12, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBookmarkSyncEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mBookMarkSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v0, v2, v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->performSync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)Landroid/content/SyncResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mTabSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isFailBadAccessToken()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mBookMarkSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isFailBadAccessToken()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, v0

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->newInstance(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;->clearWithRefresh()V

    iget v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    if-ge v2, v10, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->retrySync()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iget-object v3, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    iput-wide v12, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    invoke-static {v11, v3, v4}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iput v15, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    iget-boolean v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    if-nez v3, :cond_f

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_6
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v9, v2}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateLongValuePrivate(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_a

    :cond_b
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v15}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_a

    :goto_7
    :try_start_2
    const-string v2, "error on sync.. "

    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mTabSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isFailBadAccessToken()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mBookMarkSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isFailBadAccessToken()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_8

    :cond_c
    move-object v2, v0

    goto :goto_9

    :cond_d
    :goto_8
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->newInstance(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;->clearWithRefresh()V

    iget v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    if-ge v2, v10, :cond_e

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->retrySync()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iget-object v3, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    iput-wide v12, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    invoke-static {v11, v3, v4}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iput v15, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    iget-boolean v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    if-nez v3, :cond_f

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_6

    :cond_f
    :goto_a
    return-void

    :goto_b
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mTabSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isFailBadAccessToken()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mBookMarkSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isFailBadAccessToken()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    move-object v3, v2

    goto :goto_d

    :cond_11
    :goto_c
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {v3, v15}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->newInstance(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;->clearWithRefresh()V

    iget v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    add-int/lit8 v12, v3, 0x1

    iput v12, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    if-ge v3, v10, :cond_12

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->retrySync()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    iput-wide v12, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->value()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    invoke-static {v11, v4, v6}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iput v15, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mSyncRetryCount:I

    iget-boolean v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    if-nez v4, :cond_14

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v9, v3}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v5, v2, v3}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateLongValuePrivate(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_e

    :cond_13
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v15}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_14
    :goto_e
    throw v0
.end method

.method public onSyncCanceled()V
    .locals 3

    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSyncCanceled - started. - canceled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    const-string v2, "SyncAdapter-SBrowser-Proxy"

    invoke-static {v2, v0, v1}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mCanceled:Z

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mTabSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->cancelSync()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;->mBookMarkSync:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->cancelSync()V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "onSyncCanceled - finished."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
