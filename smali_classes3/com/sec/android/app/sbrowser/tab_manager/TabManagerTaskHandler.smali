.class public Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler$TaskHandler;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mTabCreationExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mTabCreationExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler$TaskHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler$TaskHandler;-><init>(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->lambda$launchNewTab$0(ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->handleMessageForLaunchNewTab(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleMessageForLaunchNewTab(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "incognito"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "group"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyNewTabLaunched(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$launchNewTab$0(ZLjava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "incognito"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "group"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message"

    const/16 p2, 0xa

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public launchNewTab(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/p;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mTabCreationExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mTabCreationExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mTabCreationExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->mTabCreationExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
