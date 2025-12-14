.class public Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSyncSettingUIManager:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;


# direct methods
.method public static checkSyncProfile()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->checkSyncProfile()I

    move-result v0

    return v0
.end method

.method public static destroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->destroy()V

    return-void
.end method

.method public static getContentSync(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->getContentSync(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static declared-synchronized getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->sSyncSettingUIManager:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->checkRPCSettingMenuType()Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->V1:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->sSyncSettingUIManager:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->checkRPCSettingMenuType()Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->V2:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->sSyncSettingUIManager:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/common/sync/NoneRPCSettingUIManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/sync/NoneRPCSettingUIManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->sSyncSettingUIManager:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    :cond_2
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->sSyncSettingUIManager:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;
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

.method public static initRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->initRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    return-void
.end method

.method public static loadPerformancePolicy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->loadPerformancePolicy()V

    return-void
.end method

.method public static requestLocalSync(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->requestLocalSync(Landroid/net/Uri;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static requestLocalSync(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->requestLocalSync(Ljava/lang/String;)V

    return-void
.end method

.method public static requestLocalSync(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->requestLocalSync(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static requestSync(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->requestSync(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static declared-synchronized resetManager()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->sSyncSettingUIManager:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static showSetting(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->showSetting(Landroid/app/Activity;)V

    return-void
.end method

.method public static switchOnOff(Z)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->getSyncSettingUIManager()Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;->switchOnOff(Z)Z

    move-result p0

    return p0
.end method
