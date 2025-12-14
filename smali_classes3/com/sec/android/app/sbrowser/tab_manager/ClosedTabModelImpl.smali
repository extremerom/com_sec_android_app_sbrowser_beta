.class Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;


# instance fields
.field private final mClosedTabs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestRestoredPath:Ljava/lang/String;

.field private final mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    return-void
.end method

.method private getTabToBeRestored(I)Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;
    .locals 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getTabToBeRestored] (before) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->printClosedTabs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClosedTabModel"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getTabId()I

    move-result v3

    if-eq v3, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getTabToBeRestored] (after) : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->printClosedTabs()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private printClosedTabs()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reopenClosedTab(Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createFrozenTab(Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->setAsCurrentTabIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mLatestRestoredPath:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    const-string p1, "[reopenClosedTab] "

    const-string v0, " is reopened"

    const-string v1, "ClosedTabModel"

    invoke-static {p0, p1, v0, v1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private setAsCurrentTabIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method


# virtual methods
.method public addToClosedTabList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[addToClosedTabList] tab : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClosedTabModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTabImmediately(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result v0

    if-le p1, v0, :cond_1

    const-string v0, "[addToClosedTabList] totalClosedCount = "

    const-string v2, " maxClosedCount = "

    invoke-static {p1, v0, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[addToClosedTabList] remove oldest : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getTabId()I

    move-result p0

    invoke-static {p1, p0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public clearClosedTabs()V
    .locals 2

    const-string v0, "ClosedTabModel"

    const-string v1, "[clearClosedTabs]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public getClosedTabList(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-direct {p1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getLatestReopenedPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mLatestRestoredPath:Ljava/lang/String;

    return-object p0
.end method

.method public hasClosedTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->mClosedTabs:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reopenClosedTab()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->hasClosedTab()Z

    move-result v0

    const-string v1, "[reopenClosedTab] hasClosedTab : "

    const-string v2, "ClosedTabModel"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->getTabToBeRestored(I)Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->reopenClosedTab(Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;)I

    move-result p0

    return p0
.end method

.method public reopenClosedTabExceptForTab(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->hasClosedTab()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[reopenClosedTabExceptTab] hasClosedTab : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / exceptTabId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClosedTabModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->getTabToBeRestored(I)Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;->reopenClosedTab(Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;)I

    move-result p0

    return p0
.end method
