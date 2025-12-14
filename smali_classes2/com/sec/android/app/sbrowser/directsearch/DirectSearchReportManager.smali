.class public Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getsInstance()Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->sInstance:Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->sInstance:Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->sInstance:Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;
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
.method public reportDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reportInstallationIfNeeded()V
    .locals 0

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 0

    return-void
.end method
