.class public Lcom/sec/terrace/browser/TinSwipeRefreshHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/OverscrollRefreshHandler;
.implements Lorg/chromium/base/UserData;


# static fields
.field private static final USER_DATA_KEY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/sec/terrace/browser/TinSwipeRefreshHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContainerView:Landroid/view/ViewGroup;

.field private mDetachRefreshLayoutRunnable:Ljava/lang/Runnable;

.field private mStopRefreshingRunnable:Ljava/lang/Runnable;

.field private mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

.field private final mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    sput-object v0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->USER_DATA_KEY:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lcom/sec/terrace/Terrace;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialized instance:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for Terrace:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TinSwipeRefreshHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->lambda$initSwipeRefreshLayout$2()V

    return-void
.end method

.method private attachSwipeRefreshLayoutIfNecessary()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->cancelDetachLayoutRunnable()V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isSplitMode()Z

    move-result v0

    const-string v1, "TinSwipeRefreshHandler"

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->getFocusedSplitView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->getFocusedSplitView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p0, "Swipe refresh layout has been attached to Split View."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p0, "Swipe refresh layout has been attached to DecorView."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->lambda$initSwipeRefreshLayout$0()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->lambda$getStopRefreshingRunnable$3()V

    return-void
.end method

.method private cancelDetachLayoutRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mDetachRefreshLayoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mDetachRefreshLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mDetachRefreshLayoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private cancelStopRefreshingRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->lambda$initSwipeRefreshLayout$1()V

    return-void
.end method

.method private detachSwipeRefreshLayoutIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->cancelDetachLayoutRunnable()V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const-string p0, "TinSwipeRefreshHandler"

    const-string v0, "Swipe refresh layout has been detached from DecorView."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static from(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/TinSwipeRefreshHandler;
    .locals 3

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->get(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUserDataHost()Lorg/chromium/base/UserDataHost;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->USER_DATA_KEY:Ljava/lang/Class;

    new-instance v2, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    invoke-direct {v2, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/base/UserDataHost;->setUserData(Ljava/lang/Class;Lorg/chromium/base/UserData;)Lorg/chromium/base/UserData;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    :cond_0
    return-object v0
.end method

.method public static get(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/TinSwipeRefreshHandler;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUserDataHost()Lorg/chromium/base/UserDataHost;

    move-result-object p0

    sget-object v0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->USER_DATA_KEY:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/chromium/base/UserDataHost;->getUserData(Ljava/lang/Class;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    return-object p0
.end method

.method private getFocusedSplitView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getStopRefreshingRunnable()Ljava/lang/Runnable;
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/browser/b;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;I)V

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private initSwipeRefreshLayout(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setSize(I)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isWearOs()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    goto :goto_0

    :cond_1
    const/16 v0, 0xc8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setDistanceToTriggerSync(I)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    new-instance v0, Lcom/sec/terrace/browser/a;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/a;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setOnRefreshListener(Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnRefreshListener;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    new-instance v0, Lcom/sec/terrace/browser/a;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/a;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setOnResetListener(Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnResetListener;)V

    return-void
.end method

.method private synthetic lambda$getStopRefreshingRunnable$3()V
    .locals 2

    const-string v0, "TinSwipeRefreshHandler"

    const-string v1, "Stop refresh animation of Swipe Refresh Layout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSwipeRefreshLayout$0()V
    .locals 5

    const-string v0, "Refresh event received from Swipe Refresh Layout."

    const-string v1, "TinSwipeRefreshHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "202"

    goto :goto_0

    :cond_0
    const-string v0, "201"

    :goto_0
    const-string v2, "2177"

    invoke-static {v0, v2}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getListenerCallback()Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/TerraceListenerCallback;->shouldPerformPullToRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Reload hasn\'t been invoked. current page might be in reader mode or offline page"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->reset()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->cancelStopRefreshingRunnable()V

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->getStopRefreshingRunnable()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x1d4c

    const/4 v4, 0x7

    invoke-static {v4, v0, v2, v3}, Lorg/chromium/base/task/PostTask;->postDelayedTask(ILjava/lang/Runnable;J)V

    const-string v0, "Reload has been invoked."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->reload()V

    return-void
.end method

.method private synthetic lambda$initSwipeRefreshLayout$1()V
    .locals 2

    const-string v0, "TinSwipeRefreshHandler"

    const-string v1, "Reset received from Swipe refresh layout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mDetachRefreshLayoutRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->detachSwipeRefreshLayoutIfNecessary()V

    return-void
.end method

.method private synthetic lambda$initSwipeRefreshLayout$2()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mDetachRefreshLayoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/browser/b;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;I)V

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mDetachRefreshLayoutRunnable:Ljava/lang/Runnable;

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method private supportPullToRefresh()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isExtensionsViewLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getListenerCallback()Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->supportPullToRefresh()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public didStopRefreshing()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->cancelStopRefreshingRunnable()V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->getStopRefreshingRunnable()Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public initWebContents(Lcom/sec/terrace/content/browser/TinWebContentsImpl;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setOverscrollRefreshHandler(Lorg/chromium/ui/OverscrollRefreshHandler;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->setEnabled(Z)V

    return-void
.end method

.method public pull(FF)V
    .locals 0

    const-string p1, "TinSwipeRefreshHandler.pull"

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->pull(F)V

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public release(Z)V
    .locals 1

    const-string v0, "TinSwipeRefreshHandler.release"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->release(Z)V

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    const-string p0, "TinSwipeRefreshHandler"

    const-string p1, "Swipe refresh layout released after pull complete."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->cancelStopRefreshingRunnable()V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->reset()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Swipe refresh layout has been reset for instance:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TinSwipeRefreshHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetAndRemoveLayout()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetAndRemoveLayout received for instance:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinSwipeRefreshHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->detachSwipeRefreshLayoutIfNecessary()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->setEnabled(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinSwipeRefreshHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->reset()V

    :cond_0
    return-void
.end method

.method public start(II)Z
    .locals 2

    iget-object p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->supportPullToRefresh()Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    const-string p1, "TinSwipeRefreshHandler"

    const-string v0, "Start swipe refresh event received."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->initSwipeRefreshLayout(Landroid/content/Context;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->attachSwipeRefreshLayoutIfNecessary()V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isSplitMode()Z

    move-result p1

    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getRefreshIconTopOffset(Z)I

    move-result p1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setProgressViewOffset(ZII)V

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->mSwipeRefreshLayout:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->start()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method
