.class public Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;
.super Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;
.source "SourceFile"


# instance fields
.field private mMoreToUpdate:Z

.field private mStorageToUpdate:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;->mStorageToUpdate:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    return-void
.end method

.method public static synthetic e(Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;->lambda$onStartTaskWithNative$0(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    return-void
.end method

.method private isWebApkActivityRunning(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/terrace/browser/webapps/TerraceWebApkActivityDelegate;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/sec/terrace/browser/webapps/TerraceWebApkActivityDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkActivityDelegate;->getNativeClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onStartTaskWithNative$0(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;->mMoreToUpdate:Z

    invoke-interface {p1, p0}, Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method


# virtual methods
.method public onStartTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)I
    .locals 2

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->warmUpSharedPrefs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->findWebApksWithPendingUpdate()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getWebappDataStorage(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getWebApkPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;->isWebApkActivityRunning(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p3, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;->mStorageToUpdate:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;->mMoreToUpdate:Z

    return p2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    :cond_4
    return v0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0
.end method

.method public onStartTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;->mStorageToUpdate:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    new-instance p2, Lcom/sec/terrace/browser/webapps/h;

    invoke-direct {p2, p0, p3}, Lcom/sec/terrace/browser/webapps/h;-><init>(Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->updateWhileNotRunning(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStopTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
