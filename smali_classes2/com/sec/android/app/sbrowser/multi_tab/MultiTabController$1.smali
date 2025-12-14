.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getMultiTabViewDelegate()Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeGroupColor(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->changeGroupColor(Ljava/lang/String;I)V

    return-void
.end method

.method public clickMenuKey(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->clickMenuKey(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public closeAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->v(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabs()V

    return-void
.end method

.method public closeMultiTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->finishMultiTab()V

    return-void
.end method

.method public closeMultipleTabs(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeMultipleTabs(Ljava/util/List;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->l(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public createNewTab(ZZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->createNewTab(ZZZLjava/lang/String;)V

    return-void
.end method

.method public filterOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->filterOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public findStartEndIndexes(II)Le1/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Le1/b;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->isListViewType()Z

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->findStartAndEndIndexes(IIZ)Le1/b;

    move-result-object p0

    return-object p0
.end method

.method public getBottombarBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->l(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0
.end method

.method public getCurrentTabIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isSecretModeEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentIndex(Z)I

    move-result p0

    return p0
.end method

.method public getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->f(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorId(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGroupNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupNameList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLatestReopenedPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getLatestReopenedPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeFromOldPref()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->g(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiTabList(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNormalTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getNormalTabCount()I

    move-result p0

    return p0
.end method

.method public getRemovedTabList(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getClosedTabList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSecretTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getIncognitoTabCount()I

    move-result p0

    return p0
.end method

.method public getStatusBarColor()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getStatusBarColor()I

    move-result p0

    return p0
.end method

.method public getTabCountOfCurrentGroup()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getIncognitoTabCount()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isGroupListShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getMemberCount(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->getNormalTabCount()I

    move-result p0

    return p0
.end method

.method public getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->h(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->i(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTimeLaunchTabsRequested()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTimeLaunchTabsRequested()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToolbarBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->j(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getToolbarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->k(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)I

    move-result p0

    return p0
.end method

.method public isBmpCallbackReceived()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->isBmpCallbackReceived()Z

    move-result p0

    return p0
.end method

.method public isHideStatusBarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->isHideStatusBarEnabled()Z

    move-result p0

    return p0
.end method

.method public isLaunchedByBixby()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->isLaunchedByBixby()Z

    move-result p0

    return p0
.end method

.method public moveTabOrder(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reorderTab(II)V

    return-void
.end method

.method public notifyToolbarColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->notifyToolbarColorChanged()V

    return-void
.end method

.method public onMultiTabLaunched()V
    .locals 2

    const-string v0, "MultiTabController"

    const-string v1, "[onMultiTabLaunched]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;->onMultiTabLaunched()V

    :cond_0
    return-void
.end method

.method public onSecretClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->toggleSecretMode()V

    return-void
.end method

.method public onStartOutroAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->onStartOutroAnimation()V

    return-void
.end method

.method public onSyncedTabsClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->showSyncTabView()V

    return-void
.end method

.method public onTabGroupChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->onTabGroupChanged(Ljava/util/List;)V

    return-void
.end method

.method public onViewDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->u(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V

    return-void
.end method

.method public removeSyncedDevice()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->removeSyncedDevice()V

    return-void
.end method

.method public renameGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->renameGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reorderGroup(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reorderGroup(Ljava/lang/String;IZ)V

    return-void
.end method

.method public reorderTabWithGroup(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reorderTabWithGroup(IIZ)V

    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->l(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCurrentTab id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTabController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public setGroup(ILjava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    return-void
.end method

.method public setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->w(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public showReopenClosedTabMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->showReopenClosedTabMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public undoCloseTab()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reopenClosedTab()I

    move-result p0

    return p0
.end method
