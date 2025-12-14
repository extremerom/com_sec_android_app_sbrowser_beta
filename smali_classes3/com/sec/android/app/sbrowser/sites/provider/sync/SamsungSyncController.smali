.class public Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;
.super Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;
.source "SourceFile"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mSyncing:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mAccount:Landroid/accounts/Account;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "current_sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public initSyncValues()V
    .locals 2

    const-string v0, "SamsungSyncController :SBrowserSync"

    const-string v1, "initSyncValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->updateSyncStatus()V

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->startSyncTimer()V

    return-void
.end method

.method public onSyncStatusChanged(I)V
    .locals 6

    const-string v0, "SamsungSyncController :SBrowserSync"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x12

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mAccount:Landroid/accounts/Account;

    const-string v4, "com.sec.android.app.sbrowser.beta"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSyncStatusChanged isSyncActive failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p1

    :goto_0
    const-string v4, "sync_status"

    if-eqz v3, :cond_1

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    if-nez v5, :cond_1

    const-string p1, "onSyncStatusChanged start internet sync"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    if-eqz v2, :cond_2

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v5, "onSyncStatusChanged finish internet sync : timeStamp : "

    invoke-static {v2, v3, v5, v0}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "current_sync"

    invoke-interface {v5, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "internet_timestamp"

    invoke-interface {v5, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "com.osp.app.signin account CURRENT_SYNC applying with content resolver not syncing and syncing value: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->startSyncTimer()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateSyncStatus()V
    .locals 4

    const-string v0, "SamsungSyncController :SBrowserSync"

    const-string v1, "SyncActive: "

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mAccount:Landroid/accounts/Account;

    const-string v3, "com.sec.android.app.sbrowser.beta"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sync_status"

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;->mSyncing:Z

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
