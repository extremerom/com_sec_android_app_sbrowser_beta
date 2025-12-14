.class public Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

.field private mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

.field private mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

.field private mPrevDarkMode:Z

.field mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Lcom/sec/android/app/sbrowser/main_view/MainViewReader;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mPrevDarkMode:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->lambda$onBrowserPreferenceChanged$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->lambda$onBrowserPreferenceChanged$1()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method private changeLayoutMode()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->reloadMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarButtons()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarButtons()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setCompactModeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishFindOnPage()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->changeMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->changeMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldShowBottomBarShadow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateTabBarContainerVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateBookmarkBarContainerVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateToolbarSwipeLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateMainViewBookmark()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onLayoutModeChanged(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->detectArticleAndUpdateAiButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onLayoutModeChanged()V

    return-void
.end method

.method private changeReaderModeSupportState()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isReaderModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishFindOnPage()Z

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setReaderPageEnabled(ZZZZ)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    return-void
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getOptionMenuBadgeCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getOptionMenuBadgeCount()I

    move-result p0

    return p0
.end method

.method private getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private handleBadgePreferenceChanged(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "pref_add_ons_visited"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "extensions_has_contentblock_extension"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "extensions_get_more"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "extensions_has_new_fixed_extension"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_4
    const-string v3, "extensions_has_installed_extension"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v3, "more_menu_item_list"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "show_n_badge_notification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_7
    const-string v3, "tools_secondary_item_list"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_8
    const-string v3, "pref_video_assistant_visit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_9
    const-string v3, "pref_contents_push_visit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v2, v0

    goto :goto_0

    :sswitch_a
    const-string v3, "tools_primary_item_list"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getOptionMenuBadgeCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateOptionMenuBadgeVisibility(I)V

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x711a1d17 -> :sswitch_a
        -0x477135f1 -> :sswitch_9
        -0x33519036 -> :sswitch_8
        -0x2f551725 -> :sswitch_7
        -0x2c661486 -> :sswitch_6
        -0x28fc7a6c -> :sswitch_5
        -0x1c4efe96 -> :sswitch_4
        0xa684045 -> :sswitch_3
        0x4343a669 -> :sswitch_2
        0x502557c4 -> :sswitch_1
        0x69c413a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onBrowserPreferenceChanged$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateTabBarContainerVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateToolbarVisibility()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyThemeChanged()V

    return-void
.end method

.method private synthetic lambda$onBrowserPreferenceChanged$1()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateBookmarkBarContainerVisibility()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateToolbarVisibility()V

    return-void
.end method

.method private notifyBackForwardStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyBackForwardStatusChanged()V

    return-void
.end method

.method private onNewGuiStateChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeLayoutMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeToolbarList()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isQuickAccessNativePage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->initializePageViewIfNeeded(Z)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNewQuickAccessNativePage()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->onNewGuiStateChanged()V

    return-void
.end method

.method private updateBookmarkBarContainerVisibility()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->createBookmarkBarFolderIfNeeded(Landroid/app/Activity;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateBookmarkBarVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->initMainViewBookmark()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setBookmarkBarInterface()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyThemeChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyToolbarHeightChanged()V

    return-void
.end method

.method private updateMainViewBookmark()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateMainViewBookmark()V

    return-void
.end method

.method private updateScrollSyncState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->updateScrollSyncState()V

    :cond_0
    return-void
.end method

.method private updateStatusBarVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onBeforeStatusBarChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateFullScreen()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyStatusBarThemeColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyToolbarHeightChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onAfterStatusBarChanged()V

    return-void
.end method

.method private updateToolbarSwipeLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->canSwipeTabPaging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbarSwipe()Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->updateLayout()V

    :cond_0
    return-void
.end method

.method private updateZoomValueIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;D)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnly()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setZoomValue(D)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setZoomValue(D)V

    :cond_0
    return-void
.end method

.method private updateZoomValues()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->dismissZoomDialog(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getCommonZoomValueDex()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getCommonZoomValueMobile()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateZoomValueIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;D)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->saveState()V

    return-void
.end method


# virtual methods
.method public changeDesktopWebsite()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isDesktopWebsiteForDexEnabled()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isDesktopWebsiteEnabled()Z

    move-result v1

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v4

    if-ne v3, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3, v1, v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setUseDesktopUserAgent(ZZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->saveState()V

    return-void
.end method

.method public changeDesktopWebsiteForMultiFold()V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isDesktopWebsiteForDexEnabled()Z

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getDesktopWebsiteEnabledForMultiFold()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v1

    xor-int/2addr v1, v3

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setDesktopWebsiteEnabled(Z)V

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v6

    if-ne v5, v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    invoke-interface {v5, v1, v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setUseDesktopUserAgent(ZZ)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->saveState()V

    return-void
.end method

.method public changeHideStatusBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateStatusBarVisibility()V

    :cond_0
    return-void
.end method

.method public changeHighContrastMode()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mPrevDarkMode:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mPrevDarkMode:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    const-string v0, "si__MainViewPreference"

    const-string v1, "[NIGHTMODE] PREF_HIGH_CONTRAST_MODE changed, recreate MainActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyStatusBarThemeColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyLetterBoxColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldShowBottomBarShadow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onHighContrastModeChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onHighContrastModeChanged()V

    return-void
.end method

.method public changeToolbarList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarButtons()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getOptionMenuBadgeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateOptionMenuBadgeVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->notifyBackForwardStatusChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarButtons()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getOptionMenuBadgeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateOptionMenuBadgeVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateToolbarSwipeLayout()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateHistoryNaviAnchorView()V

    return-void
.end method

.method public changeWebSiteDarkMode()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_0
    return-void
.end method

.method public changedContentDarkMode()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setNightModeEnabled(Z)V

    if-eqz v0, :cond_0

    const-string v0, "3"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    const-string v1, "201"

    const-string v2, "2462"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->onNightModeChanged()V

    return-void
.end method

.method public loadFactoryResetUrl()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isFirstLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->firstPageFinished()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0xb

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "[onBrowserPreferenceChanged] key : "

    const-string v6, "si__MainViewPreference"

    invoke-static {v5, p1, v6}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->handleBadgePreferenceChanged(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x12c

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v9, "show_tab_bar_setting_switch"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x2c

    goto/16 :goto_0

    :sswitch_1
    const-string v9, "pref_multi_tab_mode"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_2
    const-string v9, "pref_use_system_font"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_3
    const-string v9, "pref_summarize"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_4
    const-string v9, "pref_address_bar_layout"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_5
    const-string v9, "pref_manage_dark_mode_system_default"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_6
    const-string v9, "pref_reader_mode_text_scale"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_7
    const-string v9, "toolbar_r_item"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_8
    const-string v9, "pref_read_articles_aloud"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_9
    const-string v9, "toolbar_l_item"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_a
    const-string v9, "pref_browsing_assist"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_b
    const-string v9, "pref_night_mode"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_c
    const-string v9, "show_bookmark_bar_setting_for_dex"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_d
    const-string v9, "pref_high_contrast_mode"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_e
    const-string v9, "pref_focus_layout_type"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_f
    const-string v9, "pref_reader_mode_theme"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_10
    const-string v9, "pref_support_reader_mode"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_11
    const-string v9, "show_tab_bar_setting"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_12
    const-string v9, "PREF_COMMON_ZOOM_VALUE_DEX"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_13
    const-string v9, "standard_toolbar_r_item"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_14
    const-string v9, "pref_desktop_website_for_dex"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_15
    const-string v9, "standard_toolbar_l_item"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_16
    const-string v9, "pref_fix_toolbar"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v9, "pref_desktop_website"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_18
    const-string v9, "pref_hide_status_bar"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_19
    const-string v9, "pref_desktop_website_for_multi_fold"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_1a
    const-string v9, "pref_apply_default_dark_mode"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_1b
    const-string v9, "pref_reader_mode_theme_dark"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_1c
    const-string v9, "factoryreset_url"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_1d
    const-string v9, "pref_trans_split_scroll_sync"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_1e
    const-string v9, "pref_block_deeplink"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_1f
    const-string v9, "pref_new_video_assist"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_20
    const-string v9, "pref_content_dark_mode"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_21
    const-string v9, "show_bookmark_bar_setting_for_normal"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_0

    :cond_22
    move v5, v0

    goto/16 :goto_0

    :sswitch_22
    const-string v9, "enable_content_blocker_for_china_ged"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_0

    :cond_23
    move v5, v1

    goto/16 :goto_0

    :sswitch_23
    const-string v9, "new_toolbar_r_item"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_24
    const-string v9, "pref_layout_one_bar_type"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_25
    const-string v9, "new_toolbar_l_item"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_0

    :cond_26
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_26
    const-string v9, "support_content_blocker"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_0

    :cond_27
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_27
    const-string v9, "PREF_COMMON_ZOOM_VALUE_MOBILE"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_0

    :cond_28
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_28
    const-string v9, "pref_background_play"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_0

    :cond_29
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_29
    const-string v9, "compact_toolbar_r_item"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_2a
    const-string v9, "compact_toolbar_l_item"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_0

    :cond_2b
    move v5, v2

    goto :goto_0

    :sswitch_2b
    const-string v9, "pref_use_updated_samsung_internet"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_0

    :cond_2c
    move v5, v3

    goto :goto_0

    :sswitch_2c
    const-string v9, "enable_content_blocker"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_0

    :cond_2d
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->updateMultiTabMode()V

    goto/16 :goto_3

    :pswitch_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    instance-of v2, p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const-wide/16 v3, 0x96

    if-eqz v2, :cond_2e

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/android/app/sbrowser/main_view/b;

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v5, v1, p1}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2e
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/android/app/sbrowser/main_view/b;

    invoke-direct {v5, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->dismissSummarizedView(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->detectArticleAndUpdateAiButton(Z)V

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateLayout(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_3

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->notifyFontScaleChanged()V

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->updateReadAloudStatus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->detectArticleAndUpdateAiButton(Z)V

    goto/16 :goto_3

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->detectArticleAndUpdateAiButton(Z)V

    goto/16 :goto_3

    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mPrevDarkMode:Z

    if-eq v0, p1, :cond_30

    const-string v0, "[NIGHTMODE] recreate MainActivity"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mPrevDarkMode:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeHighContrastMode()V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeReaderModeSupportState()V

    goto/16 :goto_3

    :pswitch_a
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/P;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/sbrowser/main_view/P;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;I)V

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :pswitch_b
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onFixToolbarSettingChanged()V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeDesktopWebsite()V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeHideStatusBar()V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeDesktopWebsiteForMultiFold()V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeWebSiteDarkMode()V

    goto/16 :goto_3

    :pswitch_10
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->notifyReaderThemeChanged()V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->loadFactoryResetUrl()V

    goto/16 :goto_3

    :pswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateScrollSyncState()V

    goto/16 :goto_3

    :pswitch_13
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateVideoAssistantVisibility()V

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changedContentDarkMode()V

    goto :goto_3

    :pswitch_16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/P;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/P;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;I)V

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :pswitch_17
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->reloadMenu()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarButtons()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarButtons()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setCompactModeEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeLayoutMode()V

    goto :goto_3

    :pswitch_18
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->updateZoomValues()V

    goto :goto_3

    :pswitch_19
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getBackgroundPlay()I

    move-result p1

    if-ne p1, v2, :cond_2f

    goto :goto_2

    :cond_2f
    if-ne p1, v3, :cond_30

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isWiredHeadSetOn()Z

    move-result p1

    if-nez p1, :cond_30

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isBluetoothAudioDeviceConnected()Z

    move-result p1

    if-nez p1, :cond_30

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->stopMediaSession(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->stopMediaSession(Z)V

    goto :goto_3

    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeToolbarList()V

    goto :goto_3

    :pswitch_1b
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->onNewGuiStateChanged()V

    goto :goto_3

    :pswitch_1c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onContentBlockerStateChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onContentBlockerStateChanged()V

    :cond_30
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7662b688 -> :sswitch_2c
        -0x74b09ac2 -> :sswitch_2b
        -0x70bc9f1a -> :sswitch_2a
        -0x667f8b60 -> :sswitch_29
        -0x5eb1b277 -> :sswitch_28
        -0x4ee78e7c -> :sswitch_27
        -0x470b743c -> :sswitch_26
        -0x45c77737 -> :sswitch_25
        -0x404d2788 -> :sswitch_24
        -0x3b8a637d -> :sswitch_23
        -0x3ac2c61f -> :sswitch_22
        -0x395e9601 -> :sswitch_21
        -0x3549ae96 -> :sswitch_20
        -0x2f283678 -> :sswitch_1f
        -0x2ab08c0c -> :sswitch_1e
        -0x28a088cb -> :sswitch_1d
        -0x145fd34b -> :sswitch_1c
        -0x11228198 -> :sswitch_1b
        -0x50e345f -> :sswitch_1a
        -0x4a69640 -> :sswitch_19
        -0x3e980b9 -> :sswitch_18
        -0x3af72a4 -> :sswitch_17
        0x115bd35 -> :sswitch_16
        0x68a960c -> :sswitch_15
        0xa33cbbe -> :sswitch_14
        0x10c7a9c6 -> :sswitch_13
        0x122e1655 -> :sswitch_12
        0x18966b38 -> :sswitch_11
        0x1c92fb13 -> :sswitch_10
        0x1e8d6a0d -> :sswitch_f
        0x21524f2c -> :sswitch_e
        0x2736507f -> :sswitch_d
        0x2933adff -> :sswitch_c
        0x2c3b6d06 -> :sswitch_b
        0x2f8e6ac5 -> :sswitch_a
        0x3d4a384a -> :sswitch_9
        0x4697385e -> :sswitch_8
        0x47874c04 -> :sswitch_7
        0x50ee71f4 -> :sswitch_6
        0x51bd3b82 -> :sswitch_5
        0x5b447d9d -> :sswitch_4
        0x6512b625 -> :sswitch_3
        0x740bbb8b -> :sswitch_2
        0x7466b5ef -> :sswitch_1
        0x7618ba1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1c
        :pswitch_1a
        :pswitch_17
        :pswitch_1a
        :pswitch_1c
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_1a
        :pswitch_c
        :pswitch_1a
        :pswitch_18
        :pswitch_a
        :pswitch_9
        :pswitch_10
        :pswitch_17
        :pswitch_8
        :pswitch_16
        :pswitch_7
        :pswitch_6
        :pswitch_1a
        :pswitch_5
        :pswitch_1a
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public setMultiTab(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    return-void
.end method

.method public updateOptionMenuBadgeVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateOptionMenuBadgeVisibility(I)V

    return-void
.end method

.method public updateVideoAssistantVisibility()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->onVideoAssistantEnabledChanged()V

    return-void
.end method
