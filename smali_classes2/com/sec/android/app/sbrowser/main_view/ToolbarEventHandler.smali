.class public Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LAUNCHING_MENU:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

.field private mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private mCloseAllTabsDialog:Lm/l;

.field private mContext:Landroid/content/Context;

.field private mHistoryNavigationController:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

.field private mLastClickedItem:I

.field private mLastClickedTime:J

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/HashSet;

    const v1, 0x7f0b005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v1, 0x7f0b005f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v1, 0x7f0b0070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v1, 0x7f0b0074

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v1, 0x7f0b0072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v1, 0x7f0b0057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v1, 0x7f0b005d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v1, 0x7f0b08fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v1, 0x7f0b0073

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v1, 0x7f0b004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v1, 0x7f0b0046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v1, 0x7f0b007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v1, 0x7f0b0e86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v1, 0x7f0b005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v1, 0x7f0b006b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->LAUNCHING_MENU:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedItem:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->lambda$onCloseAllTabs$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->lambda$onCloseAllTabs$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->lambda$createHistoryNavigation$0(IZI)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->lambda$onOrdinaryToolbarLongClicked$1(Z)V

    return-void
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getDelayTime()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method private getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getSALoggingConstantId(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const-string p0, "1064"

    goto :goto_0

    :sswitch_0
    const-string p0, "7721"

    goto :goto_0

    :sswitch_1
    const-string p0, "7716"

    goto :goto_0

    :sswitch_2
    const-string p0, "7722"

    goto :goto_0

    :sswitch_3
    const-string p0, "7729"

    goto :goto_0

    :sswitch_4
    const-string p0, "7712"

    goto :goto_0

    :sswitch_5
    const-string p0, "7714"

    goto :goto_0

    :sswitch_6
    const-string p0, "7709"

    goto :goto_0

    :sswitch_7
    const-string p0, "7717"

    goto :goto_0

    :sswitch_8
    const-string p0, "7707"

    goto :goto_0

    :sswitch_9
    const-string p0, "7703"

    goto :goto_0

    :sswitch_a
    const-string p0, "7706"

    goto :goto_0

    :sswitch_b
    const-string p0, "7705"

    goto :goto_0

    :sswitch_c
    const-string p0, "7708"

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0046 -> :sswitch_c
        0x7f0b005b -> :sswitch_b
        0x7f0b005f -> :sswitch_a
        0x7f0b006f -> :sswitch_9
        0x7f0b0070 -> :sswitch_8
        0x7f0b0073 -> :sswitch_7
        0x7f0b0074 -> :sswitch_6
        0x7f0b007b -> :sswitch_5
        0x7f0b050d -> :sswitch_4
        0x7f0b067b -> :sswitch_3
        0x7f0b07c3 -> :sswitch_2
        0x7f0b08fe -> :sswitch_1
        0x7f0b0e86 -> :sswitch_0
    .end sparse-switch
.end method

.method private getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    return-object p0
.end method

.method private getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private handleLongClickOnAdBlockersButton()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isTemporarilyUnblockAdsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerAppsInstalled(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x1020002

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f14037b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getNumOfSelectedPackageNameList(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f14037a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isTemporarilyAllowAdsAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f14035f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->onTemporarilyAllowAds()V

    :cond_5
    :goto_0
    return-void
.end method

.method private isExtensionActionItem(I)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionItemFromMenuId(I)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isToolbarMultipleClickAllowed(I)Z
    .locals 0

    const p0, 0x7f0b09f8

    if-eq p1, p0, :cond_1

    const p0, 0x7f0b0047

    if-eq p1, p0, :cond_1

    const p0, 0x7f0b005e

    if-eq p1, p0, :cond_1

    const p0, 0x7f0b006f

    if-eq p1, p0, :cond_1

    const p0, 0x7f0b0054

    if-ne p1, p0, :cond_0

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

.method private synthetic lambda$createHistoryNavigation$0(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->startSitesActivity(IZI)V

    return-void
.end method

.method private synthetic lambda$onCloseAllTabs$2(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->closeAllTabs()V

    return-void
.end method

.method private static synthetic lambda$onCloseAllTabs$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onOrdinaryToolbarLongClicked$1(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openBrowsingAssistSettings(Landroid/app/Activity;)V

    return-void
.end method

.method private launchSettingsActivity()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setApplySettingsValue(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.current_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0073

    const/16 v2, 0xa0

    invoke-static {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;ILandroid/content/Intent;I)V

    return-void
.end method

.method private needToPreventDoubleClick(I)Z
    .locals 0

    const p0, 0x7f0b0078

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onCloseAllTabs()Z
    .locals 13

    const-string v0, "si__ToolbarEventHandler"

    const-string v1, "onCloseAllTabs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    const-string v1, "7728"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->existLockedTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0b0054

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getButton(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->dismissCloseAllTabsDialog()V

    const v0, 0x7f140304

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v7, v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    const v0, 0x7f140308

    goto :goto_5

    :cond_4
    const v0, 0x7f140303

    goto :goto_5

    :cond_5
    if-eqz v2, :cond_6

    const v0, 0x7f140305

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/sec/android/app/sbrowser/main_view/k;

    const/4 v0, 0x3

    invoke-direct {v10, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/k;-><init>(ILjava/lang/Object;)V

    new-instance v12, Lcom/sec/android/app/sbrowser/main_view/e;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Lcom/sec/android/app/sbrowser/main_view/e;-><init>(I)V

    const v9, 0x7f1402f9

    const v11, 0x7f1402f7

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showConfirmDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mCloseAllTabsDialog:Lm/l;

    return v3
.end method

.method private onOrdinaryToolbarLongClicked(I)Z
    .locals 4

    const-string v0, "si__ToolbarEventHandler"

    const-string v1, "onOrdinaryToolbarLongClicked, Show customize toolbar setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->isExtensionActionItem(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getTitleFromMenuId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f140fb9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    const-string v1, "20007"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openTranslateSettings(Landroid/app/Activity;I)V

    return v2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openAddonSettings(Landroid/app/Activity;I)V

    return v2

    :cond_2
    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSALoggingConstantId(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openCustomizeMenuSettings(Landroid/app/Activity;)V

    goto/16 :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openWebpageViewandScroll(Landroid/app/Activity;)V

    const-string p1, "7713"

    goto/16 :goto_1

    :sswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openAdBlockerSettings(Landroid/app/Activity;)V

    const-string p1, "7700"

    goto/16 :goto_1

    :sswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openSummarizeSettings(Landroid/app/Activity;)V

    const-string p1, "20005"

    goto/16 :goto_1

    :sswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openSecretModeSettings(Landroid/app/Activity;)V

    const-string p1, "7704"

    goto/16 :goto_1

    :sswitch_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openAddressBarSearchSettings(Landroid/app/Activity;)V

    const-string p1, "7701"

    goto/16 :goto_1

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSALoggingConstantId(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openReadArticlesAloudSettings(Landroid/app/Activity;)V

    goto/16 :goto_1

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSALoggingConstantId(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openReadAloudSettings(Landroid/app/Activity;)V

    goto :goto_1

    :sswitch_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openDeleteBrowsingdata(Landroid/app/Activity;)V

    const-string p1, "7726"

    goto :goto_1

    :sswitch_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openDarkModeSettings(Landroid/app/Activity;)V

    const-string p1, "7710"

    goto :goto_1

    :sswitch_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchMultiTabStack()V

    const-string p1, "7702"

    goto :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->openAddonListInGalaxyStore()V

    const-string p1, "7715"

    goto :goto_1

    :sswitch_b
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->handleLongClickOnAdBlockersButton()V

    const-string p1, "7711"

    goto :goto_1

    :sswitch_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openClearDataWhenClosed(Landroid/app/Activity;)V

    const-string p1, "7723"

    goto :goto_1

    :sswitch_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->showBrowsingAssistDialogIfNeeded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "Browsing assist long click is blocked by ParentalControl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openReadAloudSettingsWithAccount(Landroid/app/Activity;)V

    return v2

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/g0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/g0;-><init>(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openBrowsingAssistSettings(Landroid/app/Activity;)V

    :goto_0
    const-string p1, "20003"

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f0b0050 -> :sswitch_d
        0x7f0b0055 -> :sswitch_c
        0x7f0b0057 -> :sswitch_b
        0x7f0b005d -> :sswitch_a
        0x7f0b006a -> :sswitch_9
        0x7f0b006b -> :sswitch_8
        0x7f0b006c -> :sswitch_7
        0x7f0b006d -> :sswitch_6
        0x7f0b006e -> :sswitch_5
        0x7f0b0071 -> :sswitch_4
        0x7f0b0072 -> :sswitch_3
        0x7f0b0077 -> :sswitch_2
        0x7f0b0079 -> :sswitch_1
        0x7f0b09f8 -> :sswitch_0
    .end sparse-switch
.end method

.method private showHistoryNavigation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mHistoryNavigationController:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->updateHistoryNaviAnchorView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mHistoryNavigationController:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->showPopup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method


# virtual methods
.method public createHistoryNavigation()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/g0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/main_view/g0;-><init>(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mHistoryNavigationController:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    return-void
.end method

.method public dismissCloseAllTabsDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mCloseAllTabsDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mCloseAllTabsDialog:Lm/l;

    :cond_0
    return-void
.end method

.method public onBackLongClicked()Z
    .locals 3

    const-string v0, "si__ToolbarEventHandler"

    const-string v1, "onBackLongClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    const-string v2, "1060"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->showHistoryNavigation(Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public onBookmarksLongClicked()Z
    .locals 2

    const-string v0, "si__ToolbarEventHandler"

    const-string v1, "onBookmarksLongClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    const-string v1, "1065"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->showAddToDialog(I)Z

    move-result p0

    return p0
.end method

.method public onForwardLongClicked()Z
    .locals 2

    const-string v0, "si__ToolbarEventHandler"

    const-string v1, "onForwardLongClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->showHistoryNavigation(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    const-string v1, "1061"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onHomeLongClicked()Z
    .locals 2

    const-string v0, "si__ToolbarEventHandler"

    const-string v1, "onHomeLongClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->inputUrl()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    const-string v0, "1062"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMoreMenuLongClicked()Z
    .locals 2

    const-string v0, "si__ToolbarEventHandler"

    const-string v1, "onMoreMenuLongClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    const-string v1, "1064"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->createListOfNewFeatures()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->launchSettingsActivity()V

    const/4 p0, 0x1

    return p0
.end method

.method public onTabsLongClicked()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "si__ToolbarEventHandler"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onTabsLongClicked failed - tab is restoring"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "onTabsLongClicked"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "onTabsLongClicked failed - current tab is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideVideoAssistant()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordTabsLongClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTab(ZLjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public openAddonListInGalaxyStore()V
    .locals 4

    const-string v0, "si__ToolbarEventHandler"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "samsungapps://CategoryList/0000005589"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openAddonListInGalaxyStore - exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "openAddonListInGalaxyStore - Galaxy store ActivityNotFound."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public performToolbarButtonClick(ILandroid/view/View;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "[CustomizeToolbar] performToolbarButtonClick"

    const-string v1, "si__ToolbarEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->isToolbarMultipleClickAllowed(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getDelayTime()I

    move-result v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedTime:J

    sub-long/2addr v3, v5

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->needToPreventDoubleClick(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedItem:I

    if-ne v0, p1, :cond_3

    const-string p0, "Prevent multiple click on the same toolbar button"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object v2, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->LAUNCHING_MENU:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Prevent click toolbar while launching any window "

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->clearFocusUrlBar()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedTime:J

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedItem:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->performMenuItem(ILandroid/view/View;)V

    return-void
.end method

.method public performToolbarButtonLongClick(I)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "[CustomizeToolbar] performToolbarButtonLongClick"

    const-string v2, "si__ToolbarEventHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedTime:J

    sub-long/2addr v3, v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->getDelayTime()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->LAUNCHING_MENU:Ljava/util/HashSet;

    iget v3, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Prevent long click toolbar while launching any window "

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->clearFocusUrlBar()V

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->onOrdinaryToolbarLongClicked(I)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->onTabsLongClicked()Z

    move-result p0

    return p0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->onMoreMenuLongClicked()Z

    move-result p0

    return p0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->onHomeLongClicked()Z

    move-result p0

    return p0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->onForwardLongClicked()Z

    move-result p0

    return p0

    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->onCloseAllTabs()Z

    move-result p0

    return p0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->onBookmarksLongClicked()Z

    move-result p0

    return p0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->onBackLongClicked()Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0047 -> :sswitch_6
        0x7f0b004f -> :sswitch_5
        0x7f0b0054 -> :sswitch_4
        0x7f0b005e -> :sswitch_3
        0x7f0b0060 -> :sswitch_2
        0x7f0b0069 -> :sswitch_1
        0x7f0b0078 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAppMenu(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    return-void
.end method

.method public setBottombar(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-void
.end method

.method public setLastClickedTime()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedTime:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mLastClickedTime:J

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public setToolbar(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-void
.end method

.method public updateHistoryNaviAnchorView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mHistoryNavigationController:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mHistoryNavigationController:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getForwardButton()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getBackwardButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->setAnchorView(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mHistoryNavigationController:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getForwardButton()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getForwardButton()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getBackwardButton()Landroid/view/View;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getBackwardButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->setAnchorView(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void
.end method
