.class Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->createMultiTabDelegate()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllBitmapCache()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->clearAllBitmapCache()V

    return-void
.end method

.method public clickMenuKey(Landroid/view/KeyEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->onMoreMenuClicked()V

    return-void
.end method

.method public createNewTab(ZZZLjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object p0

    invoke-interface {p0, p1, p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabWithAnim(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object p0

    invoke-interface {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabWithoutAnim(ZZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    return-object p0
.end method

.method public getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFullscreenBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getFullscreenBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getStatusBarColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getStatusBarColor()I

    move-result p0

    return p0
.end method

.method public getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTimeLaunchTabsRequested()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method public isBmpCallbackReceived()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z

    move-result p0

    return p0
.end method

.method public isHideStatusBarEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isInstanceStateSaved()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->o(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z

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

.method public isLaunchedByBixby()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabLaunchedByBixby()Z

    move-result p0

    return p0
.end method

.method public notifyToolbarColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldShowBottomBarShadow()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    :cond_0
    return-void
.end method

.method public onStartOutroAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setEnabled(Z)V

    :cond_1
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabGroupChanged(Ljava/util/List;)V

    return-void
.end method
