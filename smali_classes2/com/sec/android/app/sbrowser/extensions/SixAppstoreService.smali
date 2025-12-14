.class public Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mAppDownloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    const-string p0, "SixAppstoreService"

    invoke-static {p0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->lambda$processInstallAfterDownloadApk$0(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubData;J)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->processDownloadUrlFailed(J)V

    return-void
.end method

.method public static bridge synthetic c(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p3

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->processInstallAfterDownloadApk(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private checkGalaxyAppStatus(Ljava/lang/String;Ljava/lang/String;ZIJ)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0, p3, p4}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getDownloadUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;ZI)V

    return-void
.end method

.method public static bridge synthetic d(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p3

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->processNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic e(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p3

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->processUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic f(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p3

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->processUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private getInstallPackage(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SixAppstoreService"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    return-object v0
.end method

.method private init()V
    .locals 2

    const-string v0, "SixAppstoreService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->createTerraceSixAppstoreService(Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processInstallAfterDownloadApk$0(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubData;J)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getDownloadURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getSignature()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->requestInstallAfterDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Success"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->installAppResult(JLjava/lang/String;)V

    return-void
.end method

.method private processDownloadUrlFailed(J)V
    .locals 1

    const-string v0, "Fail-Install"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->installAppResult(JLjava/lang/String;)V

    return-void
.end method

.method private processInstallAfterDownloadApk(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/a;

    move-object v1, v0

    move-wide v2, p4

    move-object v4, p1

    move-object v5, p0

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/extensions/a;-><init>(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mActivity:Landroid/app/Activity;

    const-string p2, "appstore"

    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->checkNotiPermissionAndRun(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-Install"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->installAppResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    const-string p0, "processNoMatchingApplication "

    const-string p1, "SixAppstoreService"

    invoke-static {p0, p3, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    const-string p0, "processUpdateAvailable "

    const-string p1, "SixAppstoreService"

    invoke-static {p0, p3, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    const-string p0, "processUpdateNotNecessary "

    const-string p1, "SixAppstoreService"

    invoke-static {p0, p3, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->getInstallPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "INSTALLED"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->checkStatusResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "NO_INSTALL"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->checkStatusResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public checkStatusResult(JLjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->init()V

    return-void
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->checkGalaxyAppStatus(Ljava/lang/String;Ljava/lang/String;ZIJ)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p3, "ext_id"

    invoke-virtual {p0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ext_name"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "601"

    const-string p2, "6157"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public installAppResult(JLjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->onInstallAppFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mActivity:Landroid/app/Activity;

    return-void
.end method
