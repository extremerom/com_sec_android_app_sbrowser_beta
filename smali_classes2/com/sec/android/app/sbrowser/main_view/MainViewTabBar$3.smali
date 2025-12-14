.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNewTabToGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTab(ZLjava/lang/String;)V

    return-void
.end method

.method public bringToFront()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->convertBitmapToolbarToView()V

    return-void
.end method

.method public captureBitmap()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->postCaptureBitmap()V

    return-void
.end method

.method public changeGroupColor(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->changeGroupColor(Ljava/lang/String;I)V

    return-void
.end method

.method public closeAllTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->closeAllTabsInternal()V

    return-void
.end method

.method public closeAllTabsInGroup(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabsInGroup(Ljava/lang/String;)V

    return-void
.end method

.method public closeOtherTabs(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeOtherTabs(IZ)V

    return-void
.end method

.method public closeOtherTabsInGroup(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeOtherTabsInGroup(Ljava/lang/String;I)V

    return-void
.end method

.method public closeTab(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method public createTab()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchNewTab(Z)V

    return-void
.end method

.method public createTabGroupWithTab(ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createTabGroupWithTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    return-void
.end method

.method public focusOutBottom()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInLeft()V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Z

    move-result p0

    return p0
.end method

.method public focusOutLeft()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowingWithOneLine()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->focusInRightFromTabBar()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInRight()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public focusOutRight()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowingWithOneLine()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->focusInLeftFromTabBar()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInLeft()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->focusInLeft()V

    :cond_4
    :goto_0
    return v1
.end method

.method public focusOutTop()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowingWithTwoLine()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getFindOnPage()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInRight()V

    const/4 p0, 0x1

    return p0
.end method

.method public groupTab(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->groupTab(ILjava/lang/String;)V

    return-void
.end method

.method public lockTab(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getLockedTabCount()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxLockTabCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxLockTabCount()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxLockTabCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12005c

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsLocked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public moveTabGroup(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->moveTabGroup(Ljava/lang/String;IZ)V

    return-void
.end method

.method public moveToOtherGroup(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method public onPopupMenuShown()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_TAB_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onPopupMenuShown(Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;)V

    return-void
.end method

.method public openInNewTab(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;ILjava/lang/String;)V

    return-void
.end method

.method public openInNewTabInGroup(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;ILjava/lang/String;)V

    return-void
.end method

.method public openInNewWindow(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;I)V

    return-void
.end method

.method public openInOtherWindow(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;I)V

    return-void
.end method

.method public renameGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->renameGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reopenClosedTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->reopenClosedTab()V

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public swapTab(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->swapTab(II)V

    return-void
.end method

.method public ungroup(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->ungroup(Ljava/lang/String;)V

    return-void
.end method

.method public ungroupTab(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->ungroupTab(ILjava/lang/String;)V

    return-void
.end method

.method public unlockTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsLocked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
