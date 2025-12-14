.class public Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerList;
.implements Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;,
        Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

.field private static sInstanceCount:I

.field public static sIsWallpaperPreviewVisible:Z

.field private static final sTerraceActivityState:[Ljava/lang/String;


# instance fields
.field private mFocusedTaskId:I

.field private final mInstanceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewPathInstanceQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "STOPPED"

    const-string v6, "DESTROYED"

    const-string v0, ""

    const-string v1, "CREATED"

    const-string v2, "STARTED"

    const-string v3, "RESUMED"

    const-string v4, "PAUSED"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sTerraceActivityState:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sIsWallpaperPreviewVisible:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mPreviewPathInstanceQueue:Ljava/util/Queue;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mFocusedTaskId:I

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->notifyAfterStatusBarChanged()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->notifyBeforeStatusBarChanged()V

    return-void
.end method

.method public static getAdjacentWindowActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "si__MultiInstanceManager"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    if-eq v4, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isActivityVisible(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v2, :cond_1

    const-string p0, "getAdjacentWindowActivity(): return activity"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string p0, "getAdjacentWindowActivity(): return null"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->initialize()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    return-object v0
.end method

.method private getInstanceCount(Z)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->isDesktopMode()Z

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMaxInstanceCount(Z)I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p0

    const/4 v0, 0x5

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static declared-synchronized initialize()V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static isActivityVisible(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isMultiWindowSupported(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to MajoActivityTaskManager.supportsMultiWindow: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "si__MultiInstanceManager"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private notifyAfterStatusBarChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;->onAfterStatusBarChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyBeforeStatusBarChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;->onBeforeStatusBarChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setWallpaperPreviewVisibility(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sIsWallpaperPreviewVisible:Z

    return-void
.end method

.method private updateParentalControlPage()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getAllTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManagerList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerList;->get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isParentalControlNativePage()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadParentalControlUnblockedUrl()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPreviewPathInstanceQueue(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mPreviewPathInstanceQueue:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkGlobalTabRestoring()Z
    .locals 2

    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public clearPreviewPathInstanceQueue()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mPreviewPathInstanceQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public clearSecretModeTabs()V
    .locals 3

    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabs(Z)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->saveState()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    return-void
.end method

.method public get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityByIndex(I)Landroid/app/Activity;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityByInstanceId(I)Landroid/app/Activity;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->c(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityByTaskId(I)Landroid/app/Activity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getAllTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManagerList;
    .locals 0

    return-object p0
.end method

.method public getCurrentTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mFocusedTaskId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mFocusedTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedInstanceActivity()Landroid/app/Activity;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mFocusedTaskId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mFocusedTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedInstanceId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mFocusedTaskId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(I)I

    move-result p0

    return p0
.end method

.method public getInstanceByIndex(I)Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    return-object p0
.end method

.method public getInstanceCount()I
    .locals 0

    sget p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    return p0
.end method

.method public getInstanceId(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "si__MultiInstanceManager"

    const-string p1, "Instance id is not yet generated with this activity"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getInstanceId()I

    move-result p0

    return p0
.end method

.method public getInstanceId(Landroid/app/Activity;)I
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(I)I

    move-result p0

    return p0
.end method

.method public getInstanceIdByIndex(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getInstanceId()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getMainActivityId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiInstanceByTaskId(I)Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    return-object p0
.end method

.method public getOpenInOtherWindowActivity(Landroid/app/Activity;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;->getOpenInOtherWindowActivity()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewPathInstanceQueue()Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mPreviewPathInstanceQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public isActivityStateAvailable(Landroid/app/Activity;)Z
    .locals 4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "si__MultiInstanceManager"

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Activity not visible:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getFocusedActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Currently no focus, but last focused activity"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, " No focus on activity: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return p0
.end method

.method public isFocusedInstance(Landroid/app/Activity;)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mFocusedTaskId:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpenInOtherWindowAvailable(Landroid/content/Context;)Z
    .locals 3

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    const-string v2, "si__MultiInstanceManager"

    if-eqz v0, :cond_1

    const-string p0, "isOpenInOtherWindowAvailable : Not supported in Emergency Mode"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "isOpenInOtherWindowAvailable : MultiWindow not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "isOpenInOtherWindowAvailable : Not supported in Desktop Mode"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0xf4258

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "isOpenInOtherWindowAvailable : Not supported under One UI 2.1"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getOpenInOtherWindowActivity(Landroid/app/Activity;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "isOpenInOtherWindowAvailable - targetActivity is null."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public isRecreating(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->isRecreating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperPreviewVisible()Z
    .locals 0

    sget-boolean p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sIsWallpaperPreviewVisible:Z

    return p0
.end method

.method public moveAllTasksToBack()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public moveOtherTasksToBack(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyTabTearingFinished()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->onTabTearingFinished()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityStateChange : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sTerraceActivityState:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v2, "si__MultiInstanceManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onActivityStateChange, sInstanceCount = "

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    sget p2, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    add-int/2addr p2, v1

    sput p2, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "This instance is already added to instance map. taskId:"

    invoke-static {p2, p0, v2}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;-><init>(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;Landroid/app/Activity;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setFocusedInstance(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->d(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;Landroid/app/Activity;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->resetCachedSettings()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->resetCachedSettings()V

    goto :goto_1

    :cond_3
    const/4 v3, 0x6

    if-ne p2, v3, :cond_5

    sget p2, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    sub-int/2addr p2, v1

    sput p2, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p0, "There is no instance in instance map. taskId:"

    invoke-static {p1, p0, v2}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->isRecreating()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method

.method public onAgreeHelpIntro()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->setVisibleMainView()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onApplicationStateChange(I)V
    .locals 6

    const-string v0, "onApplicationStateChange : state - "

    const-string v1, "si__MultiInstanceManager"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->isRecreating()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    sget v4, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    sub-int/2addr v4, v5

    sput v4, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->destroy()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->c(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sput v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->sInstanceCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_3
    return-void
.end method

.method public onContentRestrictDataUpdated()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__MultiInstanceManager"

    const-string v1, "onContentRestrictDataUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->updateParentalControlPage()V

    return-void
.end method

.method public onParentalControlDataUpdated()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__MultiInstanceManager"

    const-string v1, "onParentalControlDataUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->updateParentalControlPage()V

    return-void
.end method

.method public onSIXIconUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->onSIXIconUpdated()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getMaxInstanceCount(Z)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceCount(Z)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openInNewWindow isDesktopMode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "si__MultiInstanceManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "openInNewWindow max:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "openInNewWindow count:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-lt p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f120031

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->getXOffset()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Toast;->getYOffset()I

    move-result p2

    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.NEW_WINDOW"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.extra.CURRENT_INSTANCE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getFlagForNewTask()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "openInNewWindow - Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT is added"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "openInNewWindow - unable to start activity "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public openInOtherWindow(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getOpenInOtherWindowActivity(Landroid/app/Activity;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "si__MultiInstanceManager"

    if-nez p0, :cond_0

    const-string p0, "openInOtherWindow(): targetActivity is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openInOtherWindow(): targetActivity: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "com.samsung.intent.extra.OTHER_WINDOW"

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v3, "com.samsung.intent.extra.TARGET_ACTIVITY"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "create_new_tab"

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getFlagForNewTask()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getAdjacentWindowActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v3, :cond_1

    const-string p0, "openInOtherWindow(): call onNewIntent on adjacent window activity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move p0, v2

    :goto_0
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p2

    if-nez p2, :cond_5

    if-nez p0, :cond_5

    :cond_4
    const-string p0, "openInOtherWindow(): Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT is added"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x1000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "openInOtherWindow(): unable to start activity "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public preventSavingTabList(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[preventSavingTabList] prevent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MultiInstanceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->preventSavingTabList(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusedInstance(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mFocusedTaskId:I

    return-void
.end method

.method public setRecreating(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->setRecreating(Z)V

    :cond_0
    return-void
.end method

.method public setTabManager(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->setTabManager(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public updateMultiInstanceToolbarButtons()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->mInstanceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->updateToolbarButtons()V

    goto :goto_0

    :cond_1
    return-void
.end method
