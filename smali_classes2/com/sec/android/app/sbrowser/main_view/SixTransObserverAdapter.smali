.class public Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsTranslationEnabled:Z

.field private final mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

.field private final mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mIsTranslationEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->lambda$notifyTransBarLoading$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->lambda$notifyTransBarLoading$1()V

    return-void
.end method

.method private isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

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

.method private synthetic lambda$notifyTransBarLoading$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->turnOffProcessingLightEffect()V

    return-void
.end method

.method private synthetic lambda$notifyTransBarLoading$1()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/f0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/main_view/f0;-><init>(Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyTransBarInstanceUpdate(ZLandroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyTransBarInstanceUpdate(ZLandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private notifyTransBarLoading()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mIsTranslationEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportedLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->turnOnProcessingLightEffect()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/f0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/main_view/f0;-><init>(Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBottomBarShowing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->showScanningAnimation(Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->startTransBarLoading()V

    :cond_2
    return-void
.end method

.method private notifyTransBarTranslate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->stopFinding(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarBtnStatus(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->requestSetTranslationRequestCallback()V

    return-void
.end method

.method private startTransBarLoading()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->startLoadingAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->notifyTransBarInstanceUpdate(ZLandroid/app/Activity;)V

    return-void
.end method

.method public onDone()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mIsTranslationEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SixTransObserverAdapter"

    const-string v1, "translation is completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->detectArticleAndUpdateAiButton(Z)V

    :cond_0
    return-void
.end method

.method public onLoading()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->notifyTransBarLoading()V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->notifyTransBarInstanceUpdate(ZLandroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->notifyTransBarInstanceUpdate(ZLandroid/app/Activity;)V

    return-void
.end method

.method public onTranslate(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->notifyTransBarTranslate(Z)V

    return-void
.end method

.method public onUpdateFabStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateLangList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarSpinnerUpdate()V

    :cond_0
    return-void
.end method

.method public setTranslationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/SixTransObserverAdapter;->mIsTranslationEnabled:Z

    return-void
.end method
