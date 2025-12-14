.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;


# instance fields
.field private mCtid:Ljava/lang/String;

.field private mIsBadAccessToken:Z

.field private mIsCanceled:Z

.field private mIsFailed:Z

.field private mIsInProcess:Z

.field private mIsPaused:Z

.field private mModel:Ljava/lang/String;

.field private final mPauseLock:Ljava/lang/Object;

.field private mSyncContext:Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

.field private final mTAG:Ljava/lang/String;

.field private mWaitFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsPaused:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsCanceled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsFailed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsInProcess:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsBadAccessToken:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mWaitFlag:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mPauseLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    const-string v0, "SyncManager_"

    invoke-static {v0, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mSyncContext:Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

    return-void
.end method

.method private deleteTempFiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "Start deleteTempFiles : "

    const-string v1, "SyncManager_"

    invoke-static {v0, p2, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Files : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete temp File : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "deleteTempFiles err "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private postOperation(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postOperation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", CTID : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mCtid:Ljava/lang/String;

    invoke-static {v0, p2, p4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_IN_PROCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-eq p3, p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mPauseLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 p3, 0x0

    :try_start_0
    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsInProcess:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsCanceled:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsPaused:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsFailed:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, ""

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mCtid:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->deleteTempFiles(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private preOperation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsInProcess:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsInProcess:Z

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/scloud/utils/RandomUtil;->generateCTID(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mCtid:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preOperation.. SYNC VERSION , CTID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mCtid:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->deleteTempFiles(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_IN_PROCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private throwException(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;)V
    .locals 7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsFailed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsFailed:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->cancelExecute(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v5

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->onFinished(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public checkAndLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "isPaused : wait!! [TID:"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mPauseLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsPaused:Z

    if-nez v3, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsCanceled:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]- paused:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsPaused:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mWaitFlag:Z

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mWaitFlag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPaused : notified!! [TID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]- paused:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsPaused:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    invoke-static {p0, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_THREAD:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    :goto_3
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsCanceled:Z

    if-nez p2, :cond_5

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsFailed:Z

    if-nez p0, :cond_4

    :cond_3
    monitor-exit p1

    return-void

    :cond_4
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_THREAD:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_USER_CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onFinished(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Object;)V
    .locals 11

    move-object v0, p0

    move-object v1, p4

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onFinished : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-object v6, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->SUCCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v1, v6, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    sget-object v8, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->DO_NOTHING:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v1, v8, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    sget-object v10, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_USER_CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v1, v10, :cond_3

    move v3, v4

    :cond_3
    if-eq v1, v6, :cond_4

    if-eq v1, v8, :cond_4

    if-eq v1, v10, :cond_4

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v10, v1

    :goto_3
    if-eqz v9, :cond_5

    move-object v10, v8

    :cond_5
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "onFinished : isFinish-"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSuc-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isDoNothing-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", , isUserCanceled-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, v10

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->postOperation(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public performSync(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JLandroid/content/SyncResult;)J
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p6

    const-string v0, "SyncManager_"

    const-string v1, "SCException in performSync : "

    const-string v2, "Exception in performSync : "

    const-string v3, "performSync cid : "

    const-string v4, "performSync mModel : "

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v5

    iget-object v9, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsBadAccessToken:Z

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x0

    :try_start_0
    invoke-direct {v7, v8, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->preOperation(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v10, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    const-string v11, "request auth data."

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->newInstance(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;->get()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v10

    iget-object v11, v9, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->userId:Ljava/lang/String;

    iget-object v9, v9, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->token:Ljava/lang/String;

    const-string v12, "https://api.samsungcloud.com"

    invoke-virtual {v10, v11, v9, v12}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->updateAuthInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    const-string v10, "getAuthInformation is finished.."

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mSyncContext:Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v4

    iget-object v10, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v12

    iget-object v13, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mCtid:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v11, p3

    move-wide/from16 v14, p4

    move-object/from16 v16, p6

    invoke-virtual/range {v9 .. v17}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->set(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;JLandroid/content/SyncResult;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v9

    iget-object v10, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getTables()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->setTables(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v4

    iget-object v9, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "P56GWW8N4r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mSyncContext:Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->performSync(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)J

    move-result-wide v20

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v3, "kmjqYba23r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mSyncContext:Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/RecordSyncTask;->performSync(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)J

    move-result-wide v20

    goto/16 :goto_4

    :cond_1
    const-string v3, "performSync not exist cid"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :goto_0
    :try_start_2
    iget-object v1, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v2, v2, v18

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v3, v4, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    invoke-direct {v7, v8, v1, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->throwException(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;)V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v9, v5

    move-object v10, v6

    goto :goto_3

    :goto_1
    iget-object v2, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_BAD_ACCESS_TOKEN:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v2, v2, v18

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mModel:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    invoke-direct {v7, v8, v1, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->throwException(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;)V

    goto :goto_4

    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsBadAccessToken:Z

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v9, v5

    move-object v5, v0

    move-object v10, v6

    move-object v6, v9

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->postOperation(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_3
    iget-object v1, v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PDMException in performSync : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v10, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v2, v2, v18

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->postOperation(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-wide v20
.end method

.method public requestCancel(Ljava/lang/String;)V
    .locals 7

    const-string v0, "requestCancel : already finished!! , TID : "

    const-string v1, "requestCancel: isPaused - notify!! "

    const-string v2, "NETWORK CANCEL, "

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mPauseLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsInProcess:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsCanceled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsPaused:Z

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager$1;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mWaitFlag:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mIsPaused:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", TID : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->mTAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
