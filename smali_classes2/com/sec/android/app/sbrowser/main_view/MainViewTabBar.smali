.class public Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private final mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private final mTabBarDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

.field private final mTabBarListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

.field private final mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

.field private final mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

.field private final mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabBarDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabBarListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->lambda$launchInOtherWindow$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-object p0
.end method

.method private focusOnTab()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-object p0
.end method

.method private getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->focusOnTab()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method private isChromeNativeUrl(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "chrome-native://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGoogleUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->isChromeNativeUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->isGoogleUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->launchInNewTab(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$launchInOtherWindow$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mActivity:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInOtherWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private launchInNewTab(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishEditMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v3, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private launchInNewWindow(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mActivity:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private launchInOtherWindow(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/h;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->launchInNewWindow(I)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->launchInOtherWindow(I)V

    return-void
.end method


# virtual methods
.method public getTabBarDelegate()Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabBarDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    return-object p0
.end method

.method public getTabBarListener()Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabBarListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    return-object p0
.end method

.method public hideAllPopups()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->hideAllPopups()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->removeListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->onResume()V

    :cond_0
    return-void
.end method
