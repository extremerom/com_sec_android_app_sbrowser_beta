.class public Lcom/sec/android/app/sbrowser/main_view/IntentHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsLaunchFromMain:Z

.field private mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field private mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mPendingNewIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleNoUrlIntent$1(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleIntent$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleIntent$7(Landroid/content/Intent;)V

    return-void
.end method

.method private closeMultiTabByNewIntent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->closeMultiTabByNewIntent()V

    return-void
.end method

.method private createNewTabIfNeeded(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->shouldLaunchNewContentPage()Z

    move-result v0

    const-string v1, "si__IntentHandler"

    if-eqz v0, :cond_0

    const-string v0, "[createNewTabIfNeeded] create content page"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadContentPage()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[createNewTabIfNeeded] create home page"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadHomePage()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "[createNewTabIfNeeded] set current tab if needed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentIndex(Z)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleNoUrlIntent$0(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    return-void
.end method

.method private disableSecretModeIfNeeded(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->checkUseSecretMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModePreferenceEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldOpenLinksInSecretMode(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 p2, 0x0

    if-eqz p4, :cond_4

    const-string p3, "isGear"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "com.sec.android.app.sbrowser.beta_SEARCH_WIDGET_LAUNCH_MAIN_VIEW"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "shouldNotIgnore"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setSecretModeEnabled(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleIntent$9(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleNewSecretTabShortcut()V

    return-void
.end method

.method private finishNoTabsFragment()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishNoTabsFragment()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleIntent$4(Landroid/content/Intent;)V

    return-void
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getLastFocusedActivity()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getFocusedActivity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private getUrlFromIntentForMultiTab(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object p0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleIntent$8(Landroid/content/Intent;)V

    return-void
.end method

.method private handleBixbyIntent(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->handleBixbyIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private handleIntentForExternalApp(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "si__IntentHandler"

    const-string v1, "[handleIntentForExternalApp]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private handleIntentForMultiTab(Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->updateIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.sbrowser.beta.INTENT_CLOSE_ALL_TABS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.sec.android.app.sbrowser.beta.INTENT_CLOSE_CURRENT_TAB"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isNoTabsShowing()Z

    move-result v0

    const-string v1, "si__IntentHandler"

    if-eqz v0, :cond_2

    const-string v0, "[handleIntentForMultiTab] Finish no tabs fragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->finishNoTabsFragment()V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_NEW_TAB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_TABS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_TURN_ON_SECRET_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getUrlFromIntentForMultiTab(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.sec.android.app.sbrowser.INTENT_NEW_TAB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.samsung.android.intent.action.VIEW_BOOKMARKS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_ACCESS_WEBSITE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_SEARCH_KEYWORD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.samsung.android.intent.action.OPEN_NEW_TAB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.samsung.android.intent.action.OPEN_NEW_SECRET_TAB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.samsung.android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p1, "[handleIntentForMultiTab] Close multi tab"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->closeMultiTabByNewIntent()V

    :cond_6
    return-void

    :cond_7
    :goto_0
    const-string p0, "[handleIntentForMultiTab] Do not close multi tab"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method

.method private handleIntentForSamePackage(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 7

    const-string p0, "si__IntentHandler"

    const-string v0, "handleIntent, same package"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    const/high16 v4, 0x8000000

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->createLoadUrlParamsForIntent(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    return-void
.end method

.method private handleIntentInternal(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getAppIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "com.sec.android.app.sbrowser.beta.INTENT_ACTION_INTERNAL_LOADING"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v3

    :goto_0
    move v9, v3

    goto :goto_1

    :cond_1
    const-string v3, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    :goto_1
    const-string v3, "extra_no_network_notification"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, p1, v1, v2, v9}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->disableSecretModeIfNeeded(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->shouldOpenUrlInExistingTab(Landroid/content/Intent;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleIntent, existingTab = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "si__IntentHandler"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v3, :cond_3

    const-string v3, "201"

    const-string v5, "6251"

    invoke-static {v3, v5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    const-string v3, "#:~:text="

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isLocationBarEditMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishEditMode()V

    :cond_5
    const-string v3, "should_show_in_new_tab"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string p2, "handleIntent, shouldShowInNewTab"

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleIntentForExternalApp(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_8

    const-string v0, "handleIntent, existingTab != null"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "show_tab_without_loading"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p2, "handleIntent, intent from finder donation"

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p2, v1, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->showTabWithoutLoading(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v1, "handleIntent, existingTab == null"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isHandlingWindowByUserGesture(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "handleIntent, content to window or open in other window"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    sget-object v10, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v6, p2

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->needToLoadWithNewTab(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    sget-object v10, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    goto :goto_3

    :cond_a
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isIntentFromSamePackage(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleIntentForSamePackage(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleIntentForExternalApp(Ljava/lang/String;Landroid/content/Intent;)V

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->notifyIntentHandled(Landroid/content/Intent;)V

    return-void
.end method

.method private handleNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "si__IntentHandler"

    const-string v1, "CMI: handleNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->changeExternalIntentAsView(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mPendingNewIntent:Landroid/content/Intent;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->launchHelpIntroIfNeeded()Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleIntentForMultiTab(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->closeDialogIfNecessary()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private handleNewSecretTabShortcut()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->checkUseSecretMode()Z

    move-result v0

    const-string v1, "si__IntentHandler"

    if-eqz v0, :cond_1

    const-string v0, "[handleNewSecretTabShortcut] cannot use secret mode : Return!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140891

    goto :goto_0

    :cond_0
    const v0, 0x7f141090

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->showSnackBar(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[handleNewSecretTabShortcut] need to confirm secret mode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f140454

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->showSnackBar(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageForSecretMode()Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v0, "[handleNewSecretTabShortcut] open secret mode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->openInSecretMode(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->createNewTabIfNeeded(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    :goto_1
    return-void
.end method

.method private handleNewTabShortcut()V
    .locals 9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v0

    const-string v1, "si__IntentHandler"

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModePreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[handleNewTabShortcut] disable secret mode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setSecretModeEnabled(Z)V

    :cond_1
    const-string v0, "[handleNewTabShortcut] launch new tab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void
.end method

.method private handleNoUrlIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "si__IntentHandler"

    const-string v1, "handleIntent, url == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mIsLaunchFromMain:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/m;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/m;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_CLOSE_ALL_TABS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_TABS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_NEW_TAB"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.INTENT_CLOSE_CURRENT_TAB"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/h;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isHelpIntroRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const-string v0, "launch_addons"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->ADDONS:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->startActivityWithPostDelay(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V

    goto :goto_2

    :cond_5
    const-string v0, "host"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "settings_appearance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p1, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_APPEARANCE:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->startActivityWithPostDelay(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V

    goto :goto_2

    :cond_6
    const-string v1, "settings_privacy"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p1, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_PRIVACY:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->startActivityWithPostDelay(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V

    goto :goto_2

    :cond_7
    const-string v1, "browsing_assist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_ASSIST:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->startActivityWithPostDelay(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private handleSearchShortcut()V
    .locals 2

    const-string v0, "si__IntentHandler"

    const-string v1, "[handleSearchShortcut]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabFromAssistIntent()V

    return-void
.end method

.method private handleShortcutIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->supportShortcut(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.intent.action.OPEN_NEW_TAB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleNewTabShortcut()V

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.android.intent.action.OPEN_NEW_SECRET_TAB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/l;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleNewSecretTabShortcut()V

    goto :goto_0

    :cond_3
    const-string v0, "com.samsung.android.intent.action.SEARCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleSearchShortcut()V

    goto :goto_0

    :cond_4
    const-string v0, "com.samsung.android.intent.action.VIEW_BOOKMARKS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleShowBookmarksShortcut()V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleShowBookmarksShortcut()V
    .locals 3

    const-string v0, "si__IntentHandler"

    const-string v1, "[handleShowBookmarksShortcut]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    const/4 v1, 0x0

    const v2, 0x7f0b004f

    invoke-interface {v0, v1, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openSites(IZI)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->createNewTabIfNeeded(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    return-void
.end method

.method private handleTabTearingIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    const-string v1, "tab_button_drag_item_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "tab_button_drag_item_instance"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByTaskId(I)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->setTabId(Landroid/content/Intent;I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->getInstance()Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;

    move-result-object v2

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->add(ILcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->removeTabFromInstance(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabTearingFinished()V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->clearTopLevelNativeWindow()V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->removeOnDragListener()V

    :cond_3
    const-string v0, "org.chromium.chrome.browser.window_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceUtil;->handleTabTearingIntent(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$startActivityWithPostDelay$2(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V

    return-void
.end method

.method private isAllowedReferrer()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.app.galaxyfinder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isExtraCreateNewTab(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "create_new_tab"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isExtraWebPage(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "WEBPAGE"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isHandlingWindowByUserGesture(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "terrace-image-or-link-drag-label"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.intent.extra.OTHER_WINDOW"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isHelpIntroRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isHelpIntroRunning()Z

    move-result p0

    return p0
.end method

.method private isIntentFromSamePackage(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.android.ext.services"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method private isMultiWindowMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method private isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private isSecretModePreferenceEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result p0

    return p0
.end method

.method private isTabTearingIntent(Landroid/content/Intent;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "tab_button_drag_item_id"

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v2, "tab_button_drag_item_instance"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p0, v1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleIntent$6(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->lambda$handleIntent$5(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method private synthetic lambda$handleIntent$3()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTabFromExternalApp(ZZ)V

    return-void
.end method

.method private synthetic lambda$handleIntent$4(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "about:blank"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleIntent, INTENT_READ_ARTICLES_ALOUD - url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__IntentHandler"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->launchReadArticlesAloudByExternal(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$5(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleShortcutIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$6(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->shouldLaunchNewContentPage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setMediaSessionUrl(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->createNewTabIfNeeded(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$handleIntent$7(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleBixbyIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$8(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleTabTearingIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$9(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleIntentInternal(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleNoUrlIntent$0(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->createNewTabIfNeeded(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    return-void
.end method

.method private synthetic lambda$handleNoUrlIntent$1(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setMediaSessionUrl(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$startActivityWithPostDelay$2(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$2;->$SwitchMap$com$sec$android$app$sbrowser$main_view$IntentHandler$StartType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    const-string p1, "browsing_assist"

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->launchSettingsActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    const-string p1, "settings_privacy"

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->launchSettingsActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    const-string p1, "settings_appearance"

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->launchSettingsActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->launchExtensionsActivity()V

    :goto_0
    return-void
.end method

.method private launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    const-string v0, "CMI: launchMainActivity() className - "

    const-string v1, "si__IntentHandler"

    invoke-static {v0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.intent.extra.DIRECT_HANDLE_INTENT"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ActivityNotFoundException : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private launchNewInstance(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getNextId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getClassNameByActivityId(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CMI: launchNewInstance() next Id - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", next className"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "si__IntentHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "invalid_class_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CMI: invalid class, launch default activity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getDefaultActivity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getFlagForNewTask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleIntentInternal(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private needCustomMultiInstance(Landroid/content/Intent;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const-string v1, "si__IntentHandler"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "CMI: Do not use CMI, Under POS or GED device"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const v0, 0xf425a

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "CMI: SEM_3001 or Higher"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const v0, 0xf4255

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isAllowedReferrer()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "CMI: SEM_2802 or Higher, but not allowed referrer"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string p0, "com.samsung.intent.extra.DIRECT_HANDLE_INTENT"

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "CMI: New instance is already created. prevent infinite loop."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const-string p0, "com.samsung.intent.extra.NEW_WINDOW"

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const-string p0, "CMI: Open in new window"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    const-string p0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "CMI: Intent is not the Intent.ACTION_MAIN"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    return v0
.end method

.method private needToSkipMultiInstanceModeStarted(IIZ)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    if-eqz p3, :cond_0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onMultiInstanceModeStarted(Landroid/content/Intent;)Z
    .locals 13

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityCount()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CMI: onMultiInstanceModeStarted(), Activity count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Desktop mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "si__IntentHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "last_display"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "CMI: last Display Mode - "

    invoke-static {v2, v4, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->needToSkipMultiInstanceModeStarted(IIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    :cond_0
    const/4 v2, 0x5

    new-array v4, v2, [Z

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v5

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CMI: Running Activity - "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",  TASK ID -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/Activity;->getTaskId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",  isMultiWindowMode -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",  isShown -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->isShown()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",  activity.isTaskRoot() -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v11, v9}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->checkInstanceOfSBrowserMainActivity(Landroid/app/Activity;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v7, v9

    move v8, v10

    :cond_2
    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->isShown()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    if-ge v9, v2, :cond_1

    aput-boolean v10, v4, v9

    goto/16 :goto_0

    :cond_3
    const-string v6, "CMI: Multi Window Mode: "

    invoke-static {v6, v3, v8}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_5

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getLastFocusedActivity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->showMaxInstanceToast(Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->launchNewInstance(Landroid/content/Intent;)V

    :goto_1
    return v10

    :cond_5
    if-eqz v8, :cond_c

    const-string v1, "com.samsung.intent.extra.NEW_WINDOW"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "CMI: INTENT_EXTRA_NEW_WINDOW"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.intent.extra.CURRENT_INSTANCE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "CMI: Class name : "

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CMI: Sending class name : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v11, v8}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->checkInstanceOfSBrowserMainActivity(Landroid/app/Activity;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v0, "CMI: Open in another window already exist"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return v10

    :cond_8
    :goto_3
    if-ge v5, v2, :cond_a

    aget-boolean v1, v4, v5

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getClassNameByActivityId(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return v10

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    if-ne v0, v2, :cond_b

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getLastFocusedActivity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->showMaxInstanceToast(Landroid/app/Activity;)V

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->launchNewInstance(Landroid/content/Intent;)V

    :goto_4
    return v10

    :cond_c
    return v5
.end method

.method private openSecretDownloadFile(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->openSecretModeForFile()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openDownloadFile(Landroid/content/Intent;)V

    return-void
.end method

.method private shouldOpenUrlInExistingTab(Landroid/content/Intent;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->shouldOpenUrlInCurrentTab(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabWithSameUrlInTabList(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosing()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_2
    return-object p0
.end method

.method private showMaxInstanceToast(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "si__IntentHandler"

    const-string v1, "CMI: Maximum number of instances are showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120031

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->showSnackBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startActivityWithPostDelay(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModePreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setSecretModeEnabled(Z)V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/h;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private supportShortcut(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isAgreementNeeded(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->getDisableHelpIntro()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "si__IntentHandler"

    const-string p1, "[supportShortcut] Do not accept shortcut intent before agreeing legal notice"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/appshortcut/LauncherShortcutActivity;->SUPPORTED_SHORTCUT_ACTIONS:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public changeExternalIntentAsView(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "android.intent.action.SBROWSER_VIEW_FOR_EXTERNAL_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.sec.android.app.sbrowser.beta.VIEW_MEDIA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.intent.action.SBROWSER_VIEW_FOR_EXTERNAL_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "create_new_tab"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "changeExternalIntentAsView ACTION_VIEW, createNewTab : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "si__IntentHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p1
.end method

.method public getAppIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.browser.application_id"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTabWithSameUrlInTabList(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByUrl(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "si__IntentHandler"

    const-string v1, "getFromIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromWebSearchIntent(Landroid/content/Intent;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromDeepLinkIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromSendIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    if-nez p0, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getDataString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CMI: handleIntent(), intent Action - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Categories - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__IntentHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewConnectivity()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;->handleIntentForHandoff(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v5, "glance-action"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavascriptSchemeOrInvalidUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isForbiddenUri(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isCloudContentUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    const-string v5, "handleIntent, shouldIgnoreIntent"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "chrome://newtab/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const v3, 0x7f140649

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->showSnackBar(I)V

    :cond_4
    move-object v9, v4

    goto :goto_0

    :cond_5
    move-object v9, v3

    :goto_0
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "url"

    invoke-virtual {v3, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "clicked"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "clicked=1"

    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "#:~:text="

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "[QuickNotes] handleIntent: Url contains fragment to highlight text"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "201"

    const-string v4, "4301"

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v3, "push_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v4, "topic"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "push_time"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    const/4 v11, 0x1

    move-object v7, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getParameterForRefererServerLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->handlePushOpened(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->sendPushOpened(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->hideAllPopups()V

    const-string v3, "com.samsung.android.invoked_from_shortcut"

    invoke-virtual {p1, v3, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "extra_by_capsule"

    invoke-virtual {p1, v4, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v5, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->exitPictureInPictureController(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v5, "com.sec.android.app.sbrowser.INTENT_NEW_TAB"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string p1, "handleIntent, NEW_TAB_INTENT"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/l;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;I)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_9
    const-string v5, "com.samsung.intent.action.READ_ARTICLES_ALOUD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/m;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_a
    const-string v5, "com.sec.android.app.sbrowser.beta.INTENT_VIEW_DOWNLOADS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v0, "[handleSecretDownloadIntent]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->openSecretDownloadFile(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_b
    if-eqz v3, :cond_e

    const-string v0, "handleIntent, INVOKED_FROM_SHORTCUT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0, v12}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishMultiTabStack(Z)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishNoTabsFragment()V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/m;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_e
    const-string v3, "com.sec.android.app.sbrowser.beta.search.widget.OPEN.APP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "handleIntent, INVOKED_FROM_SEARCH_WIDGET"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/n;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/n;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_f
    if-eqz v4, :cond_10

    const-string v0, "handleIntent, INVOKED_FROM_BIXBY_CAPSULE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/m;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/m;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_10
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isTabTearingIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/m;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/m;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_11
    if-nez v9, :cond_12

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleNoUrlIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_12
    const-string v0, "AbsolutePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isPathSecretDownloadPath(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->openSecretModeForFile()V

    invoke-virtual {p0, p1, v9}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->openDownloadFile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/n;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1, v9}, Lcom/sec/android/app/sbrowser/main_view/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    :goto_1
    iput-boolean v12, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mIsLaunchFromMain:Z

    return-void
.end method

.method public handlePendingNewIntent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mPendingNewIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mPendingNewIntent:Landroid/content/Intent;

    return-void
.end method

.method public isLocationBarEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isLocationBarEditMode()Z

    move-result p0

    return p0
.end method

.method public needToLoadWithNewTab(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isExtraWebPage(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isExtraCreateNewTab(Landroid/content/Intent;Ljava/lang/String;)Z

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

.method public onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mIsLaunchFromMain:Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mPendingNewIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mPendingNewIntent:Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->shouldCreateNewTab(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->shouldOpenUrlInCurrentTab(Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getMainRenderView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-interface {p2, v2, v0, v1, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onReadyToCreateTab(Landroid/widget/FrameLayout;Ljava/lang/String;ZLandroid/content/Intent;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->onReadyToSetSearchEngine()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->changeExternalIntentAsView(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handlePendingNewIntent()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->handlePendingActivityResult()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__IntentHandler"

    if-eqz v0, :cond_3

    const-string v2, "glance-action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavascriptSchemeOrInvalidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isForbiddenUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "onNewIntent, shouldIgnoreIntent, return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "chrome://newtab/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f140649

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->showSnackBar(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isTabTearingIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->notifyTabTearingFinished()V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->needCustomMultiInstance(Landroid/content/Intent;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->onMultiInstanceModeStarted(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "[Legal] under Multi instance state"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isHelpIntroRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->setRunning(Z)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->launchHelpIntroIfNeeded()Z

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isHelpIntroRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    instance-of v5, v4, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v4

    if-ne v4, v0, :cond_6

    const-string v0, "[Legal] Help intro is running in the same task"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->setRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->launchHelpIntroIfNeeded()Z

    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->handleNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public openDownloadFile(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setAuthListener(Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;)V

    return-void
.end method

.method public shouldCreateNewTab(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isHelpIntroRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.action.ASSIST"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "com.sec.android.app.sbrowser.INTENT_NEW_TAB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const-string p0, "com.samsung.android.invoked_from_shortcut"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "create_new_tab"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    return v0
.end method

.method public shouldOpenUrlInCurrentTab(Landroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getAppIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v4, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    const-string v6, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_ACTION_INTERNAL_LOADING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    const-string v2, "create_new_tab"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1, v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    const-string v6, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    invoke-static {p1, v6, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->isSecretModeEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p0

    if-nez p0, :cond_5

    move p0, v3

    goto :goto_4

    :cond_5
    move p0, v0

    :goto_4
    if-nez v5, :cond_7

    if-nez v4, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-eqz p0, :cond_7

    :cond_6
    move v0, v3

    :cond_7
    return v0
.end method

.method public showSnackBar(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;II)V

    return-void
.end method

.method public showSnackBar(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method
