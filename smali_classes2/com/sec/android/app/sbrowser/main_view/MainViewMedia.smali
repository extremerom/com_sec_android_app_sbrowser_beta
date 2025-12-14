.class public Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/MainViewMedia$VisibilityStateForVr;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mMediaSessionUrl:Ljava/lang/String;

.field private mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field mVrVisibilityState:Lcom/sec/android/app/sbrowser/main_view/MainViewMedia$VisibilityStateForVr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMediaSessionUrl:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia$VisibilityStateForVr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia$VisibilityStateForVr;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mVrVisibilityState:Lcom/sec/android/app/sbrowser/main_view/MainViewMedia$VisibilityStateForVr;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->lambda$onTabStateLoaded$0()V

    return-void
.end method

.method private getBringTabToFrontTabIdFromIntent(Landroid/content/Intent;)I
    .locals 1

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->wasIntentSenderSBrowser(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    return p0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getMediaSesstionUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "com.samsung.intent.extra.MEDIA_SESSION_URL"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onTabStateLoaded$0()V
    .locals 7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMediaSessionUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMediaSessionUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exitPictureInPictureController(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->getBringTabToFrontTabIdFromIntent(Landroid/content/Intent;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->onPictureInPictureExit()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->exitFullscreen()V

    :cond_0
    return-void
.end method

.method public isFullscreenMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullScreenMode()Z

    move-result p0

    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullscreenVideoMode()Z

    move-result p0

    return p0
.end method

.method public onEditModeFinished()V
    .locals 2

    const-string v0, "MainViewMedia"

    const-string v1, "onEditModeFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setVideoAssistantActivated(Z)V

    return-void
.end method

.method public onEditModeStarted()V
    .locals 2

    const-string v0, "MainViewMedia"

    const-string v1, "onEditModeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setVideoAssistantActivated(Z)V

    return-void
.end method

.method public onTabStateLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setTabRestored(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setMediaSessionUrl(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->getBringTabToFrontTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->getMediaSesstionUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MainViewMedia"

    const-string v1, "handleIntent, Unable to bring media playing instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMediaSessionUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishEditMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->showParent(I)V

    :cond_1
    :goto_0
    return-void
.end method
