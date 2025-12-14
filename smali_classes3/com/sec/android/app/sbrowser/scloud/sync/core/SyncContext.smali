.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mCtid:Ljava/lang/String;

.field private mDataServiceControl:Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;

.field private mGenericSyncItem:Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

.field private mLastSyncTime:J

.field private mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

.field private mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

.field private mNextLastSyncTime:J

.field private mOption:Ljava/lang/String;

.field private mResult:J

.field private mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

.field private mSyncResult:Landroid/content/SyncResult;

.field private mTables:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mCanceled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mResult:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mDataServiceControl:Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;-><init>()V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mContext:Landroid/content/Context;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    return-object v0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mAccountName:Ljava/lang/String;

    return-object p0
.end method

.method public getAuth()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCtid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mCtid:Ljava/lang/String;

    return-object p0
.end method

.method public getDataServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mDataServiceControl:Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;

    return-object p0
.end method

.method public getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mGenericSyncItem:Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    return-object p0
.end method

.method public getLastSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mLastSyncTime:J

    return-wide v0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    return-object p0
.end method

.method public getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    return-object p0
.end method

.method public getNextLastSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mNextLastSyncTime:J

    return-wide v0
.end method

.method public getOption()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mOption:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mResult:J

    return-wide v0
.end method

.method public getResultCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    return-object p0
.end method

.method public getSyncResult()Landroid/content/SyncResult;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mSyncResult:Landroid/content/SyncResult;

    return-object p0
.end method

.method public getTables()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mTables:Ljava/lang/String;

    return-object p0
.end method

.method public initRecordSync()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getDataServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mDataServiceControl:Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getAuth()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;->init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mGenericSyncItem:Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    return-void
.end method

.method public isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mCanceled:Z

    return p0
.end method

.method public set(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;JLandroid/content/SyncResult;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mAccountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mCtid:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mLastSyncTime:J

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mSyncResult:Landroid/content/SyncResult;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mOption:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mCanceled:Z

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->SUCCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    return-object p0
.end method

.method public setLastSyncTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mLastSyncTime:J

    return-void
.end method

.method public setNextLastSyncTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mNextLastSyncTime:J

    return-void
.end method

.method public setResult(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mResult:J

    return-void
.end method

.method public setResultCode(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    return-void
.end method

.method public setTables(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mTables:Ljava/lang/String;

    return-object p0
.end method

.method public updateSyncResultAuthExceptions()V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mSyncResult:Landroid/content/SyncResult;

    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    return-void
.end method

.method public updateSyncResultIoExceptions()V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->mSyncResult:Landroid/content/SyncResult;

    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    return-void
.end method
