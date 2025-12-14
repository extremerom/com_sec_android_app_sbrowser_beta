.class public Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;
.super Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;
.source "SourceFile"


# instance fields
.field private mAiOptionPopupController:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

.field protected mCloseTabDialog:Lm/l;

.field private mMenuSettingsHelper:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onBrowsingAssistClicked$12(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onCloseInternetClicked$0()V

    return-void
.end method

.method private clearAllPermissionSettings()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchAllPreferences()V

    return-void
.end method

.method private createAiOptionPopupController(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mAiOptionPopupController:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/homepage/a;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mAiOptionPopupController:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mAiOptionPopupController:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->setAnchorView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mAiOptionPopupController:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->showPopup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->initMainViewTabClickListener()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onReadHighlightsAloudClicked$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onSummaryClicked$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$runReadAloudInAwesomeIntelligence$6(Z)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onCloseCurrentTab$1(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private getMenuSettingsHelper()Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mMenuSettingsHelper:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mMenuSettingsHelper:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mMenuSettingsHelper:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onSummaryClicked$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onReadHighlightsAloudClicked$11(Ljava/lang/String;Z)V

    return-void
.end method

.method private isNoTabInCurrentMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->isNoTabInCurrentMode()Z

    move-result p0

    return p0
.end method

.method private isSIXEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    return v1
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onBrowsingAssistClicked$13(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onReadHighlightsAloudClicked$8(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic l()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$createAiOptionPopupController$15()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$createAiOptionPopupController$15()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getModeImpl()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$onBrowsingAssistClicked$12(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Z)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->enableAiButton()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->createAiOptionPopupController(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    return-void
.end method

.method private synthetic lambda$onBrowsingAssistClicked$13(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->detectArticleAndUpdateAiButton(ZZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/g;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->createAiOptionPopupController(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBrowsingAssistClicked$14(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Z)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v1, LJ8/d;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_1

    const-string p2, "ON"

    goto :goto_0

    :cond_1
    const-string p2, "OFF"

    :goto_0
    const-string p3, "Result"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p2, "20120"

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p2, "20000"

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$onCloseCurrentTab$1(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private lambda$onCloseInternetClicked$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/b;->a:LS3/p;

    iget-object p0, p0, LS3/p;->f:LS3/o;

    invoke-virtual {p0}, LS3/o;->a()LU3/a;

    move-result-object p0

    invoke-interface {p0}, LU3/a;->clear()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on a background thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$onReadHighlightsAloudClicked$10(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showReadArticlesAloudPopupWindow(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReadHighlightsAloudClicked$11(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/e;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/e;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onReadHighlightsAloudClicked$8(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showReadArticlesAloudPopupWindow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onReadHighlightsAloudClicked$9(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/f;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    return-void
.end method

.method private synthetic lambda$onSummaryClicked$2(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showSummarizePopupWindow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSummaryClicked$3(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/f;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/f;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    return-void
.end method

.method private synthetic lambda$onSummaryClicked$4(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showSummarizePopupWindow(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSummaryClicked$5(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/e;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/e;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$runReadAloud$7()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    const-string v0, "20032"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showReadAloudPopupWindow(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$runReadAloudInAwesomeIntelligence$6(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->runReadAloud()V

    :cond_1
    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$runReadAloud$7()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onReadHighlightsAloudClicked$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onSummaryClicked$5(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onBrowsingAssistClicked$14(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Z)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->lambda$onSummaryClicked$2(Ljava/lang/String;Z)V

    return-void
.end method

.method private reloadWithoutContentBlocker(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->isNoTabInCurrentMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getCurrentContentBlockTabContext()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setTemporarilyUnblockAds(JZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->putCurrentTemporarilyUnblockAds(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    :cond_1
    :goto_0
    return-void
.end method

.method private runReadAloud()V
    .locals 3

    const-string v0, "AppMenuHidden"

    const-string v1, "continueReadAloudClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runReadAloudInAwesomeIntelligence()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/b;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    return-void
.end method


# virtual methods
.method public dismissAiOptionPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mAiOptionPopupController:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->dismissPopup()V

    :cond_0
    return-void
.end method

.method public dismissCloseTabDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mCloseTabDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mCloseTabDialog:Lm/l;

    :cond_0
    return-void
.end method

.method public doFinish(Z)V
    .locals 2

    const-string v0, "doFinish, closeAllTabs = "

    const-string v1, "AppMenuHidden"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setInitialized(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->closeAllTabs()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public launchExtensionsActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->getMenuSettingsHelper()Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->launchExtensionsActivity()V

    return-void
.end method

.method public notifyAiOptionStatusChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mAiOptionPopupController:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->notifyAiOptionStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public onBrowsingAssistClicked(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBrowsingAssistClicked, AI version : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->getConfigAiVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppMenuHidden"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistAnimationCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistAnimationCount(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/g;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;I)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    return-void
.end method

.method public onCloseCurrentTab()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->dismissCloseTabDialog()V

    new-instance v2, Lm/k;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const v4, 0x7f1502e8

    invoke-direct {v2, v3, v4}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const v4, 0x7f14030a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lm/k;->a:Lm/h;

    iput-object v3, v4, Lm/h;->f:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const v4, 0x7f1402f9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/auth/f;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v1, v0}, Lcom/sec/android/app/sbrowser/auth/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mCloseTabDialog:Lm/l;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const v3, 0x7f0b0054

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMenuPopupAnchorView(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->mCloseTabDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "AppMenuHidden"

    const-string v0, "currentTab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCloseInternetClicked()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateAssistantMenuIfNecessary()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionEnabled()Z

    move-result v0

    const-string v1, "AppMenuHidden"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionHistoryEnabled()Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionCacheEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionCookieEnabled()Z

    move-result v5

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-eqz v5, :cond_2

    :cond_0
    if-eqz v5, :cond_1

    const-string v2, "[onCloseInternetClicked] Delete Cookie"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->clearAllPermissionSettings()V

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    move v4, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z

    if-eqz v0, :cond_2

    const-string v0, "[onCloseInternetClicked] Clear cache"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/d;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionAllTabsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[onCloseInternetClicked] Close all tabs"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "onCloseInternetClicked, isInLockTaskMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->closeAllTabs()V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->finishOrMoveTaskToBack()V

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->doFinish(Z)V

    return-void
.end method

.method public onExtensionsItemClicked(ILandroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->isSIXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getTitleFromMenuId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const v2, 0x7f140fb9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20006"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->getMenuSettingsHelper()Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->onExtensionsItemClicked(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;ILandroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    return-void
.end method

.method public onNewTabClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AppMenuHidden"

    const-string v0, "onNewTabClicked failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTab(ZLjava/lang/String;)V

    return-void
.end method

.method public onReadAloudClicked()V
    .locals 2

    const-string v0, "AppMenuHidden"

    const-string v1, "onReadAloudClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->runReadAloudInAwesomeIntelligence()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->runReadAloud()V

    return-void
.end method

.method public onReadHighlightsAloudClicked()V
    .locals 4

    const-string v0, "AppMenuHidden"

    const-string v1, "onReadHighlightsAloudClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->showBrowsingAssistDialogIfNeeded(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ReadAloud is blocked by ParentalControl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "20079"

    goto :goto_0

    :cond_1
    const-string v0, "20033"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/f;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/f;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V

    const/4 p0, 0x1

    invoke-static {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->showReconnectToOnlinePopup(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->isReaderProgressDialogVisible()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "AppMenuHidden"

    const-string p1, "onRefreshClick, tab is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public onSearchClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->inputUrlForSearch()V

    return-void
.end method

.method public onSecretMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->toggleSecretMode()V

    return-void
.end method

.method public onSummaryClicked()V
    .locals 4

    const-string v0, "AppMenuHidden"

    const-string v1, "onSummaryClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->showBrowsingAssistDialogIfNeeded(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Summary is blocked by ParentalControl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "20077"

    goto :goto_0

    :cond_1
    const-string v0, "20053"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/f;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/f;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V

    const/4 p0, 0x1

    invoke-static {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    return-void
.end method

.method public onTemporarilyAllowAds()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getCurrentTemporarilyUnblockAds(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getCurrentContentBlockTabContext()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setTemporarilyUnblockAds(JZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->removeCurrentTemporarilyUnblockAds(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const v4, 0x7f14035e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->reloadWithoutContentBlocker(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const v4, 0x7f14038f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method
