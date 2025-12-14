.class Lcom/sec/android/app/sbrowser/tab_manager/TabModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mClosedOldestTab:Le1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le1/b;"
        }
    .end annotation
.end field

.field private final mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

.field private mFocusedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mIndexNormal:I

.field private mIndexSecret:I

.field private final mInstanceId:I

.field private mNeedToSkipShowNormalTab:Z

.field private mNeedToSkipShowSecretTab:Z

.field private mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private final mNormalTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private final mSecretTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHolder:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;)V
    .locals 1
    .param p3    # Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mIndexNormal:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mIndexSecret:I

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mTabHolder:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->lambda$clearOtrBrowsingData$3()V

    return-void
.end method

.method private addTabView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mTabHolder:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private adjustCurrentTab(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentIndex(Z)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->lambda$closeOtherTabs$1(IZ)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->lambda$getOldestTab$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0
.end method

.method private clampIndex(ZI)I
    .locals 0

    if-gez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result p0

    if-lt p2, p0, :cond_1

    add-int/lit8 p2, p0, -0x1

    :cond_1
    return p2
.end method

.method private clearTabList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private closeOtherSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    if-nez p1, :cond_1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isCreatedWithTerrace()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addToClosedTabList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeTabImmediately(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private closeOtherTabsInternal(IZLjava/lang/Runnable;)V
    .locals 6

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeOtherTabsInternal(IZZLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private closeOtherTabsInternal(IZZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    if-eq v1, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->exists(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeOtherSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eq v0, p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_6
    return-void
.end method

.method private closeSingleInstantTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyInstantTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->detachThinWebView(Z)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->close()V

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyInstantTabRemoved(Z)V

    return-void
.end method

.method private closeSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->exists(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    if-nez p1, :cond_2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isCreatedWithTerrace()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addToClosedTabList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeTabImmediately(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabRemoved(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private closeTabInGroup(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->exists(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->lambda$closeOtherTabsInGroup$2(Ljava/lang/String;I)V

    return-void
.end method

.method private exists(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getCurrentTabView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getOldestTab(Ljava/util/List;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ")",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p1, Lcom/sec/android/app/sbrowser/tab_manager/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-ne v1, p2, :cond_3

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :cond_3
    return-object v1
.end method

.method private getPositionToAdd(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)I
    .locals 6

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, ", isIncognito : "

    const-string v4, "getPositionToAdd : "

    const-string v5, "TabModel"

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " at 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result v2

    if-eqz p3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    if-eq v2, p3, :cond_2

    if-nez p2, :cond_2

    const-string p2, "getPositionToAdd : parentId : "

    invoke-static {v2, p2, v5}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getPositionToAddWithParent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZLjava/util/List;I)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isRootGroup(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getPositionToAddInGroup(ZLjava/lang/String;)I

    move-result p0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p0, v5}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return p0
.end method

.method private getPositionToAddInGroup(ZLjava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getPositionToAddWithParent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZLjava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Z",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, p4}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexById(ZI)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isRootGroup(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getPositionToAddInGroup(ZLjava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private hasNoTab()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->exists(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mTabHolder:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTabView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setNextCurrentTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->removeTabFromQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabRemoved(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isRootGroup(Ljava/lang/String;)Z
    .locals 0

    const-string p0, ""

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$clearOtrBrowsingData$3()V
    .locals 2

    const-string v0, "TabModel"

    const-string v1, "clearOtrBrowsingData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$closeOtherTabs$1(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyOtherTabRemoved(IZ)V

    return-void
.end method

.method private synthetic lambda$closeOtherTabsInGroup$2(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyOtherTabsInGroupRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$getOldestTab$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTimestampMillis()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTimestampMillis()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private notifyAllTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onAllTabsInGroupRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyAllUnlockedTabsRemoved()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onAllUnlockedTabsRemoved()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyBackgroundTabOpened(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onBackgroundTabOpened(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyFocusedTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onFocusedTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyInstantTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onInstantTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyInstantTabRemoved(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onInstantTabRemoved(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyInstantTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onInstantTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOtherTabRemoved(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onOtherTabRemoved(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOtherTabsInGroupRemoved(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onOtherTabsInGroupRemoved(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabGroupOrderChanged(Ljava/lang/String;IZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onTabGroupOrderChanged(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabOrderChanged(II)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onTabOrderChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabRemoved(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onTabRemoved(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->onTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rearrangeTabGroupForReopenedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    invoke-interface {v3, v1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->isTabGroupExist(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[rearrangeTabGroupForReopenedTab] tab group exist for : "

    const-string v3, "TabModel"

    invoke-static {v0, v1, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setGroupColorId(I)V

    :cond_0
    return-void
.end method

.method private refreshCurrentIndex(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentIndex(Z)I

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentIndex(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeTabAndAddToGroup(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ")V"
        }
    .end annotation

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeTabView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mTabHolder:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TabModel"

    const-string v0, "removeTabView: Exception occurred while removing view"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addInstantTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleInstantTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleInstantTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyInstantTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZ)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method

.method public addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->getNativePageEarly(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->rearrangeTabGroupForReopenedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getPositionToAdd(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)I

    move-result p4

    invoke-interface {v0, p4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyBackgroundTabOpened(I)V

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method

.method public addToClosedTabList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    const-string v0, "TabModel"

    const-string v1, "[addToClosedTabList]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->removeTabView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;->addToClosedTabList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public canReopenClosedOldestTab()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedOldestTab:Le1/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Le1/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedOldestTab:Le1/b;

    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public clearClosedTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;->clearClosedTabs()V

    return-void
.end method

.method public clearOtrBrowsingData(Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->clearOtrBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZ)Z

    :cond_0
    return-void
.end method

.method public closeAllTabsInGroup(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasLockedTabsInGroup(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TabModel"

    if-eqz v0, :cond_0

    const-string v0, "closeAllTabsInGroup - existLockedTabs"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeAllUnlockedTabsInGroup(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getUnlockedMemberCount(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result v3

    if-ne v0, v3, :cond_1

    const-string p1, "closeAllTabsInGroup - group tab count is same with total tab count."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->closeAllTabs()V

    return-void

    :cond_1
    const-string v0, "closeAllTabsInGroup - group: "

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeTabInGroup(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyAllTabsInGroupRemoved(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->adjustCurrentTab(Z)V

    :cond_3
    return-void
.end method

.method public closeAllUnlockedTabs()V
    .locals 4

    const-string v0, "TabModel"

    const-string v1, "closeAllUnlockedTabs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->exists(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyAllUnlockedTabsRemoved()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->adjustCurrentTab(Z)V

    :cond_3
    return-void
.end method

.method public closeAllUnlockedTabsInGroup(Ljava/lang/String;)V
    .locals 3

    const-string v0, "closeAllUnlockedTabsInGroup - groupName : "

    const-string v1, "TabModel"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeTabInGroup(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->adjustCurrentTab(Z)V

    :cond_1
    return-void
.end method

.method public closeCurrentTab()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeCurrentTab() tabId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    const-string v2, "TabModel"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public closeInstantTab(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleInstantTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public closeOldestTab()I
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getOldestTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "TabModel"

    if-nez v0, :cond_0

    const-string p0, "closeOldestTab() - oldest tab is null in current instance"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-instance v6, Le1/b;

    invoke-direct {v6, v4, v5}, Le1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedOldestTab:Le1/b;

    const-string v4, "closeOldestTab() tabId = "

    const-string v5, " at instance "

    invoke-static {v2, v4, v5}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isIncognito: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return v2
.end method

.method public closeOtherTabs(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeOtherTabs closeSecretTabs:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/e;-><init>(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;IZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeOtherTabsInternal(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public closeOtherTabsInGroup(Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeOtherTabsInGroup - groupName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/sec/android/app/sbrowser/tab_manager/d;

    invoke-direct {v7, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/d;-><init>(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;Ljava/lang/String;I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move v3, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeOtherTabsInternal(IZZLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    const-string v1, "TabModel"

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->exists(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "closeTab "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at instance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clearOtrBrowsingData(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->adjustCurrentTab(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "Tab to close is unavailable hence returning"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public closeTabImmediately(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    const-string v0, "TabModel"

    const-string v1, "[closeTabImmediately]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->removeTabView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setNextCurrentTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->removeTabFromQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->detachThinWebView(Z)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->close()V

    return-void
.end method

.method public closeTabs(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "TabModel"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v1

    if-eq p2, v1, :cond_1

    const-string p0, "secret mode status is not matched hence returning"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clearOtrBrowsingData(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->adjustCurrentTab(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "Tab lists to close is unavailable hence returning"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public currentTabNotChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[currentTabNotChanged] : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentIndex(ZI)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mTabHolder:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTabView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleInstantTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeSingleInstantTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clearTabList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clearTabList(Ljava/util/List;)V

    return-void
.end method

.method public getAllTabList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getCacheExcludedTabList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getAllTabList()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;->getClosedTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;->getClosedTabList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIndex(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mIndexSecret:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clampIndex(ZI)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mIndexNormal:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clampIndex(ZI)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0
.end method

.method public getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :cond_1
    return-object p0
.end method

.method public getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mFocusedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGroupColorId(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getGroupNameList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getInstanceId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    return p0
.end method

.method public getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :goto_0
    return-object p0
.end method

.method public getLatestReopenedPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;->getLatestReopenedPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockedTabCount()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getMemberCount(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

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

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getOldestTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getUnlockedTabCount(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getOldestTab(Ljava/util/List;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getParentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mTabHolder:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getAllTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    if-ne v1, p1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    if-ne v0, p1, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getTabByUrl(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getUnicodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getUnicodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasInstantTab(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getUnicodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p1

    :cond_5
    return-object v1
.end method

.method public getTabCount(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    goto :goto_0

    :goto_1
    return p0
.end method

.method public getTabIndexById(ZI)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    if-ne v3, p2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasInstantTab(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    if-ne p0, p2, :cond_2

    const/4 p0, -0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLaunchedFromSplitView()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexById(ZI)I

    move-result p0

    return p0
.end method

.method public getTabList(Z)Ljava/util/List;
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretTabList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public getUngroupedTabCount()I
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isRootGroup(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getUnicodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getUnicodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnlockedMemberCount(Ljava/lang/String;)I
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

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

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getUnlockedTabCount(Ljava/util/List;)I
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public handleOldCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->onSetToNotCurrentTab(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->addTabToSaveQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public hasClosedTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;->hasClosedTab()Z

    move-result p0

    return p0
.end method

.method public hasInstantTab()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasInstantTab(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mSecretInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalInstantTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public hasLockedTabs()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasLockedTabsInGroup(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNormalTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hidePreviousTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsBitmapCaptureDelayed(Z)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->handleBeforeTabHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideReader()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideInfoBar()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->removeTabView(Landroid/view/View;)V

    return v1
.end method

.method public hideTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    const-string v1, "TabModel"

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->exists(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hideTab "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at instance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hideSingleTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clearOtrBrowsingData(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->adjustCurrentTab(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "Tab to close is unavailable hence returning"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedToSkipShowTab()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNeedToSkipShowSecretTab:Z

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNeedToSkipShowNormalTab:Z

    return p0
.end method

.method public isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public moveTab(II)V
    .locals 3

    const-string v0, "moveTab : tabId = "

    const-string v1, " toIndex = "

    const-string v2, "TabModel"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    if-ltz p2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->refreshCurrentIndex(Z)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public moveTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    const-string v1, "moveTab : oldIndex : "

    const-string v2, " at instance "

    invoke-static {v0, v1, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TabModel"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-string v5, "moveTab : newIndex : "

    invoke-static {v4, v5, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->refreshCurrentIndex(Z)V

    return-void
.end method

.method public moveTabGroup(Ljava/lang/String;IZ)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    if-ltz p2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->removeTabAndAddToGroup(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->refreshCurrentIndex(Z)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabGroupOrderChanged(Ljava/lang/String;IZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTabView()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->removeTabView(Landroid/view/View;)V

    return-void
.end method

.method public reopenCloseTabExceptTab(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;->reopenClosedTabExceptForTab(I)I

    move-result p0

    return p0
.end method

.method public reopenClosedTab()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mClosedTabModel:Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;->reopenClosedTab()I

    move-result p0

    const-string v0, "[reopenClosedTab] ret: "

    const-string v1, "TabModel"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public reorderGroup(Ljava/lang/String;IZ)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->removeTabAndAddToGroup(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eqz p3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabGroupOrderChanged(Ljava/lang/String;IZ)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->refreshCurrentIndex(Z)V

    return-void
.end method

.method public reorderTab(II)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabOrderChanged(II)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->refreshCurrentIndex(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reorderTabWithGroup(IIZ)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eqz p3, :cond_2

    add-int/lit8 v3, p2, 0x1

    goto :goto_0

    :cond_2
    move v3, p2

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p3, :cond_3

    add-int/lit8 p2, p2, 0x1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabOrderChanged(II)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->refreshCurrentIndex(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public resetCurrentTab()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method

.method public setCurrentIndex(ZI)V
    .locals 2

    const-string v0, " at instance "

    const-string v1, "TabModel"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clampIndex(ZI)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mIndexSecret:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[setCurrentIndex] isIncognito : true, index: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mIndexSecret:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-static {p1, p0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clampIndex(ZI)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mIndexNormal:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[setCurrentIndex] isIncognito : false, index: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mIndexNormal:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-static {p1, p0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "TabModel"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "[setCurrentTab] : tab is closed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-ne p1, v1, :cond_1

    const-string p0, "[setCurrentTab] : tab is instant tab"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v2

    if-ne v2, v1, :cond_2

    const-string p0, "[setCurrentTab] : index is INVALID_TAB_INDEX"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move v1, v2

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hidePreviousTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[setCurrentTab] : hide previousTab : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-nez p1, :cond_5

    const-string p0, "[setCurrentTab] : tab is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "setCurrentTab / id : "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->handleOldCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentIndex(ZI)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTabView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isNeedToSkipShowTab()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->onSetToCurrentTab(Z)V

    return-void

    :cond_6
    const-string p1, "[setCurrentTab] : previousTab == currentTab"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->currentTabNotChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public setCurrentTabForTest(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mDelegate:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    return-void
.end method

.method public setFocusedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mFocusedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mFocusedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "setFocusedTab(): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mFocusedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mFocusedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TabModel"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyFocusedTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public setNeedToSkipShowTab(Z)V
    .locals 2

    const-string v0, "setNeedToSkipShowTab flag : "

    const-string v1, "TabModel"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNeedToSkipShowSecretTab:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mNeedToSkipShowNormalTab:Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isNeedToSkipShowTab()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_1
    return-void
.end method

.method public setNextCurrentTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 7
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexById(ZI)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    const-string v4, ", isIncognito : "

    const-string v5, " at "

    const-string v6, "TabModel"

    if-ne p1, v3, :cond_1

    const-string v3, "[setNextCurrentTabIndex] set next current index for "

    invoke-static {v1, v2, v3, v5, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexById(ZI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setNextCurrentTabIndexToParent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setNextCurrentTabIndexIfNoParent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentIndex(Z)I

    move-result p1

    if-gt v2, p1, :cond_2

    const-string p1, "[setNextCurrentTabIndex] rearrange current index by "

    invoke-static {v1, v2, p1, v5, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v6, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentIndex(Z)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentIndex(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setNextCurrentTabIndexIfNoParent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v4

    const-string v5, " at instance "

    const-string v6, "[setNextCurrentTabIndexIfNoParent] nextId: "

    const-string v7, "TabModel"

    const/4 v8, -0x1

    if-eq v3, v4, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentIndex(Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, v8, :cond_1

    if-lez v2, :cond_0

    add-int/lit8 v8, v1, -0x2

    :cond_0
    move v0, v8

    :cond_1
    invoke-static {v0, v6, v5}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentIndex(ZI)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v1, -0x2

    :cond_3
    if-ne v0, v8, :cond_5

    if-lez v2, :cond_4

    add-int/lit8 v8, v1, -0x2

    :cond_4
    move v0, v8

    :cond_5
    invoke-static {v0, v6, v5}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentIndex(ZI)V

    :goto_0
    return-void
.end method

.method public setNextCurrentTabIndexToParent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexById(ZI)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[setNextCurrentTabIndexToParent] parentTabId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", parentIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TabModel"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentIndex(ZI)V

    return-void
.end method

.method public setTabHolder(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->mTabHolder:Landroid/view/ViewGroup;

    return-void
.end method

.method public swapTab(II)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-ge p1, v1, :cond_2

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->refreshCurrentIndex(Z)V

    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->notifyTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    :cond_2
    :goto_0
    return-void
.end method
