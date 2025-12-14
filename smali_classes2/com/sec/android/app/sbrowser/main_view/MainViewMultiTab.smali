.class public Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private mCallbackForLaunch:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

.field private final mContext:Landroid/content/Context;

.field private mIsBmpCallbackReceived:Z

.field private mIsMultiTabShowing:Z

.field private final mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

.field private mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

.field private final mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private final mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private final mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

.field private mTimeLaunchTabsRequested:J

.field private final mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->lambda$launchMultiTabStackInternal$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-object p0
.end method

.method private createMultiTabDelegate()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    return-object v0
.end method

.method private createMultiTabEventListener()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mIsBmpCallbackReceived:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    return-object p0
.end method

.method private enableQuickAccessButtons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isQuickAccessPage()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->enableQuickAccessHoverPopup(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-object p0
.end method

.method private getAnimDuration()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->create(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->createMultiTabDelegate()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->createMultiTabEventListener()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->setListener(Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    return-object p0
.end method

.method private getOptionMenuBadgeCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getOptionMenuBadgeCount()I

    move-result p0

    return p0
.end method

.method private getSaveInstanceState()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaveInstanceState()Z

    move-result p0

    return p0
.end method

.method private getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTimeLaunchTabsRequested:J

    return-wide v0
.end method

.method private isBottombarUnderToolbar()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private isTabBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowing()Z

    move-result p0

    return p0
.end method

.method private isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mIsMultiTabShowing:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    return-void
.end method

.method private synthetic lambda$launchMultiTabStackInternal$0(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTimeLaunchTabsRequested:J

    sub-long/2addr v0, v2

    const-string p1, "[launchMultiTabStackInternal] elapsedTime for bitmap: "

    const-string v2, "si__MainViewMultiTab"

    invoke-static {v0, v1, p1, v2}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mIsBmpCallbackReceived:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->startIntroAnimIfDelayed()V

    :cond_0
    return-void
.end method

.method private launchMultiTabFinally()V
    .locals 3

    const-string v0, "si__MainViewMultiTab"

    const-string v1, "[launchMultiTabFinally]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mCallbackForLaunch:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->launchMultiTab(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mCallbackForLaunch:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    return-void
.end method

.method private loadThumbnailsToCache(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportToolbarSwipe(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->loadThumbnailsToMemCache()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->loadThumbnailsToMemCache(Z)V

    :goto_0
    const-string v1, "si__MainViewMultiTab"

    const-string v2, "[loadThumbnailsToCache] fullscreen bitmap requested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v3

    const-wide/16 v7, 0x1f4

    const/4 v9, 0x1

    const/4 v4, 0x1

    move-object v5, v1

    move-object v6, p1

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;JI)V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    const/4 v8, 0x1

    const/4 v3, 0x1

    move-object v5, p1

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;JI)V

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->loadThumbnailsToMemCache(Z)V

    :cond_3
    return-void
.end method

.method private loadThumbnailsToMemCache()V
    .locals 9

    const-string v0, "loadThumbnailsToMemCache"

    const-string v1, "si__MainViewMultiTab"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isSecretModeEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isSecretModeEnabled()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentIndex(Z)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentIndex = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->isListViewType()Z

    move-result v6

    invoke-static {v0, v3, v6}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->findStartAndEndIndexes(IIZ)Le1/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "startIndex = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Le1/b;->a:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " endIndex = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Le1/b;->b:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Le1/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    move-object v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v7

    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v1, v7, v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getThumbnailBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v3

    invoke-interface {v3, v1, v4, v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getThumbnailBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private loadThumbnailsToMemCache(Z)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isSecretModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 v5, 0x3

    if-le v2, v5, :cond_3

    add-int/lit8 v5, v2, -0x3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    add-int/lit8 v2, v2, -0x2

    :goto_2
    if-lt v2, v5, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v7

    if-ne p1, v7, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v4, v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getThumbnailBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v7

    invoke-interface {v7, v6, v3, v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getThumbnailBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->enableQuickAccessButtons(Z)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    return-object p0
.end method

.method private needBottombarSlideUpAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private needToolbarSlideUpAnimation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private notifyLetterBoxColorChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyLetterBoxColorChanged()V

    return-void
.end method

.method private notifyStatusBarThemeColorChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyStatusBarThemeColorChanged()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getSaveInstanceState()Z

    move-result p0

    return p0
.end method

.method private onMultiTabAttached()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setNeedToSkipShowTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyMultiTabAttached()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_MULTI_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_BLACK:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateDecorFitsSystemWindows()V

    return-void
.end method

.method private onMultiTabDetached()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mIsMultiTabShowing:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setNeedToSkipShowTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->removeAnimationLayoutIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getOptionMenuBadgeCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->updateOptionMenuBadgeVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyMultiTabDetached()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->notifyStatusBarThemeColorChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->notifyLetterBoxColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->forceCapture()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->focusOnTabs()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateDecorFitsSystemWindows()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method private prepareAnimationLayoutIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->removeToolbar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->needBottombarSlideUpAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->removeBottombar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isTabBarShowing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->notifyLetterBoxColorChanged()V

    return-void
.end method

.method private removeAnimationLayoutIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addBottombar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addToolbar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTabAnimationLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->notifyStatusBarThemeColorChanged()V

    return-void
.end method

.method private setAccessibilityEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setAccessibilityEnabled(Z)V

    return-void
.end method

.method private setForceStatusBarUpdate(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setForceStatusBarUpdate(Z)V

    return-void
.end method

.method private shouldBottomBarShow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private showBottombarSlideUpAnimationIfNeeded()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->needBottombarSlideUpAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getAnimDuration()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isBottombarUnderToolbar()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getVisibleHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showSlideUpAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->prepareAnimationLayoutIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->showToolbarSlideAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->showBottombarSlideUpAnimationIfNeeded()V

    return-void
.end method

.method private showToolbarSlideAnimation()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNewQuickAccessNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getAnimDuration()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->needToolbarSlideUpAnimation()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isBottombarUnderToolbar()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->onMultiTabAttached()V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->onMultiTabDetached()V

    return-void
.end method

.method private updateOptionMenuBadgeVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateOptionMenuBadgeVisibility(I)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->setAccessibilityEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->setForceStatusBarUpdate(Z)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->shouldBottomBarShow()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->showSlideUpAnimation()V

    return-void
.end method


# virtual methods
.method public applySecretModeStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->applySecretModeStatus(Z)V

    return-void
.end method

.method public bringToFront()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->bringToFront()V

    :cond_0
    return-void
.end method

.method public cancelMoveMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->cancelMoveMode()V

    return-void
.end method

.method public checkOnBackPressed()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "si__MainViewMultiTab"

    const-string v1, "onBackPressed : isMultiTabShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isMultiTabAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isTabDraggingOnMultiTab()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->exitMultiTabEditMode()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->cancelMoveMode()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabSearchBarShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->exitMultiTabSearchMode()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabNeedToCloseGroupList()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->closeMultiTabGroupList()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->startOutroAnimation(Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public closeAllTabsForBixby()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->closeAllTabs()V

    :cond_0
    return-void
.end method

.method public closeAllTabsInternal()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->closeAllTabs()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabs()V

    :goto_0
    return-void
.end method

.method public closeCurrentTabForBixby(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->onCloseTabRequest(I)V

    :cond_0
    return-void
.end method

.method public closeMultiTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->finishMultiTab()V

    :cond_0
    return-void
.end method

.method public closeMultiTabByNewIntent()V
    .locals 2

    const-string v0, "si__MainViewMultiTab"

    const-string v1, "[closeMultiTabByNewIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->closeMultiTab()V

    return-void
.end method

.method public closeMultiTabGroupList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->closeGroupList()V

    return-void
.end method

.method public exitMultiTabEditMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->exitEditMode()V

    return-void
.end method

.method public exitMultiTabSearchMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->exitSearchMode()V

    return-void
.end method

.method public finishMultiTabStack(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->startOutroAnimation(Z)V

    return-void
.end method

.method public getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object p0

    return-object p0
.end method

.method public isMoveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isMoveMode()Z

    move-result p0

    return p0
.end method

.method public isMultiTabClosing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mIsMultiTabShowing:Z

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isMultiTabClosing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabNeedToCloseGroupList()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isGroupListShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabSearchBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isSearchBarShowing()Z

    move-result p0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mIsMultiTabShowing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabDraggingOnMultiTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isTabDragging()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchMultiTabStackInternal(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)Z
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[launchMultiTabStackInternal] callback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewMultiTab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->isBitmapCacheAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "launchMultiTabStackInternal failed : !BitmapCacheInitialized()"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->initializeBitmapCacheIfNeeded()V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/terrace/Terrace;->cancelVirtualView()V

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsBitmapCaptureDelayed(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "[launchMultiTabStackInternal] isMultiTabShowing"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setTouchEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-nez v0, :cond_5

    return v2

    :cond_5
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mIsMultiTabShowing:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mCallbackForLaunch:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mIsBmpCallbackReceived:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTimeLaunchTabsRequested:J

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/L;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/L;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->loadThumbnailsToCache(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->launchMultiTabFinally()V

    return v3

    :cond_6
    :goto_0
    const-string p0, "launchMultiTabStackInternal failed : isTabRestoring() or tab null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public launchNewTabWithAnim(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    const-string v1, "si__MainViewMultiTab"

    if-nez v0, :cond_0

    const-string p0, "[launchNewTabWithAnim] null MultiTab"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isMultiTabAnimating()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p1, "[launchNewTabWithAnim] isMultiTabAnimating"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->setMultiTabNewTabSelected(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isMultiTabModeChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "[launchNewTabWithAnim] isMultiTabModeChanging"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->setMultiTabNewTabSelected(Z)V

    return-void

    :cond_2
    const-string v0, "[launchNewTabWithAnim] continue"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTab(ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->startOutroAnimation(Z)V

    return-void
.end method

.method public loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    return-object p0
.end method

.method public onCloseTabRequest(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->onCloseTabRequest(I)V

    return-void
.end method

.method public onMultiTabVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->keyword()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->onMultiTabVoiceRecognizerResult(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isMultiTabPopBackErrorOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->finishMultiTab()V

    :cond_0
    return-void
.end method

.method public onUnusedTabsClosed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->updateMultiTabView()V

    return-void
.end method

.method public onWindowFocusChanged(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->onWindowFocusChanged(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public openNewTabOnTabManager()V
    .locals 2

    const-string v0, "si__MainViewMultiTab"

    const-string v1, "[openNewTabOnTabManager]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->openNewTab()V

    :cond_0
    return-void
.end method

.method public reopenClosedTab()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->reopenClosedTab()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reopenClosedTab()I

    :goto_0
    return-void
.end method

.method public shouldShowMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->shouldShowMenu()Z

    move-result p0

    return p0
.end method

.method public showNoTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->showNoTabs()V

    :cond_0
    return-void
.end method

.method public updateMultiTabMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->mMultiTab:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->getViewType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->switchMode(Ljava/lang/String;)V

    return-void
.end method
