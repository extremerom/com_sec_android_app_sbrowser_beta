.class public abstract Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;
    }
.end annotation


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAccount:Landroid/accounts/Account;

.field protected mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

.field private mClientDeviceId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsBadAccessToken:Z

.field protected mLastSyncTime:Ljava/lang/String;

.field protected mLocalChangedRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Landroid/content/ContentProviderClient;

.field protected mServerChangedRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

.field protected mSyncCanceled:Z

.field private mTimeManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mClientDeviceId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mIsBadAccessToken:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLocalChangedRecords:Ljava/util/Map;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mTimeManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;->create()Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mTimeManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mClientDeviceId:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mClientDeviceId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method private deleteFromServer(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, 0x19

    if-ge v0, v2, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "2101 Record Size is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCloudServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getRecordServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    move-result-object v3

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;->deleteItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    move-result-object v6

    sub-int v1, v2, v1

    int-to-long v9, v1

    const/4 v8, 0x1

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleResponse(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;Ljava/util/List;IJ)V

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_2
    return-void
.end method

.method private doApplyBatch(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getBuilder()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->getBatchSize()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-le v0, v3, :cond_3

    add-int v4, v3, v1

    if-ge v0, v4, :cond_2

    move v4, v0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "doApplyBatch: Exception is"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v5}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getItemsFromKeys(Ljava/util/List;Landroid/content/SyncStats;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/SyncStats;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2104 Record Size "

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_b

    add-int/lit8 v2, v1, 0x19

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez v3, :cond_a

    if-ge v0, v2, :cond_0

    move v2, v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCloudServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getRecordServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    move-result-object v3

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;->getItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getItemDetailsList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->getID()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    invoke-virtual {p0, v5, v4, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->doUpdateDelete(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;Landroid/content/SyncStats;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0, v5, v4, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->doInsert(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;Landroid/content/SyncStats;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UpdateLocalDb: No records for KEY List "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    :goto_3
    move v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "UpdateLocalDb: Sync exception recieved :- "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :cond_a
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_b
    return-void
.end method

.method private getLastSyncTime(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateURI()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateDataColumn()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateURI()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateDataColumn()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "\'"

    invoke-static {v2, v3, v6}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while reading TimeStamp"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, p0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    const-string p2, "SyncMetaData"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocalUpdates(Z)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v8, p1

    const-string v1, "2100 DB Queried Size "

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getLocalupdatesUri()Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLocalChangedRecords:Ljava/util/Map;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v9, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->queryAllLocal(Landroid/net/Uri;Z)Landroid/database/Cursor;

    move-result-object v14

    if-nez v14, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    if-ge v2, v15, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getBuilder()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    :cond_2
    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getIdColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    cmp-long v2, v16, v22

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v15, "TimeStamp is NULL....cannot be NULL"

    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v22

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set new Sync Key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->generateKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v24, v3

    move-object v3, v9

    move-object v4, v13

    move-wide/from16 v26, v5

    move-wide/from16 v5, v24

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->addToOperations(Ljava/util/List;Landroid/net/Uri;Landroid/content/ContentValues;J)V
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v15

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    move-wide/from16 v24, v3

    move-wide/from16 v26, v5

    :goto_1
    if-nez v7, :cond_8

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v2, :cond_7

    :cond_5
    if-nez v1, :cond_6

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->generateKey()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v9

    move-object v4, v13

    move-wide/from16 v5, v24

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->addToOperations(Ljava/util/List;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    move-object v1, v7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    move-wide/from16 v4, v24

    invoke-virtual {v2, v14, v4, v5, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->parse(Landroid/database/Cursor;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v6, v3

    add-long v18, v18, v6

    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v3, v1, v6, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLocalChangedRecords:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    const/4 v15, 0x1

    goto :goto_5

    :cond_8
    move-wide/from16 v4, v24

    const/4 v2, 0x1

    if-ne v7, v2, :cond_b

    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_9
    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLocalChangedRecords:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :cond_a
    const/4 v15, 0x1

    goto :goto_4

    :cond_b
    move v15, v2

    :goto_4
    if-ne v7, v15, :cond_c

    :try_start_5
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getIdColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->delete(Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_c
    :goto_5
    const-wide/16 v1, 0x1

    add-long v20, v20, v1

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    move-wide/from16 v4, v26

    move-wide/from16 v6, v20

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->checkUploadLimit(JJJ)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {v0, v12}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->doApplyBatch(Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-virtual {v0, v11, v10}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->updatetoServer(Ljava/util/List;Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move-wide/from16 v18, v16

    :cond_d
    move-wide/from16 v5, v26

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    invoke-direct {v0, v12}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->doApplyBatch(Ljava/util/List;)V

    invoke-virtual {v0, v11, v10}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->updatetoServer(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLocalChangedRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    return-void

    :catch_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_DATABASE_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v2, "Illegal State Exception from Provider"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0
.end method

.method private getLocalUpdatesSortOrder()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getDeletedColumnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " DESC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getServerUpdate(Ljava/util/Map;)Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2105 Last Sync Time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAllkeys(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCloudServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getRecordServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    const/16 v4, 0xfa

    invoke-interface {v2, v3, v0, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;->getUpdates(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getNextKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->addToDownloadKeyList(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;Ljava/util/Map;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getMaxTimeStamp()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timestamp change : "

    const-string v5, " -> "

    invoke-static {v4, v0, v5}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2105GetUpdates returned : "

    invoke-static {v3, v2, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleError(ILjava/util/Map;)Z

    move-result v0

    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    move v4, v1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x64

    if-ne v4, v5, :cond_6

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->removePreSyncedRecords(Ljava/util/Map;)Z

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->removePreSyncedRecords(Ljava/util/Map;)Z

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;->mMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;->mIsColdStart:Z

    return-object p0

    :cond_8
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method private getSyncUnitDeviceKeyHeader()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mClientDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mClientDeviceId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncUnitKeyHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mClientDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_NO_UNIQUEKEY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method private getSyncUnitKeyHeader()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getBaseKeyHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleError(ILjava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x4e22

    if-eq p1, v0, :cond_1

    const/16 v0, 0x714e

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p2, "handleError: "

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleError:TOO YOUNG TIMESTAMP!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAllkeys(Ljava/util/Map;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleError:TOO OLD TIMESTAMP! cold start. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAllkeys(Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0
.end method

.method private handleException(Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$2;->$SwitchMap$com$sec$android$app$sbrowser$scloud$sync$common$configuration$ResultCode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-wide/16 v1, 0x1

    packed-switch p2, :pswitch_data_0

    iget-object p0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Sync Cancelled Exception received"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object p0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "server authentication received"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mIsBadAccessToken:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleResponse(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;Ljava/util/List;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;IJ)V"
        }
    .end annotation

    const/16 p4, 0x4e23

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getResponseCode()I

    move-result p5

    if-nez p5, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getItemResponseList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;->getRcode()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLocalChangedRecords:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-nez p3, :cond_3

    invoke-virtual {p5}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {p0, p5, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleUpdateToServerRecord(Landroid/content/ContentValues;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;)V

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;->getRcode()I

    move-result v1

    if-eq v1, p4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;->getRcode()I

    goto/16 :goto_0

    :cond_5
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_6
    :goto_1
    return-void

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getResponseCode()I

    move-result p0

    if-eq p0, p4, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getResponseCode()I

    :cond_8
    return-void
.end method

.method private handleSync(Landroid/content/SyncResult;Landroid/os/Bundle;)V
    .locals 2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getRecordServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;->getServerTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;->updateSettingsUsingServer(J)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getServerUpdates()Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;

    move-result-object p2

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;->mMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    iget-boolean p2, p2, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;->mIsColdStart:Z

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getLocalUpdates(Z)V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_STORAGE_FULL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v0, v1, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->updateLocalDb(Landroid/content/SyncStats;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->setLastSyncTime(Ljava/lang/String;)V

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    throw p2

    :cond_3
    throw p2
.end method

.method private isChangeForSync()Z
    .locals 8

    const-string v0, "Sync Object count : "

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getDirtyColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "= ?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method private performSyncImpl(Landroid/os/Bundle;Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;)Landroid/content/SyncResult;
    .locals 7

    const-string v0, "PERFORM SYNC : END"

    const-string v1, "release error "

    const-string v2, "Exception ="

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mIsBadAccessToken:Z
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCtidKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/scloud/utils/RandomUtil;->generateCTID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v6, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->setCtid(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;->activate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v2

    iget-object v5, p3, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->userId:Ljava/lang/String;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->token:Ljava/lang/String;

    const-string v6, "https://api.samsungcloud.com"

    invoke-virtual {v2, v5, p3, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->updateAuthInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->setAuthManager(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    const-string v2, "PERFORM SYNC : START"

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleSync(Landroid/content/SyncResult;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :catch_2
    move-exception p1

    goto/16 :goto_7

    :catch_3
    move-exception p1

    goto/16 :goto_9

    :catch_4
    move-exception p1

    goto/16 :goto_b

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p3, "No Auth Info.. Can not call cloud-start"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    :catch_5
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-eqz p1, :cond_3

    :goto_2
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    :cond_3
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_4
    :try_start_4
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p1

    :catch_6
    move-exception p1

    new-instance p3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v5, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p3
    :try_end_4
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OUT_OF_MEMORY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleException(Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_4

    :catch_7
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-eqz p1, :cond_3

    goto :goto_2

    :goto_5
    :try_start_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_FILE_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleException(Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_8
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :goto_7
    :try_start_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_REMOTE_EXCEPTION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleException(Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :goto_9
    :try_start_b
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleException(Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_a

    :catch_a
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :goto_b
    :try_start_d
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleException(Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p1, :cond_e

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_c

    :catch_b
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_f
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :goto_d
    return-object p2

    :goto_e
    :try_start_f
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p2, :cond_10

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_f

    :catch_c
    move-exception p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_f
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    if-eqz p2, :cond_11

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    :cond_11
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-eqz p2, :cond_12

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    :cond_12
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1
.end method

.method private queryAllLocal(Landroid/net/Uri;Z)Landroid/database/Cursor;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getLocalUpdatesSelectionForColdStart()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v3, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getLocalUpdatesSelection()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getLocalUpdatesSortOrder()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private setLastSyncTime(Ljava/lang/String;)V
    .locals 12

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateURI()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateDataColumn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateURI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v2, v3, v4}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getLastSyncTime(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateDataColumn()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "__"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4

    if-eqz v8, :cond_4

    array-length v8, v4

    move v9, v1

    :goto_0
    if-ge v1, v8, :cond_2

    aget-object v10, v4, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v9, :cond_3

    invoke-static {v1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateDataColumn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncStateDataColumn()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ge p1, v5, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while setting timestamp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    const-string v2, "SyncMetaData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Save Last Sync Time : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private updateLocal(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getBuilder()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->getBatchSize()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-le v0, v3, :cond_2

    add-int v4, v3, v1

    if-ge v0, v4, :cond_1

    move v4, v0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v5, "2103 Record Size is "

    invoke-static {v0, v5, v3}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_LOCAL_PROVIDER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v0, "SYNC EXCEPTION : failed - updateLocal with applyBatch."

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private uploadToServer(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, 0x19

    if-ge v0, v2, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "2102 Record Size is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCloudServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getRecordServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    move-result-object v3

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;->setItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    move-result-object v6

    sub-int v1, v2, v1

    int-to-long v9, v1

    const/4 v8, 0x0

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleResponse(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;Ljava/util/List;IJ)V

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public addToDownloadKeyList(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;Ljava/util/Map;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getKeyDetailList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->isDeleted()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getTimeStamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;->getSize()J

    move-result-wide v8

    const-wide/16 v2, -0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;-><init>(JZJLjava/lang/String;J)V

    invoke-interface {p2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public addToOperations(Ljava/util/List;Landroid/net/Uri;Landroid/content/ContentValues;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "J)V"
        }
    .end annotation

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "_id ="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelSync()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USER CANCELLED!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCloudServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getRecordServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;->close()V

    return-void
.end method

.method public checkUploadLimit(JJJ)Z
    .locals 0

    const-wide/32 p3, 0x100000

    cmp-long p0, p1, p3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public doInsert(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;Landroid/content/SyncStats;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getBuilder()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getTimeStamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->insert(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unable to insert the contact with key "

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-wide v0, p3, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p3, Landroid/content/SyncStats;->numInserts:J

    :goto_0
    return p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public doUpdateDelete(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;Landroid/content/SyncStats;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->getID()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COULDN\'T DELETE LOCAL RECORD"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->isDeleted()Z

    move-result p1

    const-wide/16 v0, 0x1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getBuilder()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getTimeStamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->insert(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UpdateLocalDb: Error occured during Update (insertion)"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-wide v2, p3, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v2, v0

    iput-wide v2, p3, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_4
    iget-wide p0, p3, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr p0, v0

    iput-wide p0, p3, Landroid/content/SyncStats;->numDeletes:J

    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public generateKey()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncUnitDeviceKeyHeader()Ljava/lang/String;

    move-result-object p0

    const-string v2, "_"

    invoke-static {v1, p0, v2, v0}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAccount()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public abstract getAccountName()Ljava/lang/String;
.end method

.method public abstract getAccountType()Ljava/lang/String;
.end method

.method public getAllkeys(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    if-nez v1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCloudServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getRecordServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;->getKeys(Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->addToDownloadKeyList(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getNextKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getMaxTimeStamp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timestamp change : "

    const-string v5, " -> "

    invoke-static {v4, v2, v5}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllkeys: GetKeys returned"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getNextKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getNextKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAllkeys:Sync exception recieved :- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :cond_6
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SYNC_CANCELLED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public getBaseKeyHeader()Ljava/lang/String;
    .locals 0

    const-string p0, "DATASYNC"

    return-object p0
.end method

.method public abstract getBuilder()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;
.end method

.method public abstract getCallerSyncAdapter()Ljava/lang/String;
.end method

.method public final getCloudServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    return-object p0
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public abstract getCtidKey()Ljava/lang/String;
.end method

.method public abstract getDeletedColumnName()Ljava/lang/String;
.end method

.method public abstract getDirtyColumnName()Ljava/lang/String;
.end method

.method public abstract getIdColumnName()Ljava/lang/String;
.end method

.method public abstract getKeyColumnName()Ljava/lang/String;
.end method

.method public getLocalUpdatesSelection()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getDirtyColumnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = 1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getLocalUpdatesSelectionForColdStart()Ljava/lang/String;
.end method

.method public getLocalupdatesUri()Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getIdColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getKeyColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getDeletedColumnName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getProvider()Landroid/content/ContentProviderClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    return-object p0
.end method

.method public getServerUpdates()Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getServerUpdate(Ljava/util/Map;)Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$Result;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSyncAdapterName()Ljava/lang/String;
.end method

.method public abstract getSyncStateDataColumn()Ljava/lang/String;
.end method

.method public abstract getSyncStateURI()Landroid/net/Uri;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTimeStampColumnName()Ljava/lang/String;
.end method

.method public handleUpdateToServerRecord(Landroid/content/ContentValues;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getDirtyColumnName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getTimeStamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public isFailBadAccessToken()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mIsBadAccessToken:Z

    return p0
.end method

.method public performSync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)Landroid/content/SyncResult;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PERFORM SYNC : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.osp.app.signin"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    const/4 p3, 0x1

    if-nez p1, :cond_0

    iput-boolean p3, p4, Landroid/content/SyncResult;->databaseError:Z

    return-object p4

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mSyncCanceled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getSyncAdapterName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getLastSyncTime(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LastSyncTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "upload"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "trigger"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sync_push"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNC REQUEST FROM PUSH MESSAGE.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mLastSyncTime:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FIRST SYNC REQUEST.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNC REQUEST FROM PROVIDER.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->isChangeForSync()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "There are no changes for samsung account sync.."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MANUAL SYNC REQUEST.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInternetAccountEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->newInstance(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;->get()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object p1

    invoke-direct {p0, p2, p4, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->performSyncImpl(Landroid/os/Bundle;Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;)Landroid/content/SyncResult;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAccessToken isBadAccessToken : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mIsBadAccessToken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;

    invoke-direct {p3, p0, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;Ljava/util/concurrent/BlockingQueue;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mIsBadAccessToken:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccessToken:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-static {p3, p1, v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->getAccessToken(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;ZLjava/lang/String;)V

    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "performSyncImpl token failed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p4, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleException(Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    return-object p4

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p3

    const-string v0, "performSyncImpl"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p4, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->performSyncImpl(Landroid/os/Bundle;Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;)Landroid/content/SyncResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p4, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->handleException(Landroid/content/SyncResult;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    return-object p4
.end method

.method public removePreSyncedRecords(Ljava/util/Map;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    goto/16 :goto_a

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0x104

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getKeyColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/CommonUtil;->appendIds(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    :try_start_0
    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemovePreSyncedRecords: (ERROR)Cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RemovePreSyncedRecords: there is nothing to be removed."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getIdColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getKeyColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTimeStampColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;

    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->getTimeStamp()J

    move-result-wide v19

    cmp-long v8, v8, v19

    if-ltz v8, :cond_8

    if-eq v10, v7, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->isDeleted()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getDirtyColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getIdColumnName()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getKeyColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=\'"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v9, v6

    move/from16 v17, v11

    move-object v11, v7

    move v7, v12

    move-object/from16 v12, v19

    move/from16 v19, v13

    move-object/from16 v13, v20

    :try_start_2
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v8, :cond_5

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v9, v10

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mProvider:Landroid/content/ContentProviderClient;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v10, v9, v3, v11, v11}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UPDATE DIRTY, Key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", count : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    :goto_1
    move-object/from16 v16, v8

    goto :goto_5

    :catch_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v16, v8

    goto :goto_6

    :catch_2
    :goto_4
    const/4 v11, 0x0

    goto :goto_5

    :catch_3
    move/from16 v17, v11

    move v7, v12

    move/from16 v19, v13

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "COULDN\'T UPDATE DIRTY = 1"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_6
    move/from16 v17, v11

    move v7, v12

    move/from16 v19, v13

    const/4 v11, 0x0

    :cond_7
    :goto_6
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    move/from16 v17, v11

    move v7, v12

    move/from16 v19, v13

    const/4 v11, 0x0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->setID(J)V

    goto :goto_7

    :cond_9
    move/from16 v17, v11

    move v7, v12

    move/from16 v19, v13

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Sync Broken : There is a duplicated record on Local."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :goto_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_a
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->isDeleted()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    if-lez v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemovePreSyncedRecords: remove from serverChanges that already deleted in local : "

    invoke-static {v3, v1, v0}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v2, 0x1

    return v2

    :cond_d
    move v12, v7

    move/from16 v11, v17

    move/from16 v13, v19

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemovePreSyncedRecords: Exception in calling query "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public updateLocalDb(Landroid/content/SyncStats;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getBuilder()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mServerChangedRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->getSize()J

    move-result-wide v6

    add-long/2addr v6, v4

    const-wide/32 v4, 0x100000

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getItemsFromKeys(Ljava/util/List;Landroid/content/SyncStats;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    move-wide v4, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getItemsFromKeys(Ljava/util/List;Landroid/content/SyncStats;)V

    :cond_3
    return-void
.end method

.method public updatetoServer(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->deleteFromServer(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->uploadToServer(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->updateLocal(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
