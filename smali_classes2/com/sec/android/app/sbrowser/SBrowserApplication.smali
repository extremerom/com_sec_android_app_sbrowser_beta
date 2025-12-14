.class public Lcom/sec/android/app/sbrowser/SBrowserApplication;
.super Lcom/sec/terrace/TerraceApplication;
.source "SourceFile"

# interfaces
.implements Lf3/b;
.implements Lcom/sec/android/app/sbrowser/common/AppContainerOwner;


# instance fields
.field private mAppContainer:Lcom/sec/android/app/sbrowser/AppContainerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/TerraceApplication;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/SBrowserApplication;->lambda$getWorkManagerConfiguration$0(Ljava/lang/Throwable;)V

    return-void
.end method

.method private getProcessNameInternal()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isBrowserProcess()Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserApplication;->getProcessNameInternal()Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while checking main process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SBrowserApplication"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$getWorkManagerConfiguration$0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkManager exception handler: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SBrowserApplication"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceApplication;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/background_task_scheduler/BackgroundTaskFactory;->setAsDefault()V

    return-void
.end method

.method public getAppContainer()Lcom/sec/android/app/sbrowser/common/AppContainer;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserApplication;->mAppContainer:Lcom/sec/android/app/sbrowser/AppContainerImpl;

    return-object p0
.end method

.method public getPrivateDataDirectorySuffix()Ljava/lang/String;
    .locals 0

    const-string p0, "sbrowser"

    return-object p0
.end method

.method public getWorkManagerConfiguration()Lf3/c;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, LI3/d;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LI3/d;-><init>(IB)V

    new-instance v0, Lcom/sec/android/app/sbrowser/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LI3/d;->b:Ljava/lang/Object;

    new-instance v0, Lf3/c;

    invoke-direct {v0, p0}, Lf3/c;-><init>(LI3/d;)V

    return-object v0
.end method

.method public final initCommandLine()V
    .locals 0

    invoke-super {p0}, Lcom/sec/terrace/TerraceApplication;->initCommandLine()V

    return-void
.end method

.method public initializeServices()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/ServiceManager;->registerAllServices()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserApplication;->isBrowserProcess()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SBrowserApplication"

    const-string v0, "SBrowserApplication onConfigurationChanged"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setDefaultNightModeIfNeeded(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    const-wide/32 v0, 0x4ce4bf02

    invoke-virtual {p0, v0, v1}, Lcom/sec/terrace/TerraceApplication;->setVersionCode(J)V

    invoke-super {p0}, Lcom/sec/terrace/TerraceApplication;->initCommandLine()V

    invoke-static {}, Lcom/sec/terrace/browser/metrics/TerraceUmaUtils;->recordMainEntryPointTime()V

    invoke-static {}, Lcom/sec/terrace/TerraceTraceEvent;->maybeEnableEarlyTracing()V

    const-string v0, "SBrowserApplication.onCreate"

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/sec/terrace/TerraceApplication;->onCreate()V

    new-instance v1, Lcom/sec/android/app/sbrowser/AppContainerImpl;

    new-instance v2, Lcom/sec/android/app/sbrowser/NavigationContainerImpl;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/NavigationContainerImpl;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/ViewFactoryContainerImpl;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/ViewFactoryContainerImpl;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/AppContainerImpl;-><init>(Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserApplication;->mAppContainer:Lcom/sec/android/app/sbrowser/AppContainerImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->setApplication(Landroid/app/Application;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/BixbyDelegate;->initSbixby(Landroid/app/Application;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->setApplicationContext(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserApplication;->isBrowserProcess()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;->getInstance()Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;->init()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->isTurnOn()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NIGHTMODE] SBrowserApplication onCreate uiMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SBrowserApplication"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setDefaultNightModeIfNeeded(Landroid/content/res/Configuration;)V

    :cond_3
    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method
