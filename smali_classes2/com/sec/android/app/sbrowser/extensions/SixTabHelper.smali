.class public Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityId:I

.field mActivityStatusMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInstanceId:I

.field private final mTabManagerListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/tab_manager/TabManager;",
            ">;"
        }
    .end annotation
.end field

.field private mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagerListeners:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->runCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->runTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->runTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->runTabOrderChanged(II)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->runTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    return-object v0
.end method

.method private getTabIdBasedOnPosition(Z)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isInstantTabOnLeft()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    :goto_0
    return p0

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    :goto_1
    return p0
.end method

.method private init()V
    .locals 3

    const-string v0, "init"

    const-string v1, "SixTabHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;-><init>(Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->initialize(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->initialize(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p0, "init SixTabHelper is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerTabManagerListener(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagerListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagerListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private runCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 7

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentActivityId()I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    move v2, p1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId(I)I

    move-result v3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    move v6, p1

    goto :goto_3

    :cond_2
    move v6, v0

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabIndex()I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onCurrentTabChanged(IIIIZ)V

    return-void
.end method

.method private runTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentActivityId()I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    :goto_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabAdded(IIIZ)V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabAdded(IIIZ)V

    :cond_2
    return-void
.end method

.method private runTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentActivityId()I

    move-result v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabMoved(IIII)V

    :cond_0
    return-void
.end method

.method private runTabOrderChanged(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentActivityId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabOrderChanged(III)V

    return-void
.end method

.method private runTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentActivityId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabRemoving(IIIZ)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentActivityId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabRemoving(IIIZ)V

    :cond_1
    return-void
.end method

.method private setTabManager(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->registerTabManagerListener(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->onResume(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onResume(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public closeCurrentTab()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeCurrentTab()Z

    :cond_0
    return-void
.end method

.method public closeTab(II)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p1

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_1
    return-void
.end method

.method public getCurrentActivityId()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getCurrentTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    :cond_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    return p0
.end method

.method public getCurrentTabId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId(I)I

    move-result p0

    return p0
.end method

.method public getCurrentTabId(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabLaunchType()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_READER_MODE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentTabIndex()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabLaunchType()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_READER_MODE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p0

    return p0

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public getInstanceId(Landroid/content/Context;)I
    .locals 0

    if-nez p1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLeftTabId()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getTabIdBasedOnPosition(Z)I

    move-result p0

    return p0
.end method

.method public getLockedStatusByIndex(ZI)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result v0

    if-le v0, p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getRightTabId()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getTabIdBasedOnPosition(Z)I

    move-result p0

    return p0
.end method

.method public getTabIdByIndex(ZI)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getTabIdList(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public initialize(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;ILandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->setTabManager(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->init()V

    return-void
.end method

.method public isIncognito()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAllTabsRemoved(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onAllTabsRemoved(ZI)V

    return-void
.end method

.method public onAllUnlockedTabsRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onAllUnlockedTabsRemoved(I)V

    return-void
.end method

.method public onBackgroundTabOpened(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onBackgroundTabOpened(I)V

    return-void
.end method

.method public onCurrentTabChanged(IIIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onCurrentTabChanged(IIIIZ)V

    return-void
.end method

.method public onDestory(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onDestroy(Landroid/app/Activity;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagerListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->removeListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagerListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onLaunchNewTab(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onLaunchNewTab(ZI)V

    return-void
.end method

.method public onOtherTabsRemoved(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onOtherTabsRemoved(IZI)V

    return-void
.end method

.method public onPause(I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onPause(Landroid/app/Activity;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onReaderAnimationCleared(IZ)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabIndex()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    const/4 v5, 0x0

    const/4 v1, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onCurrentTabChanged(IIIIZ)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->setTabManager(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabIndex()I

    move-result v3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    const/4 v1, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onCurrentTabChanged(IIIIZ)V

    :cond_1
    return-void
.end method

.method public onTabAdded(IIIZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onTabAdded(IIIZ)V

    return-void
.end method

.method public onTabDetailsLoaded(ILjava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onTabDetailsLoaded(ILjava/lang/String;I)V

    return-void
.end method

.method public onTabMoved(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onTabMoved(IIII)V

    return-void
.end method

.method public onTabOrderChanged(III)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onTabOrderChanged(III)V

    return-void
.end method

.method public onTabRemoved(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onTabRemoved(ZI)V

    return-void
.end method

.method public onTabRemoving(IIIZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onTabRemoving(IIIZ)V

    return-void
.end method

.method public onTabStateLoaded(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTerraceSixTabHelper:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->onTabStateLoaded(I)V

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    if-ne v0, p3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivityId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onResume(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)V

    return-void
.end method

.method public openInNewWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isOpenInOtherWindowAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInOtherWindow(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x1

    invoke-static {p0, v0, p2, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showAllowedMsgForOIOW(Landroid/app/Activity;ZZLjava/lang/String;)V

    return p2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showAllowedMsgForOIOW(Landroid/app/Activity;ZZLjava/lang/String;)V

    return v1
.end method

.method public setCurrentTab(II)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabIndex()I

    move-result p1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p1

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mTabManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_1
    return-void
.end method
