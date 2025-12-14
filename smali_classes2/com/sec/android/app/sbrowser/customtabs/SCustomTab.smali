.class public Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/TabObserver;
.implements Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$SCustomTabHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

.field private mClientPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCustomTabHandler:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$SCustomTabHandler;

.field private mCustomTabIntent:Landroid/content/Intent;

.field private mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

.field private mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field private mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

.field private mIsClosed:Z

.field private mIsCreatedWithTerrace:Z

.field private mIsHidden:Z

.field private mIsKeyboardShown:Z

.field private mIsLoading:Z

.field private mIsMainFrameLoading:Z

.field private mIsNoUiMode:Z

.field private mProgress:D

.field private mProvisionalLoad:Z

.field private mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

.field private mShouldChangeToDesktopUserAgent:Z

.field private mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

.field private mThemeColor:I

.field private mTitle:Ljava/lang/String;

.field private final mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;-><init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mShouldChangeToDesktopUserAgent:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsHidden:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->lambda$show$0()V

    return-void
.end method

.method private announceForAccessibility()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->handleMessage()V

    return-void
.end method

.method private createExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mClientPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Lcom/sec/terrace/Terrace;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    return-object v0
.end method

.method private createInterceptNavigationDelegate()Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;-><init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;)V

    return-object v0
.end method

.method private createTerrace()Lcom/sec/terrace/Terrace;
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->takeAsyncTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mCustomTabIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mCustomTabIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->takePrerenderedUrl(LH/y;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->takeSpareTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createTerrace() prerender terrace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCustomTab"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getNetworkHandle()J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/terrace/TerraceHelper;->createTerrace(ZJ)Lcom/sec/terrace/Terrace;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static bridge synthetic d(Ljava/lang/String;Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->saveAllImages(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->supportPullToRefresh()Z

    move-result p0

    return p0
.end method

.method private generateTabId()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isNoUiMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isWebappOrWebApkActivity()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->getInstance()Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->generateTabId()I

    move-result p0

    return p0
.end method

.method private getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    return-object p0
.end method

.method private handleDidFinishLoad(JLjava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didFinishLoad frameId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") isMainFrame = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SCustomTab"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->updateTitle()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsMainFrameLoading:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mProvisionalLoad:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onLoadFinished(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "Title"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->sendCustomTabsCallback(ILandroid/os/Bundle;)V

    return-void
.end method

.method private handleMessage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onCloseTab()V

    return-void
.end method

.method private hasNoTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideInfoBar()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initializeContextmenuPopulator()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabContextMenuPopulator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabContextMenuPopulator;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTab(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$4;-><init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->addEventListener(Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V

    return-void
.end method

.method private initializeInfoBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;-><init>(Lcom/sec/terrace/Terrace;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getBottomMargin()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->setBottomBarEnabled(Z)V

    return-void
.end method

.method private initializeInterceptNavigationDelegate()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->create()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->createExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->createInterceptNavigationDelegate()Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V

    return-void
.end method

.method private initializeTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$2;-><init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;Lcom/sec/terrace/Terrace;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->generateTabId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->initialize(Landroid/app/Activity;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$3;-><init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setDelegate(Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->initializeContextmenuPopulator()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->initializeInterceptNavigationDelegate()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->initializeInfoBar()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "SCustomTab"

    const-string p1, "initializeTerrace(): terrace is null or closed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$show$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getBottomMargin()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->setBottomBarEnabled(Z)V

    :cond_1
    return-void
.end method

.method private saveAllImages(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->scanImages(Ljava/lang/String;)V

    return-void
.end method

.method private sendCustomTabsCallback(ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->notifyNavigationEvent(LH/y;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private showInfoBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private supportPullToRefresh()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_pull_to_refresh"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private takeAsyncTerrace()Lcom/sec/terrace/Terrace;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mCustomTabIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getTabId(Landroid/content/Intent;)I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;->getInstance()Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;->remove(I)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private updateTitle()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onUpdateTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addShortcut()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->addShortcut(II)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public canGoForward()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->canGoForward()Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCustomTab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->updateTitle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->destroy()V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsClosed:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->close()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    :cond_0
    return-void
.end method

.method public getBottomMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleBottomMargin()I

    move-result p0

    return p0
.end method

.method public getCurrentVisibleContentRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    return-object p0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    return-object p0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    return-object p0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    return-object p0
.end method

.method public getTabId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getThemeColor()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;-><init>(I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mThemeColor:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTitle:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTopMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result p0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUrl() -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCustomTab"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public goBack()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->goBack()Z

    return-void
.end method

.method public goForward()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->goForward()Z

    return-void
.end method

.method public goForwardIfPossible()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->goForward()V

    :cond_0
    return-void
.end method

.method public hasTheme()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mThemeColor:I

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hide()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCustomTab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsHidden:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->onTabHidden()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onTabHidden()V

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->sendCustomTabsCallback(ILandroid/os/Bundle;)V

    return-void
.end method

.method public initializeTab(Landroid/content/Context;Lcom/sec/terrace/Terrace;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mCustomTabIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mThemeColor:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isNoUiMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsNoUiMode:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getClientPackageNameForSession(LH/y;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mClientPackageName:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->createTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsCreatedWithTerrace:Z

    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->initializeTerrace(Lcom/sec/terrace/Terrace;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$SCustomTabHandler;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$SCustomTabHandler;-><init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mCustomTabHandler:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$SCustomTabHandler;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->show()V

    return-void
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsClosed:Z

    return p0
.end method

.method public isCreatedWithTerrace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsCreatedWithTerrace:Z

    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsHidden:Z

    return p0
.end method

.method public isInitialNavigation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isInitialNavigation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsLoading:Z

    return p0
.end method

.method public isMainFrameLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsMainFrameLoading:Z

    return p0
.end method

.method public isNoUiMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsNoUiMode:Z

    return p0
.end method

.method public loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setOverrideUserAgent(I)V

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceOrigin;->createOpaqueOrigin()Lcom/sec/terrace/TerraceOrigin;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setInitiatorOrigin(Lcom/sec/terrace/TerraceOrigin;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setIsLoading(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    const/high16 v1, 0x8000000

    invoke-direct {v0, p1, v1, p4, p2}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setHasUserGesture(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onCloseContents()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mCustomTabHandler:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$SCustomTabHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mCustomTabHandler:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$SCustomTabHandler;

    const-wide/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onContentHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onContentHeightChanged()V

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onContentViewSizeChanged()V

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mShouldChangeToDesktopUserAgent:Z

    if-eqz p1, :cond_0

    const-string p1, "about:blank"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mShouldChangeToDesktopUserAgent:Z

    :cond_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mProvisionalLoad:Z

    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->clear()V

    :cond_1
    return-void
.end method

.method public onDidNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onDidNavigateMainFrame()V

    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onDidStartProvisionalLoadForFrame(): "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->getId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SCustomTab"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mProvisionalLoad:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsMainFrameLoading:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setIsLoading(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->destroyCrashView()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p3, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onLoadStarted(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "Url"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->sendCustomTabsCallback(ILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFindOnPage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V

    return-void
.end method

.method public onFullscreenModeChanged(ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onToggleFullscreenModeForTab(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->onToggleFullscreenModeForTab(Z)V

    return-void
.end method

.method public onHidden()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->clear()V

    return-void
.end method

.method public onLoadFailed(ZZILjava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onLoadFailed: Id("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTabId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") errorCode("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") mainFrame("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SCustomTab"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->updateTitle()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsMainFrameLoading:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setIsLoading(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mProvisionalLoad:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onLoadFailed(ILjava/lang/String;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->sendCustomTabsCallback(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onLoadFinished(JLjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onLoadFinished(): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SCustomTab"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsMainFrameLoading:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setIsLoading(Z)V

    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsLoading:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    cmpg-double v0, p1, v1

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mProgress:D

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onLoadProgressChanged(D)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mProvisionalLoad:Z

    if-eqz v0, :cond_1

    cmpl-double v0, p1, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mProgress:D

    cmpl-double v0, v3, p1

    if-nez v0, :cond_2

    cmpl-double v0, p1, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mProgress:D

    cmpl-double p1, p1, v1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->handleDidFinishLoad(JLjava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public onLoadingStatusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setIsLoading(Z)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    if-ne v0, v2, :cond_3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hideInfoBar()V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsKeyboardShown:Z

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->showInfoBar()V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsKeyboardShown:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onOffsetsForFullscreenChanged(FF)V

    return-void
.end method

.method public onPrimaryMainDocumentElementAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->applyCustomCss()V

    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->showCrashView()V

    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    const-string p0, "SCustomTab"

    new-instance p3, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;

    invoke-direct {p3, p1}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->linkify(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    :try_start_0
    invoke-static {p2, p3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "URI Error : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No Activity Found : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onTakeFocus(Z)V

    return-void
.end method

.method public onThemeColorChanged(I)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mThemeColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mThemeColor:I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onThemeColorChanged(I)V

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onUpdateUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onWebSearch(Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x8000000

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->loadUrl(Ljava/lang/String;I)V

    return-void
.end method

.method public reload()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->reload()V

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsLoading:Z

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setNoUiMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsNoUiMode:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onUiModeChanged(Z)V

    return-void
.end method

.method public setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    return-void
.end method

.method public setVideoAssistantActivated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setVideoAssistantActivated(Z)V

    return-void
.end method

.method public show()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCustomTab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->updateTitle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mIsHidden:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->requestFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->announceForAccessibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->onTabShown()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->updateSavePasswordInfoBar()V

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mEventListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;->onTabShown()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->sendCustomTabsCallback(ILandroid/os/Bundle;)V

    return-void
.end method

.method public startFinding(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->startFinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public stopFinding()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->stopFinding(Z)V

    return-void
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->updateIntent(Landroid/content/Intent;)V

    return-void
.end method
