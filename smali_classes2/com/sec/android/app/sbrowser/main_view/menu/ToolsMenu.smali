.class Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

.field private mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

.field private mPrevOrientation:I

.field public mPrevSmallestScreenWidthDp:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    return-void
.end method

.method private reloadMoreMenu()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->isMoreMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;->onHide()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/d;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismissToolsDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;->onHide()V

    return-void
.end method

.method public getCurrentTabTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getCurrentTabUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getMoreMenuRect()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->isMoreMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;->getMoreMenuRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabCountOfCurrentGroup()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabCountOfCurrentGroup()I

    move-result p0

    return p0
.end method

.method public getToolbarOuter()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getOuterLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isMoreMenuShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;->isMoreMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShareAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->isShareMenuAvailable()Z

    move-result p0

    return p0
.end method

.method public isSummaryAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeSummary()Z

    move-result p0

    return p0
.end method

.method public onAppMenuLongClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->onAppMenuLongClick()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mPrevOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mPrevSmallestScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->reloadMoreMenu()V

    return-void
.end method

.method public onMenuKeyClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mPrevOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mPrevSmallestScreenWidthDp:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->isMoreMenuLeft()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;->onMenuKeyClicked(Z)V

    return-void
.end method

.method public onMoreMenuDismissed()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->isMoreMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->dismissAiOptionPopup()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMoreMenuHandler:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    return-void
.end method

.method public onNewGuiStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->reloadMoreMenu()V

    return-void
.end method

.method public onOptionsItemSelected(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->performMenuItem(ILandroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->performMenuItem(ILandroid/view/View;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onShareButtonClicked()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    const v0, 0x7f0b0074

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->performMenuItem(ILandroid/view/View;)V

    return-void
.end method

.method public shouldShowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldShowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showSummarizePopupWindow(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showSummarizePopupWindow(Ljava/lang/String;)V

    return-void
.end method
