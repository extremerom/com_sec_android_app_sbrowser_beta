.class public Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;
.implements Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddToMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

.field private mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

.field private mContext:Landroid/content/Context;

.field private mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

.field private mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mPageUsesMyanmarUnicode:Z

.field private mSaLoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mTesting:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mPageUsesMyanmarUnicode:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance p3, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-direct {p3, p0, p1, p4, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-direct {p1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAddToMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    return-void
.end method

.method private handleNightModeMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f14067a

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    const v0, 0x7f080312

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v0, 0x7f140423

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    const v0, 0x7f080319

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    :goto_2
    return-void
.end method

.method private handleReadAloudMenu(Landroid/view/MenuItem;)V
    .locals 2

    const v0, 0x7f140083

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mContext:Landroid/content/Context;

    const v1, 0x7f0802cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isReadAloudAvailable()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method private handleReadHighlightsAloudMenu(Landroid/view/MenuItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isReadArticlesAloudAvailable()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->shouldShowEnabledReadArticlesAloudMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isBrowsingAssistAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f140088

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mContext:Landroid/content/Context;

    const v1, 0x7f080339

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method private handleSecretModeMenu(Landroid/view/MenuItem;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140867

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080346

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v1, 0x7f140868

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080347

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method private handleTemporarilyAllowAds(Landroid/view/MenuItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isTemporarilyAllowAdsAvailable()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getCurrentTemporarilyUnblockAds(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f140226

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    const v0, 0x7f08036b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const v0, 0x7f141096

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    const v0, 0x7f08036a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    :goto_0
    return-void
.end method

.method private handleUserAgentMenu(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/view/MenuItem;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUseDesktopUserAgent()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f140872

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    const v0, 0x7f080315

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const p1, 0x7f140873

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0802e5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isPcVersionAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    :goto_1
    return-void
.end method

.method private isMoreMenuItem(I)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->isMoreMenuItem(I)Z

    move-result p0

    return p0
.end method

.method private isOfflineMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedPageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSIXEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "about:blank"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public addBookmark(Z)Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v2, "si__AppMenu"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFocusedNodeEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const-string p0, "Shortcut to add bookmark is skipped, Editable node is focused"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isBookmarkAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addBookmark(Z)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "Shortcut to add bookmark is skipped, Add bookmark is not available"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public addQuickAccess()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAddToMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->addQuickAccess()V

    return-void
.end method

.method public addShortcut()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAddToMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->addShortcut()V

    return-void
.end method

.method public askExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->askExit()V

    return-void
.end method

.method public changeZoomValue(ZLandroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->changeZoomValue(ZLandroid/view/View;)V

    return-void
.end method

.method public dismissAiOptionPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->dismissAiOptionPopup()V

    return-void
.end method

.method public dismissMenuDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->dismissMenuDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->dismissTextSizeDialog()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAddToMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->dismissAddToDialog()V

    return-void
.end method

.method public dismissTextSizeDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->dismissTextSizeDialog()V

    return-void
.end method

.method public dismissToolsDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->dismissToolsDialog()V

    return-void
.end method

.method public dismissZoomDialog(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->dismissZoomDialog(Z)V

    return-void
.end method

.method public dismissZoomInfoBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->dismissZoomInfoBar()V

    return-void
.end method

.method public finishOrMoveTaskToBack()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->finishOrMoveTaskToBack()V

    return-void
.end method

.method public getAddToAvailable()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAddToMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getAddToAvailable()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getMainActivityDelegate()Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return-object p0
.end method

.method public getMoreMenuRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->getMoreMenuRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getOptionMenuBadgeCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isExtensionsVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b005d

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isMoreMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->createClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->getNewExtensionCount()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isSettingsAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0b0073

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isMoreMenuItem(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getSettingsBadgeCount()I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isNotificationsVisited()Z

    move-result p0

    if-nez p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mSaLoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    return-object p0
.end method

.method public getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public isAddBookmarkAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedPageUrl()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const-string p0, "si__AppMenu"

    const-string v1, "isAddBookmarkAvailable, tab == null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isBrowsingAssistAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeBrowsingAssist()Z

    move-result p0

    return p0
.end method

.method public isFindAvailable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isErrorPage()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "about:blank"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const-string p0, "si__AppMenu"

    const-string v0, "isFindAvailable, tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isNoTabInCurrentMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

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

.method public isPageUsesMyanmarUnicode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mPageUsesMyanmarUnicode:Z

    return p0
.end method

.method public isPcVersionAvailable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isOfflineMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isOfflineModePage()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const-string p0, "si__AppMenu"

    const-string v0, "isPcVersionAvailable, tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isPrintMenuAvailable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "si__AppMenu"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isPrintingDisabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "isPrintingDisabled"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isPdfWritingInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "isPdfWritingInProgress"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "about:blank"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    const-string p0, "isPrintAvailable, tab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isReadAloudAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeReadAloud()Z

    move-result p0

    return p0
.end method

.method public isReadArticlesAloudAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeReadArticlesAloud()Z

    move-result p0

    return p0
.end method

.method public isRefreshMenuAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const-string p0, "si__AppMenu"

    const-string v0, "isRefreshAvailable, tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isSettingsAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedPageUrl()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "si__AppMenu"

    const-string v1, "isSettingsAvailable, tab == null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isShareMenuAvailable()Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isOfflineModePage()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const-string p0, "si__AppMenu"

    const-string v0, "isShareMenuAvailable, tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSummaryAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeSummary()Z

    move-result p0

    return p0
.end method

.method public isTemporarilyAllowAdsAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    const/4 v1, 0x0

    const-string v2, "si__AppMenu"

    if-nez v0, :cond_0

    const-string p0, "isTemporarilyAllowAdsAvailable, mTabDelegate == null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isOfflineMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "isTemporarilyAllowAdsAvailable, unavailable url"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isZoomInOutAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const-string p0, "si__AppMenu"

    const-string v1, "isZoomInOutAvailable, tab == null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public launchExtensionsActivity()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->launchExtensionsActivity()V

    return-void
.end method

.method public launchSettingsActivity(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->launchSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method public notifyAiOptionStatusChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->notifyAiOptionStatusChanged(I)V

    return-void
.end method

.method public onAppMenuLongClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onAppMenuLongClick()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onForwardClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onForwardClicked()V

    return-void
.end method

.method public onHomeClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onHomeClicked()V

    return-void
.end method

.method public onMoreMenuClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onMore()V

    return-void
.end method

.method public onNewGuiStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onNewGuiStateChanged()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const-string v0, "onPrepareOptionsMenu"

    const-string v1, "si__AppMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "onPrepareOptionsMenu, tab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->updateMenuVisibility(Landroid/content/Context;Landroid/view/Menu;)V

    const v3, 0x7f0b050d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isFindAvailable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v3, 0x7f0b0e86

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isZoomInOutAvailable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v3, 0x7f0b08fe

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isPrintMenuAvailable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v3, 0x7f0b005b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v4

    :goto_1
    invoke-static {v3, v5}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v3, 0x7f0b005f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    xor-int/2addr v1, v4

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0b007b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0b0047

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoBack()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0b005e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoForward()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0b0074

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isShareMenuAvailable()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0b006f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isRefreshMenuAvailable()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0b0046

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getAddToAvailable()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    move v0, v4

    :cond_6
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b0055

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b0077

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isSummaryAvailable()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->shouldShowEnabledSummaryMenu(Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b006e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isReadArticlesAloudAvailable()Z

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->shouldShowEnabledReadArticlesAloudMenu(Z)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0b0050

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isBrowsingAssistAvailable()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0b0079

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->handleTemporarilyAllowAds(Landroid/view/MenuItem;)V

    :cond_7
    const v1, 0x7f0b006b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->handleNightModeMenu(Landroid/view/MenuItem;)V

    :cond_8
    const v1, 0x7f0b09f8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->handleUserAgentMenu(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/view/MenuItem;)V

    :cond_9
    const v1, 0x7f0b0072

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->handleSecretModeMenu(Landroid/view/MenuItem;)V

    :cond_a
    const v1, 0x7f0b006d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->handleReadAloudMenu(Landroid/view/MenuItem;)V

    :cond_b
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->handleReadHighlightsAloudMenu(Landroid/view/MenuItem;)V

    :cond_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isSupportMyanmarFont()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f0b07c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mPageUsesMyanmarUnicode:Z

    if-eqz v1, :cond_d

    const v1, 0x7f1407ba

    goto :goto_3

    :cond_d
    const v1, 0x7f1407b9

    :goto_3
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemTitle(Landroid/view/MenuItem;I)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mPageUsesMyanmarUnicode:Z

    if-eqz v1, :cond_e

    const v1, 0x7f08037f

    goto :goto_4

    :cond_e
    const v1, 0x7f080370

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_f
    const v0, 0x7f0b04f1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isSIXEnabled()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    return v4

    :cond_10
    :goto_5
    return v0
.end method

.method public onTemporarilyAllowAds()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onTemporarilyAllowAds()V

    return-void
.end method

.method public openSites(IZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->openSites(IZI)V

    return-void
.end method

.method public performMenuItem(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->performMenuItem(ILandroid/view/View;)Ljava/lang/String;

    return-void
.end method

.method public print()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->print()V

    return-void
.end method

.method public restoreZoomValueIfNeeded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->restoreZoomValueIfNeeded(Z)V

    return-void
.end method

.method public setPageUsesMyanmarUnicode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mPageUsesMyanmarUnicode:Z

    return-void
.end method

.method public setSaLoggingDelegate(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mSaLoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAddToMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-void
.end method

.method public setTesting(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    return-void
.end method

.method public setZoomValue(D)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mTesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->setZoomValue(D)V

    return-void
.end method

.method public shareVia(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->shareVia(Landroid/content/Intent;)V

    return-void
.end method

.method public shouldSupportReadArticleAloudMenuClickable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isBrowsingAssistAvailable()Z

    move-result p0

    return p0
.end method

.method public shouldSupportSummaryMenuClickable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isBrowsingAssistAvailable()Z

    move-result p0

    return p0
.end method

.method public showAddToDialog(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAddToMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->showAddToDialog(I)Z

    move-result p0

    return p0
.end method

.method public showZoomInOutPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->showZoomInOutPopup()V

    return-void
.end method

.method public startSitesActivity(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->mAppMenuHandler:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->startSitesActivity(IZI)V

    return-void
.end method
