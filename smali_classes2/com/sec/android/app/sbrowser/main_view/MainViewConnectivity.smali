.class public Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

.field private mHandoffUrl:Ljava/lang/String;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mWebState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mWebState:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->restoreHandoffUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->setHandoffUrl(Ljava/lang/String;)V

    return-void
.end method

.method private loadHandoffUrl(Ljava/lang/String;)V
    .locals 9

    const-string v0, "si__MainViewConnectivity"

    const-string v1, "[Handoff] loadHandoffUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishMultiTabStack(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->setHandoffUrl(Ljava/lang/String;)V

    return-void
.end method

.method private restoreHandoffUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabRestored()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->loadHandoffUrl(Ljava/lang/String;)V

    const-string p0, "si__MainViewConnectivity"

    const-string p1, "[Handoff] Direct load Handoff URL"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setHandoffUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applySecretModeStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->disableHandoff()V

    :cond_0
    return-void
.end method

.method public directLoadHandoffUrl()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "si__MainViewConnectivity"

    const-string v1, "[Handoff] directLoadHandoffUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->loadHandoffUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleDataSendingOnNoTab()V
    .locals 2

    const-string v0, "si__MainViewConnectivity"

    const-string v1, "handleDataSendingOnNoTab"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->disableHandoff()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->sendLinkToWindowDataIfNeeded()V

    return-void
.end method

.method public handleIntentForHandoff(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->handleIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->unregisterObserver()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->setHandoffHelper(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->cancelRevivalTimer()V

    :cond_0
    return-void
.end method

.method public onPostInflation()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isHandoffSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->setHandoffHelper(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->cancelRevivalTimer()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->disableHandoff()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->startRevivalTimer()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isWebStateHandoffSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getHandoffHelper()Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isAppDataProviderSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->retrieveWebState()V

    goto :goto_0

    :cond_0
    const-string p0, "si__MainViewConnectivity"

    const-string v0, "mTabDelegate.getTerrace() == null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreWebStateContinuity(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mWebState:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mWebState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/terrace/Terrace;->restoreWebState(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mWebState:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public sendLinkToWindowDataIfNeeded()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->isLinkToWindowEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->sendTabData()V

    :cond_0
    return-void
.end method

.method public sendUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isInitialNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mHandoffHelper:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->sendUrl(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->mActivity:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->sendUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->sendLinkToWindowDataIfNeeded()V

    return-void

    :cond_3
    :goto_0
    const-string p0, "si__MainViewConnectivity"

    const-string p1, "sendUrl() current tab is null or initial navigation"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
