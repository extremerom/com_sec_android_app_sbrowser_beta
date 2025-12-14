.class public Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mBackgroundInfoRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

.field private final mRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->create()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mBackgroundInfoRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->create()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mBackgroundInfoRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    new-instance v2, Lt0/m;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lt0/m;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    return-object p0
.end method

.method public onDidFinishLoad(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "nativeHome"

    goto :goto_0

    :cond_1
    const-string p1, "unifiedHome"

    :goto_0
    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p0, p1, p4, p2}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->requestBackgroundInfo(Ljava/lang/String;ZZ)V

    :cond_2
    return-void
.end method

.method public requestBackgroundInfo(Ljava/lang/String;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mBackgroundInfoRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->requestBackgroundInfo(Ljava/lang/String;ZZ)V

    return-void
.end method
