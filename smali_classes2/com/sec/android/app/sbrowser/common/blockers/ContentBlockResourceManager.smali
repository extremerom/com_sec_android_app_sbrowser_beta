.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->getConfigUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->getDefaultFilterUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConfigUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isContentBlockerTestConfigUsed()Z

    move-result p0

    const-string v0, "https://contentsblock.samqaicongen.com/contentblock_list.json"

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getContentBlockerTestConfigTimestamp()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://contentsblock.samqaicongen.com/temp/"

    const-string v1, "-contentblock_list.json"

    invoke-static {v0, p0, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getConfigUrl: using test URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentBlock.ResourceManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getDefaultFilterUrl()Ljava/lang/String;
    .locals 0

    const-string p0, "https://contentsblock.samqaicongen.com/contentblock_default_list.ini"

    return-object p0
.end method


# virtual methods
.method public updateAppIcon(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateAppIcon(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V

    return-void
.end method

.method public updateAppIcon(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    const-string v1, "ContentBlock.ResourceManager"

    if-nez v0, :cond_1

    const-string p0, "Network is not available"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;->invokeOnResult(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "updateAppIcon"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

    invoke-direct {v4, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateApprovedList(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    const-string v1, "ContentBlock.ResourceManager"

    if-nez v0, :cond_0

    const-string p0, "Network is not available"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;->invokeOnResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "updateApprovedList"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$2;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateDefaultList(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    const-string v1, "ContentBlock.ResourceManager"

    if-nez v0, :cond_0

    const-string p0, "Network is not available"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "updateDefaultList"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
