.class public Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;
.super Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;
.source "SourceFile"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mDataColumn:Ljava/lang/String;

.field private mSyncStateUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;

    const-string v1, "P56GWW8N4r"

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mSyncStateUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mDataColumn:Ljava/lang/String;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/SBrowserContract;->SBROWSER_TAB_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mUri:Landroid/net/Uri;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/SBrowserContract;->SBROWSER_SYNC_STATE_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mSyncStateUri:Landroid/net/Uri;

    const-string p1, "data"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mDataColumn:Ljava/lang/String;

    const-string p1, "com.sec.android.app.sbrowser.beta"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doUpdateDelete(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;Landroid/content/SyncStats;)Z
    .locals 9

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->isDeleted()Z

    move-result v0

    const-string v1, "SBrowserTabSyncAdapter"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->getID()J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getProvider()Landroid/content/ContentProviderClient;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unable to delete record with key:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getTimeStamp()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->getID()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->update(Ljava/lang/String;JJLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p0, p3, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    iput-wide p0, p3, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to update record with key:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 0

    const-string p0, "ACCOUNT_NAME"

    return-object p0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 0

    const-string p0, "ACCOUNT_TYPE"

    return-object p0
.end method

.method public getBuilder()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getProvider()Landroid/content/ContentProviderClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mAuthority:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;-><init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCallerSyncAdapter()Ljava/lang/String;
    .locals 0

    const-string p0, "caller_is_syncadapter"

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getCtidKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ST"

    return-object p0
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "IS_DELETED"

    return-object p0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "DIRTY"

    return-object p0
.end method

.method public getIdColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "_ID"

    return-object p0
.end method

.method public getKeyColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC1"

    return-object p0
.end method

.method public getLocalUpdatesSelectionForColdStart()Ljava/lang/String;
    .locals 0

    const-string p0, "DIRTY = 1 OR DIRTY = 0"

    return-object p0
.end method

.method public getSyncAdapterName()Ljava/lang/String;
    .locals 0

    const-string p0, "SBROWSER_TAB"

    return-object p0
.end method

.method public getSyncStateDataColumn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mDataColumn:Ljava/lang/String;

    return-object p0
.end method

.method public getSyncStateURI()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserTabSyncAdapter;->mSyncStateUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SBrowserTabSyncAdapter"

    return-object p0
.end method

.method public getTimeStampColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC5"

    return-object p0
.end method
