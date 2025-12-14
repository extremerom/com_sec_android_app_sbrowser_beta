.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mClearAllForwardHistoryRequired:Z

.field private mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

.field private mExternalNavHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field private mShouldClearRedirectHistoryForTabClobbering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->onDidAsyncActionInSubFrame(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->lambda$shouldIgnoreNavigation$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->lambda$onDidFinishMainFrameIntentLaunch$1()V

    return-void
.end method

.method private clobberMainFrame(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V
    .locals 3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isSandboxedMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/terrace/browser/TerraceReferrer;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Lcom/sec/terrace/browser/TerraceReferrer;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setReferrer(Lcom/sec/terrace/browser/TerraceReferrer;)V

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isRendererInitiated()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setIsRendererInitiated(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceOrigin;->createOpaqueOrigin()Lcom/sec/terrace/TerraceOrigin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setInitiatorOrigin(Lcom/sec/terrace/TerraceOrigin;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl$1;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl$1;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mShouldClearRedirectHistoryForTabClobbering:Z

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->lambda$onDidFinishMainFrameIntentLaunch$2(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->onDidAsyncActionInMainFrame(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    return-object p0
.end method

.method private isForceLoadScheme(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isBlockDeepLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->isShouldExcludedHost(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->isHttpXScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->isAccessListForExternal(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isIncognito()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "InterceptNavigationDelegateImpl"

    const-string p1, "http or https URL is forcibly loaded"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isHttpXScheme(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "http://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "https://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method private isInitialNavigation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isInitialNavigation()Z

    move-result p0

    return p0
.end method

.method private isTabOnInitialNavigationChain()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isOnNavigation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->hasUserStartedNonInitialNavigation()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private synthetic lambda$onDidFinishMainFrameIntentLaunch$1()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InterceptNavigationDelegateImpl"

    const-string v1, "onOverrideUrlLoadingAndLaunchIntent calling closeContents()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->wasTabLaunchedFromExternalApp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->wasTaskStartedByExternalIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->closeTab()V

    return-void
.end method

.method private synthetic lambda$onDidFinishMainFrameIntentLaunch$2(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->goToNavigationIndex(I)V

    return-void
.end method

.method private synthetic lambda$shouldIgnoreNavigation$0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->checkParentalControl(Ljava/lang/String;)V

    return-void
.end method

.method private onDidAsyncActionInMainFrame(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;)V
    .locals 2

    iget v0, p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->actionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->targetUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->externalNavigationParams:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->clobberMainFrame(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->canCloseTab:Z

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->externalNavigationParams:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->onDidFinishMainFrameIntentLaunch(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onDidAsyncActionInSubFrame(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDidAsyncActionInSubFrame type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->actionType:I

    const-string v2, "InterceptNavigationDelegateImpl"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->actionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->targetUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->onSubframeAsyncActionTaken(Ljava/lang/String;)V

    return-void
.end method

.method private onDidFinishMainFrameIntentLaunch(ZLjava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->isTabOnInitialNavigationChain()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isOnNavigation()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->getLastCommittedEntryIndexBeforeStartingNavigation()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/Terrace;->getLastCommittedEntryIndex()I

    move-result p2

    if-gt p2, p1, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClearAllForwardHistoryRequired:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, LG6/c;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private shouldOverrideUrlLoading(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;Ljava/lang/String;IZZZLjava/lang/String;ZLcom/sec/terrace/TerraceOrigin;ZZLcom/sec/terrace/base/TerraceCallback;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sec/terrace/TerraceOrigin;",
            "ZZ",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;",
            ">;Z)",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->isInitialNavigation()Z

    move-result v11

    const-string v2, "pageTransitionType : "

    const-string v12, "InterceptNavigationDelegateImpl"

    move/from16 v13, p3

    invoke-static {v13, v2, v12}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getLastUserInteractionTime()J

    move-result-wide v6

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/Terrace;->getLastCommittedEntryIndex()I

    move-result v8

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v9, v11

    move/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->updateNewUrlLoading(IZZJIZZ)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isIncognito()Z

    move-result v3

    move/from16 v4, p10

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldStayInIncognito(ZZ)Z

    move-result v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->dismissDialogForNavigation(Z)V

    move-object/from16 v2, p2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->isForceLoadScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forForceLoadScheme()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->isTabOnInitialNavigationChain()Z

    move-result v9

    new-instance v10, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isIncognito()Z

    move-result v5

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v6, p7

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;-><init>(Ljava/lang/String;ZLjava/lang/String;IZ)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setApplicationMustBeInForeground(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v3

    move-object v4, p1

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setRedirectHandler(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setOpenInNewTab(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isCreatedWithTerrace()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setIsBackgroundTabNavigation(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    move/from16 v3, p8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setIsMainFrame(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getNativeClientPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setNativeClientPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setHasUserGesture(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    move/from16 v3, p6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setIsRendererInitiated(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setInitiatorOrigin(Lcom/sec/terrace/TerraceOrigin;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    move-object/from16 v3, p12

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setAsyncActionTakenCallback(Lcom/sec/terrace/base/TerraceCallback;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setIsInitialNavigationInFrame(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    move/from16 v3, p11

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setIsHiddenCrossFrameNavigation(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    move/from16 v3, p13

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setIsSandboxedMainFrame(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->setExternalNavigationParams(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->build()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initiatorOrigin not null, scheme : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p9 .. p9}, Lcom/sec/terrace/TerraceOrigin;->getOriginScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", host : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Lcom/sec/terrace/TerraceOrigin;->getOriginHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", port : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Lcom/sec/terrace/TerraceOrigin;->getOriginPort()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "params.isFromIntent "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isFromIntent()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "params.isLinkTransition "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isLinkTransition()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldOverrideUrlLoading(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleSubframeExternalProtocol(Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;)Ljava/lang/Object;
    .locals 15

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->create()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v1

    const-string v14, "InterceptNavigationDelegateImpl"

    const-string v0, "handleSubframeExternalProtocol"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/sec/android/app/sbrowser/externalnav/external_intents/k;

    const/4 v0, 0x0

    move-object v2, p0

    invoke-direct {v12, p0, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/k;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v13}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->shouldOverrideUrlLoading(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;Ljava/lang/String;IZZZLjava/lang/String;ZLcom/sec/terrace/TerraceOrigin;ZZLcom/sec/terrace/base/TerraceCallback;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSubframeExternalProtocol result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getResultType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getResultType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public maybeUpdateNavigationHistory()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClearAllForwardHistoryRequired:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->pruneForwardEntries()V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mShouldClearRedirectHistoryForTabClobbering:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->getLastCommittedEntryIndexBeforeStartingNavigation()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getLastCommittedEntryIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/sec/terrace/Terrace;->removeEntryAtIndex(I)Z

    move-result v3

    invoke-static {v3}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClearAllForwardHistoryRequired:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mShouldClearRedirectHistoryForTabClobbering:Z

    return-void
.end method

.method public onResourceRequestWithGesture()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getLastUserInteractionTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getLastCommittedEntryIndex()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->updateNewUrlLoading(IZZJIZZ)V

    return-void
.end method

.method public shouldIgnoreNavigation(Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;Ljava/lang/String;ZZ)Z
    .locals 17

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isInPrimaryMainFrame()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v14, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isClosed()Z

    move-result v0

    const/16 v16, 0x0

    if-eqz v0, :cond_0

    return v16

    :cond_0
    if-nez v15, :cond_1

    return v16

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "escapedUrl : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    move-object v2, v15

    goto :goto_0

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "InterceptNavigationDelegateImpl"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isRedirect "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isRedirect()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isRendererInitiated "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isRendererInitiated()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pageTransitionType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->getPageTransitionType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v14, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/externalnav/AuthenticatorNavigationInterceptor;

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v14, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/externalnav/AuthenticatorNavigationInterceptor;

    invoke-interface {v0, v15}, Lcom/sec/android/app/sbrowser/externalnav/AuthenticatorNavigationInterceptor;->handleAuthenticatorUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Navigation is handled by AuthenticatorNavigationInterceptor"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_6
    iget-object v0, v14, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/externalnav/NavigationStaticLog;->addHistory(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->handleIntentRequestedFromErrorPage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v13

    :cond_7
    iget-object v0, v14, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v0, v15}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isUrlBlockedByParentalControl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v14, v15}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v13

    :cond_8
    iget-object v0, v14, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isRedirect()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->notifyTabChanged(Ljava/lang/String;Z)V

    const-string v0, "chrome://contentblock"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->setIsDebugMode(Z)V

    return v13

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->getPageTransitionType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isRedirect()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->hasUserGesture()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isRendererInitiated()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->getReferrer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isInPrimaryMainFrame()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->getInitiatorOrigin()Lcom/sec/terrace/TerraceOrigin;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isExternalProtocol()Z

    move-result v10

    new-instance v12, Lcom/sec/android/app/sbrowser/externalnav/external_intents/k;

    const/4 v0, 0x1

    invoke-direct {v12, v14, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/k;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;I)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v11, p3

    move v15, v13

    move/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->shouldOverrideUrlLoading(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;Ljava/lang/String;IZZZLjava/lang/String;ZLcom/sec/terrace/TerraceOrigin;ZZLcom/sec/terrace/base/TerraceCallback;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getResultType()I

    move-result v1

    if-eqz v1, :cond_f

    if-eq v1, v15, :cond_e

    const/4 v0, 0x2

    if-eq v1, v0, :cond_d

    const/4 v0, 0x4

    if-eq v1, v0, :cond_d

    const/4 v0, 0x5

    if-eq v1, v0, :cond_c

    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavascriptSchemeOrInvalidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isExternalProtocol()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move/from16 v16, v15

    :cond_c
    return v16

    :cond_d
    return v15

    :cond_e
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getExternalNavigationParams()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    move-result-object v0

    invoke-direct {v14, v1, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->clobberMainFrame(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V

    return v15

    :cond_f
    move-object/from16 v0, p2

    move v1, v15

    invoke-direct {v14, v1, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->onDidFinishMainFrameIntentLaunch(ZLjava/lang/String;)V

    iget-object v2, v14, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->isBlockDeepLinkEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-direct {v14, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->isHttpXScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "201"

    const-string v2, "2702"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return v1

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public shouldIgnoreNewTab(Ljava/lang/String;ZZLcom/sec/terrace/TerraceOrigin;)Z
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setOpenInNewTab(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setIsRendererInitiated(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setInitiatorOrigin(Lcom/sec/terrace/TerraceOrigin;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->setIsMainFrame(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mClient:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    invoke-interface {p3, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->setExternalNavigationParams(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->build()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldOverrideUrlLoading(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getResultType()I

    move-result p0

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
