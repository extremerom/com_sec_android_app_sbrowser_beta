.class public Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReqItem"
.end annotation


# instance fields
.field public cb:Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;

.field public conn:Ljava/net/HttpURLConnection;

.field private final mCancelLock:Ljava/lang/Object;

.field private mCanceled:Z

.field private mResultCode:I

.field private final mResultCodeLock:Ljava/lang/Object;

.field public outException:Ljava/lang/Object;

.field public reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

.field public resStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mCanceled:Z

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mResultCode:I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->outException:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->cb:Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mCancelLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mResultCodeLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mCanceled:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public done(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mResultCodeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mResultCode:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mCanceled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDone()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mResultCodeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mResultCode:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->outException:Ljava/lang/Object;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resultCode()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mResultCodeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->mResultCode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public set(Ljava/net/HttpURLConnection;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->cb:Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;

    return-void
.end method
