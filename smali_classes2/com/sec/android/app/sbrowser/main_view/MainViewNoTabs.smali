.class public Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBottomBar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private final mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mIsNoTabsPopBackErrorOccurred:Z

.field private mNeedDetachNoTabsFragment:Z

.field private final mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

.field private final mNoTabsFragmentDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

.field private final mNoTabsFragmentListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

.field private final mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

.field private mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragmentListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragmentDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mBottomBar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->createNewTabAndLoad()V

    return-void
.end method

.method private createNewTabAndLoad()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadHomePage()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->enableControlBar(Z)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->loadUrlWithNewTab(Ljava/lang/String;)V

    return-void
.end method

.method private enableControlBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->showShadowIfNeeded()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->hideShadow()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableToolbarButtons(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->enableToolbarButtons(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mBottomBar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->enableBottomBarButtons(Z)V

    :cond_1
    return-void
.end method

.method private getFragmentManager()Landroidx/fragment/app/f0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mActivity:Landroid/app/Activity;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    return-object p0
.end method

.method private loadUrlWithNewTab(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void
.end method


# virtual methods
.method public applySecretModeStatus(ZLandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "open_in_secret_mode_url"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    const-string v1, "applySecretModeStatus hasNoTab case"

    const-string v3, "si__MainViewNoTabs"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSaveInstanceState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->createNewTabAndLoad()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->loadUrlWithNewTab(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishMultiTabStack(Z)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaveInstanceState()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->isNoTabsShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->applySecretModeStatus()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->handleNoTabs()V

    goto :goto_3

    :cond_5
    const-string p1, "applySecretModeStatus : set mNeedDetachNoTabsFragment"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNeedDetachNoTabsFragment:Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaveInstanceState()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->finishNoTabsFragment()V

    goto :goto_2

    :cond_7
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNeedDetachNoTabsFragment:Z

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->loadUrlWithNewTab(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentIndex(Z)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public finishNoTabsFragment()V
    .locals 2

    const-string v0, "si__MainViewNoTabs"

    const-string v1, "finishNoTabsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->z(Z)Z

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->E()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->G()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaveInstanceState()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mIsNoTabsPopBackErrorOccurred:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->T()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mIsNoTabsPopBackErrorOccurred:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setListener(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->enableControlBar(Z)V

    :goto_1
    return-void
.end method

.method public handleNoTabs()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "si__MainViewNoTabs"

    const-string v1, "handleNoTabs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->dismissEditBookmarkSnackBarIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishFindOnPage()Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->z(Z)Z

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->E()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-static {v0, v0}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    const-class v3, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b06c2

    invoke-virtual {v0, v5, v2, v4}, Landroidx/fragment/app/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/a;->f(ZZ)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragmentListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setListener(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragmentDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_6
    return-void
.end method

.method public handleNoTabsKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mIsNoTabsPopBackErrorOccurred:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNeedDetachNoTabsFragment:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume : finish NoTabsFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mIsNoTabsPopBackErrorOccurred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewNoTabs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->finishNoTabsFragment()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mIsNoTabsPopBackErrorOccurred:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNeedDetachNoTabsFragment:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onResume : relaunch NoTabsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->handleNoTabs()V

    :cond_1
    return-void
.end method

.method public showNoTabsMoreMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->mNoTabsFragment:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->showMoreMenu()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
