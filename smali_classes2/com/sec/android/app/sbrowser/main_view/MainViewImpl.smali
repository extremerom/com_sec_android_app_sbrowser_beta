.class public abstract Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;
.super Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;
.source "SourceFile"


# instance fields
.field protected mIsPictureInPicture:Z

.field protected mIsTablet:Z

.field protected mNewTabAnimation:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;

.field private final mNightDimObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;

.field protected mTabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/F;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mNightDimObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;

    return-void
.end method

.method private createNewTabFromAssistIntent()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsAssistIntentOngoing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_ASSIST:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isSecretModeEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->setLoadedFromAssistIntent(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getHomePageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->onLaunchNewTabFromAssistIntent()V

    return-void
.end method

.method private destroySelectedTextIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    :cond_0
    return-void
.end method

.method private doNotUpdateToolbar(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->onWindowFocusChanged(Z)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->lambda$loadUrlWithNewTabInternal$1(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->lambda$launchNewTabWithTerrace$3(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->lambda$new$0()V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->lambda$launchNewTabWithTerrace$4(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->lambda$launchNewTabWithTerrace$2(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method

.method private initBitmapCacheIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->isBitmapCacheAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "si__MainViewImpl"

    const-string v1, "[initBitmapCacheIfNeeded]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->initializeBitmapCacheIfNeeded()V

    :cond_0
    return-void
.end method

.method private isSecretModePreferenceEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$launchNewTabWithTerrace$2(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$launchNewTabWithTerrace$3(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/H;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/main_view/H;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$launchNewTabWithTerrace$4(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsAnimating(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadUrlWithNewTabInternal$1(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x4

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private static synthetic lambda$new$0()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->shouldApplyNightDim()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getNightDimGain()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Night Dim] onNightDimChanged(). enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " gain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "si__MainViewImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setUseNightDim(ZI)V

    return-void
.end method

.method private loadUrlWithNewTabInternal(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 15

    move-object v6, p0

    move/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p8

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v5, "loadUrlWithNewTab : disable secret mode"

    const-string v7, "si__MainViewImpl"

    const/4 v8, 0x0

    if-ne v1, v4, :cond_2

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isSecretModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setSecretModeEnabled(Z)V

    :cond_0
    iget-object v4, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v11, 0x0

    const/4 v14, 0x4

    move-object v9, v7

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    invoke-interface/range {v9 .. v14}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->CREATE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    new-instance v9, Lcom/sec/android/app/sbrowser/main_view/G;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/G;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0, v9, v7}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    return-object v7

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isSecretModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setSecretModeEnabled(Z)V

    :cond_3
    iget-object v4, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->restoreWebStateContinuity(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v12, 0x4

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->reload()V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadStartedWithNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-object v0
.end method

.method private onWindowFocusChangedTabletLayout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onWindowFocusChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetParentalControlIfRequired(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->resetSettingsIfRequired(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "si__MainViewImpl"

    const-string p2, "remove ParentalControl history"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->stopLoading()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->goBack()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadHomePage()V

    :goto_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setRemoveParentalControlHistory()V

    :cond_2
    return-void
.end method

.method private setToolbarSwipe()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->initSwipeTabPaging()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->canSwipeTabPaging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->forceSettleIfNeeded()V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showNewGuiSelectionDialogIfneeded()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->showDialogIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    return-void
.end method

.method private showTabIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getWasRenderProcessGone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public applySecretModeStatus(ZLandroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifySecretModeChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifySecretModeChanged(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->applySecretModeStatus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->applySecretModeStatus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setNeedToSkipShowTab(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTabAfterModeChange(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->applySecretModeStatus(ZLandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->applySecretModeStatus(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldShowBottomBarShadow()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->applySecretModeStatus(Z)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsAssistIntentOngoing:Z

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isSecretModePreferenceEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateLocationBarForAssistIntent()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->onLaunchNewTabFromAssistIntent()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsAssistIntentOngoing:Z

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->applySecretModeStatus(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setLastClickedTime()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->dismissPopup()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->dismissAIViews(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->stopReadAloud()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->dismissMenuDialog()V

    return-void
.end method

.method public applySecureDataUnlockedStatus()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->applySecureDataUnlockedStatus()V

    return-void
.end method

.method public clearFocusUrlBar()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocusUrlBar()V

    return-void
.end method

.method public createNewTabAnim(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract dismissGroupNameDialog()V
.end method

.method public exitPictureInPictureController(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewMedia()Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->exitPictureInPictureController(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public finishEditMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->finishEditMode()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public finishMultiTabStack(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->finishMultiTabStack(Z)V

    return-void
.end method

.method public finishNoTabsFragment()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->finishNoTabsFragment()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->updateAssistantMenuIfNecessary()V

    return-void
.end method

.method public getContentLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mContentsLayout:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;

    return-object p0
.end method

.method public getHomePageUrl(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getHomePageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->supportGoogleNewTab()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->getCustomizedHomepage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMoreMenuRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getMoreMenuRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.end method

.method public abstract synthetic getReadAloudSupplierType()I
.end method

.method public getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-object p0
.end method

.method public bridge synthetic getTopMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getVisibleBottomMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleBottomMargin()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getVisibleTopMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result p0

    return p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewActivityResult:Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;->handleActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public handleNoTabsKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->handleNoTabsKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public handlePendingActivityResult()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewActivityResult:Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;->handlePendingActivityResult()V

    return-void
.end method

.method public hideAllPopups()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->dismissPopup()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->hideAllPopups()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->hideReaderOptionPopup()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->dismissGroupNameDialog()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->hideAllPopups()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissPopup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->dismissMenuDialog()V

    return-void
.end method

.method public inputUrlForSearch()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "si__MainViewImpl"

    const-string v0, "inputUrlForSearch, tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->finishFindOnPage()Z

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onInputUrl()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setFocusUrlBarForSearch()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->requestShowKeyboard()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->hideTopProgressBar()V

    return-void
.end method

.method public isCurrentTabNativePage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result p0

    return p0
.end method

.method public isCurrentTabUnifiedHomepage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result p0

    return p0
.end method

.method public isFindOnPageRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getFindOnPageToolbar()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullScreenForDisplayCutoutMode()Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "isFullScreenMode = "

    const-string v4, "si__MainViewImpl"

    invoke-static {v3, v4, v0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isFullScreenCutoutMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFullscreenVideoMode()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public isFullscreenMode()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewMedia()Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->isFullscreenMode()Z

    move-result p0

    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewMedia()Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->isFullscreenVideoMode()Z

    move-result p0

    return p0
.end method

.method public isLocationBarEditMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMainViewShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method public isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->isNoTabsShowing()Z

    move-result p0

    return p0
.end method

.method public launchHelpIntroIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->loggingForCountryDecision()V

    return-void
.end method

.method public launchNewTab(Z)V
    .locals 2

    const-string v0, "si__MainViewImpl"

    const-string v1, "[launchNewTab]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->launchNewTab(ZLjava/lang/String;)V

    return-void
.end method

.method public launchNewTab(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[launchNewTab] group:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mNewTabAnimation:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->createNewTabAnim(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mNewTabAnimation:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mIsTablet:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->showAnimation(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->finishEditMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->launchNewTab(ZLjava/lang/String;)V

    return-void
.end method

.method public launchNewTabFromAssistIntent()V
    .locals 2

    const-string v0, "si__MainViewImpl"

    const-string v1, "launchNewTabFromAssistIntent - ACTION_ASSIST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->closeMultiTabByNewIntent()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->getOrCreateInstance()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->dismissDialog()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsAssistIntentOngoing:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getHomePageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isSecretModePreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateLocationBarForAssistIntent()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->onLaunchNewTabFromAssistIntent()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsAssistIntentOngoing:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->createNewTabFromAssistIntent()V

    :goto_0
    return-void
.end method

.method public launchNewTabWithTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mParentTabForCreateContent:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTabWithTerrace(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsAnimating(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->CREATE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/H;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/sec/android/app/sbrowser/main_view/H;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/h;

    const/4 v3, 0x5

    invoke-direct {v0, v3, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    return-void
.end method

.method public loadContentPage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->loadContentPage()V

    return-void
.end method

.method public loadHomePage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->loadHomePage()V

    return-void
.end method

.method public loadHomePageNewTab(ZLjava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result v9

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadUrlWithNewTabInternal(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method public loadHomePageWithNewTab(ZLjava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result v9

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadUrlWithNewTabInternal(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method public loadStartedWithNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public loadUrlWithExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p3

    if-eq p1, p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->finishMultiTabStack(Z)V

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;ZI)V

    :cond_2
    return-void
.end method

.method public loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V
    .locals 9

    const-string v7, ""

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadUrlWithNewTabInternal(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method

.method public loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadUrlWithNewTabInternal(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method

.method public loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromIntent(Landroid/content/Intent;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isSecretModePreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const-string v0, "si__MainViewImpl"

    const-string v1, "loadUrlWithNewTab : disable secret mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setSecretModeEnabled(Z)V

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "com.sec.android.app.sbrowser.beta.unknown_app"

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, v1, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setAppAssociatedWith(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadHomePage()V

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    const/high16 v4, 0x8000000

    move-object v1, p3

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->createLoadUrlParamsForIntent(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    invoke-interface {p3, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->onLaunchNewTabFromExternalApp()V

    return-void
.end method

.method public loadUrlWithNewTabFromExternalApp(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public notifyMultiWindowModeChanged(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isGED()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getOptionMenuBadgeCount()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateOptionMenuBadgeVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFullScreenForDisplayCutoutMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isFullScreenNoCutout()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->dismissToolsDialog()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->notifyMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->onMultiWindowModeChanged(Z)V

    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewKeyEvent:Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->onBackPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->unregisterReceiver()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->unsetTimer()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->hideAllPopups()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->onDestroy()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewPreference:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->terminateExtensionService()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBitmapManager:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->onDestroy()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->unregisterListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mNightDimObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onLowMemory()V

    return-void
.end method

.method public onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInitialized:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->loggingForAppVersion()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->sendSALoggingForMainViewLaunchMode(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onNativeInitializationSuccess()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isContentDarkModeEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->setNightModeEnabled(Z)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->openInSecretModeIfRequired()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->setImmersiveMode()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mNightDimObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Executed:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "VerificationLog"

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ElapsedTime;->retrieve(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->requestUserAgent(Z)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabledInit()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->loggingForBookmarkBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->loggingForTabBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->loggingForColorPalette()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->loggingForCloud()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->registerReceiver()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->showNewGuiSelectionDialogIfneeded()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "si__MainViewImpl"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsResumed:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->destroySelectedTextIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->dismissToolsDialog()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onPause(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onPause()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->hideReaderOptionPopup()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->onPause()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->isDonationAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->getInstance()Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->donateTabs()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFindOnPageRunning()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mTabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_3
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabAnimationRunning:Z

    return-void
.end method

.method public onPenEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onPenEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onPopupMenuShown(Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl$2;->$SwitchMap$com$sec$android$app$sbrowser$common$model$PopupMenuType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->dismissContextMenu()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->hideAllPopups()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->dismissContextMenu()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissBookmarkBarPopup()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->hideAllPopups()V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissBookmarkBarPopup()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onPostInflation(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onPostInflation(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->updateTaskDescriptionIfNeeded()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onPostInflation()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->initialize(Landroid/app/Activity;)V

    return-void
.end method

.method public onProvideAssistContent()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v0

    const-string v1, ""

    const-string v2, "si__MainViewImpl"

    if-eqz v0, :cond_0

    const-string p0, "[onProvideAssistContent] multi tab showing"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "[onProvideAssistContent] currentTab is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "[onProvideAssistContent] currentTab is incognito"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "[onProvideAssistContent] currentTab is native page"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "[onProvideAssistContent] url is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->getScreenID(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "20200"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V

    return-void
.end method

.method public onReaderButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onReaderButtonClicked()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->onReaderButtonClicked()V

    return-void
.end method

.method public onReadyToCreateTab(Landroid/widget/FrameLayout;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsNativeInitialized:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->attachRenderViewIfNeeded(Landroid/widget/FrameLayout;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->onReadyToCreateTab(Ljava/lang/String;ZLandroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    const-string v0, "onResume"

    const-string v1, "si__MainViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsResumed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInstanceStateSaved:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeEnabled(Landroid/app/Activity;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isDesktopMode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isDesktopModeEnabled = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_0

    const-string v2, "DesktopMode is remained"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->resetDesktopMode()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_0

    const/16 v3, 0x23

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->configureBottombar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->initBitmapCacheIfNeeded()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeUnusedTabsIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateCutOutMarginsVisibilityIfNeeded()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewPreference:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isNativeInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isContentDarkModeEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->setNightModeEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getOptionMenuBadgeCount()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateOptionMenuBadgeVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSaLoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onResume()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->onResume()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->onResume()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->onResume()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->onResume()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onResume()V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateWindowMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->scrollToVisibleTab()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTabletLayout(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    :cond_5
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabBarVisibilityChanged:Z

    if-eqz v3, :cond_6

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabBarVisibilityChanged:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->forceCapture()V

    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsClearDisplayed:Z

    if-eqz v3, :cond_8

    const-string v3, "onResume - Clear Displayed, reload"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->enableHideToolbar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V

    :cond_7
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsClearDisplayed:Z

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->setToolbarSwipe()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->showCanNotApplyToastIfNeeded(Landroid/app/Activity;)V

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->sendUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->isDonationAvailable()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->getInstance()Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->removeTabs()V

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isNativeInitialized()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v4, "VerificationLog"

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/utils/ElapsedTime;->retrieve(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isSecretModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "Turn off secret mode under ParentalControl"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setSecretModeEnabled(Z)V

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabledInit()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->resetParentalControl()V

    :cond_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->sendSALogForDefaultBrowser()V

    return-void
.end method

.method public onSIXIconUpdated()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onSIXIconUpdated()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onSIXIconUpdated()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->onStart()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const-string v1, "si__MainViewImpl"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "toolbar visibiltity "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onStart()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onStart() Call notifyBackgroundColorChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldShowBottomBarShadow()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->onStart()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getTextScale()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "text size : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getTextScale()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->clearAllBitmapCache()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFindOnPageRunning()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->shouldTopBarShow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->shouldBottomBarShow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->onStop()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->restoreZoomValueIfNeeded(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onStop()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->onStop()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->onStop()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->onStop()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->storeSplashScreenIfNeeded(Landroid/widget/RelativeLayout;)V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onStop()V

    return-void
.end method

.method public onTabStateLoaded()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewMedia()Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->onTabStateLoaded()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->onTrimMemory(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onTrimMemory(I)V

    return-void
.end method

.method public onUnusedTabsClosed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->onUnusedTabsClosed()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "si__MainViewImpl"

    const-string p1, "onWindowFocusChanged, tab == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->onWindowFocusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onWindowFocusChanged()V

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->showTabIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->openInSecretModeIfRequired()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->showCanNotApplyToastIfNeeded(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->updateFullScreen()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isNoTabsShowing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getVisibleHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onToolbarOffsetChanged(Landroid/app/Activity;F)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->onWindowFocusChanged()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->sendUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->onWindowFocusChanged(Z)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->onWindowFocusChangedTabletLayout(Z)V

    return-void

    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->doNotUpdateToolbar(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsResumed:Z

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_7
    return-void
.end method

.method public openDownloadFile(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "File mimeType "

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v3, "si__MainViewImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const p1, 0x4000003

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startNonPopOverActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->openDownloadsPage(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public openSites(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->openSites(IZI)V

    return-void
.end method

.method public resetParentalControlPage(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->resetParentalControlIfRequired(ZZ)V

    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->stopDragging()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isGED()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isSearchWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "si__MainViewImpl"

    const-string p1, "Invalid touch event has occurred."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->sendTouchEvent(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocusIfRequired(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->sendTouchEvent(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isUrlDirectWritingSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportDirectWriting()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x4002

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->onPenEvent(Landroid/view/MotionEvent;)V

    :cond_7
    return v2
.end method

.method public setFullscreenImmersiveMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setForceVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableToolbarButtons(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onFullscreenImmersiveModeChanged(Z)V

    return-void
.end method

.method public setImmersiveMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->setImmersiveMode()V

    return-void
.end method

.method public setMediaSessionUrl(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewMedia()Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->setMediaSessionUrl(Landroid/content/Intent;)V

    return-void
.end method

.method public setNightModeEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[NIGHTMODE] setNightModeEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__MainViewImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setBackgroundColorToDefault()V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyThemeColorChanged()V

    return-void
.end method

.method public setSaveInstanceState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInstanceStateSaved:Z

    return-void
.end method

.method public abstract shouldBottomBarShow()Z
.end method

.method public shouldShowMenu()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->shouldShowMenu()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isNoTabsShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->isMenuContainerShowing()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isMenuContainerShowing()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getFindOnPage()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    return v1
.end method

.method public abstract shouldTopBarShow()Z
.end method

.method public showTabWithoutLoading(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->finishMultiTabStack(Z)V

    :cond_0
    return-void
.end method

.method public startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p2    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public talkBackChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onTalkBackStatusChanged(Z)V

    return-void
.end method

.method public updateTaskDescriptionIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isSecretModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f060293

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public updateToolbarButtons()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateToolbarButtons()V

    return-void
.end method
