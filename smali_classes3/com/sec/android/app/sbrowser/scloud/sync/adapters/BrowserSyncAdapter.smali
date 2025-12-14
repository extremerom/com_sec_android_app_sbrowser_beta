.class public Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;
.super Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;
.source "SourceFile"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mDataColomn:Ljava/lang/String;

.field private mSyncStateUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;

    const-string v1, "4OuNBe4y9z"

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mContentUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mSyncStateUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mDataColomn:Ljava/lang/String;

    const-string p1, "com.sec.android.app.sbrowser.beta"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mAuthority:Ljava/lang/String;

    const-string p1, "content://com.sec.android.app.sbrowser.beta"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "bookmarks"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mContentUri:Landroid/net/Uri;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/SBrowserContract;->SBROWSER_SYNC_STATE_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mSyncStateUri:Landroid/net/Uri;

    const-string p1, "data"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mDataColomn:Ljava/lang/String;

    return-void
.end method

.method private fixParentIds(Landroid/content/SyncStats;)V
    .locals 12

    const-string v0, "fixParentIds(): "

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getLocalupdatesUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getIdColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "SYNC4"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "\' AND folder = 1"

    invoke-static {v1, v2, v4}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getProvider()Landroid/content/ContentProviderClient;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getIdColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "PARENT"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_1
    iget-wide v5, p1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getProvider()Landroid/content/ContentProviderClient;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SYNC3 = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v4, v8, v10}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    iput-wide v5, p1, Landroid/content/SyncStats;->numUpdates:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public doUpdateDelete(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;Landroid/content/SyncStats;)Z
    .locals 8

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->doUpdateDelete(Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;Landroid/content/SyncStats;)Z

    move-result p0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->mBuilder:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getTimeStamp()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->getID()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->getKEY()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->update(Ljava/lang/String;JJLjava/lang/String;)Z

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

    const-string p1, "BrowserSyncAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x0

    :goto_2
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

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getProvider()Landroid/content/ContentProviderClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mAuthority:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;-><init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCallerSyncAdapter()Ljava/lang/String;
    .locals 0

    const-string p0, "caller_is_syncadapter"

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getCtidKey()Ljava/lang/String;
    .locals 0

    const-string p0, "BR"

    return-object p0
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETED"

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

.method public getLocalUpdatesSelection()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getDirtyColumnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = 1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalUpdatesSelectionForColdStart()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NOT NULL AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getAccountType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " IS NOT NULL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalupdatesUri()Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->getCallerSyncAdapter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v3, "account_name"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object p0

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "show_deleted"

    invoke-virtual {p0, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getSyncAdapterName()Ljava/lang/String;
    .locals 0

    const-string p0, "BROWSER"

    return-object p0
.end method

.method public getSyncStateDataColumn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mDataColomn:Ljava/lang/String;

    return-object p0
.end method

.method public getSyncStateURI()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->mSyncStateUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BrowserSyncAdapter"

    return-object p0
.end method

.method public getTimeStampColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC5"

    return-object p0
.end method

.method public updateLocalDb(Landroid/content/SyncStats;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->updateLocalDb(Landroid/content/SyncStats;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/BrowserSyncAdapter;->fixParentIds(Landroid/content/SyncStats;)V

    return-void
.end method
