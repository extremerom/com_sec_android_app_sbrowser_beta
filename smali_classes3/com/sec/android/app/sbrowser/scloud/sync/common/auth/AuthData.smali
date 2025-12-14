.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthData"

.field private static volatile sInstance:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mBaseUrl:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mAccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->sInstance:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->sInstance:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->sInstance:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;
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


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "cid="

    invoke-static {p0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mBaseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mUid:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized updateAuthInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->TAG:Ljava/lang/String;

    const-string v1, "updateAuthInformation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mBaseUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mAccessToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->mUid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
