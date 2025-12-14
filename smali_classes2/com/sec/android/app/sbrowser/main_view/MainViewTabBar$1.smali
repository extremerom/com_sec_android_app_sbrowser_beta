.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyAllTabsInGroupRemoved(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAllTabsRemoved(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyAllTabsRemoved(Z)V

    :cond_0
    return-void
.end method

.method public onAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyAllUnlockedTabsInGroupRemoved(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAllUnlockedTabsRemoved()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyAllUnlockedTabsRemoved(Z)V

    :cond_0
    return-void
.end method

.method public onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    :goto_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyCurrentTabChanged(II)V

    :cond_2
    return-void
.end method

.method public onOtherTabsInGroupRemoved(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyOtherTabsInGroupRemoved(ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onOtherTabsRemoved(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyOtherTabsRemoved(ZI)V

    :cond_0
    return-void
.end method

.method public onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->convertBitmapToolbarToView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabAdded(IZ)V

    :cond_0
    return-void
.end method

.method public onTabDetailsLoaded(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabDetailsLoaded(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabGroupChanged(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabGroupChanged(ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public onTabGroupColorChanged(ZLjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabGroupColorChanged(ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabGroupNameChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabGroupNameChanged(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTabGroupOrderChanged(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabGroupOrderChanged(ZLjava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public onTabGroupUngrouped(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabGroupUngrouped(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTabGrouped(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabGrouped(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabMoved(ZII)V

    :cond_0
    return-void
.end method

.method public onTabOrderChanged(ZII)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabOrderChanged(ZI)V

    :cond_0
    return-void
.end method

.method public onTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->convertBitmapToolbarToView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabRemoving(ZI)V

    :cond_0
    return-void
.end method

.method public onTabRestoreSkipped(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabRestoreSkipped(I)V

    :cond_0
    return-void
.end method

.method public onTabStateLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabStateLoaded()V

    :cond_0
    return-void
.end method

.method public onTabUngrouped(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabUngrouped(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method
