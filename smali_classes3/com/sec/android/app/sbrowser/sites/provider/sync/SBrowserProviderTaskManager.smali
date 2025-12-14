.class public Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContentIdsForLocalSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentValues:Landroid/content/ContentValues;

.field private mCpUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

.field private mInstanceId:I

.field private mOperation:I

.field private mOtUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;-><init>(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/ContentValues;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;-><init>(ILandroid/content/ContentValues;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/ContentValues;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mContentIdsForLocalSync:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mContentValues:Landroid/content/ContentValues;

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mOperation:I

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mCpUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mOtUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mInstanceId:I

    const-string p0, "P56GWW8N4r"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "d8gjv0w9qx"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mCpUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mInstanceId:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mOperation:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mOtUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->requestLocalSync()V

    return-void
.end method

.method private isRequestLocalSyncSupported()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isRequestLocalSyncApiSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "real_time_sync_supported"

    const-string v2, "CloudSync"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private requestLocalSync()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->isRequestLocalSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->mContentIdsForLocalSync:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->requestLocalSync(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private runProviderThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderThread;->getProviderThread()Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderThread;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;-><init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->runProviderThread(Ljava/lang/Runnable;)V

    return-void
.end method
