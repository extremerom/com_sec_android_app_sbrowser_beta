.class public Lcom/sec/android/app/sbrowser/webapp/WebappActivity;
.super Lcom/sec/android/app/sbrowser/tab/TabActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager$FullScreenActionOverrider;
.implements Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;
.implements Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;
.implements Lcom/sec/terrace/browser/webapps/TerraceWebApkActivityDelegate;
.implements Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;


# instance fields
.field private mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

.field private mContentViewHolder:Landroid/widget/FrameLayout;

.field private mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

.field private mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field private mImmersiveMode:LI/e;

.field private mImmersiveModeController:Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

.field private mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

.field private mIsCreatedWithTerrace:Z

.field private mIsDestroyed:Z

.field private mIsTerraceForLinkClosing:Z

.field private mLastUserInteractionTime:J

.field private mLayout:Landroid/widget/FrameLayout;

.field private mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

.field private mWebApkActivityCoordinator:Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;

.field private mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

.field private mWebappSplashController:Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/f;-><init>(Landroid/view/KeyEvent$Callback;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;)Lcom/sec/android/app/sbrowser/webapp/Webapp;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIsTerraceForLinkClosing:Z

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Lcom/sec/terrace/Terrace;Ljava/lang/String;ZZLcom/sec/terrace/TerraceOrigin;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->launchCustomTabActivity(Lcom/sec/terrace/Terrace;Ljava/lang/String;ZZLcom/sec/terrace/TerraceOrigin;)V

    return-void
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->maybeStartExternalActivity(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private buildIntentDataProvider(Landroid/content/Intent;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getWebApkPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProviderFactory;->create(Landroid/content/Intent;)Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->create(Landroid/content/Intent;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private computeImmersiveMode(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)LI/e;
    .locals 0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getTwaDisplayMode()LI/f;

    move-result-object p0

    instance-of p1, p0, LI/e;

    if-eqz p1, :cond_0

    check-cast p0, LI/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private createExternalNavigationHandler(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;-><init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    return-object p0
.end method

.method private createInterceptNavigationDelegate()Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;)V

    return-object v0
.end method

.method private initDeferredStartupForActivity()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isWebApkActivity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;

    new-instance v1, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getWebappDataStorage(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;-><init>(Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebApkActivityCoordinator:Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ADD_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->getStringAddBookmarkSuccess(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$onPostInflation$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    return-void
.end method

.method private launchCustomTabActivity(Lcom/sec/terrace/Terrace;Ljava/lang/String;ZZLcom/sec/terrace/TerraceOrigin;)V
    .locals 3

    const-string p5, "si__WebappActivity"

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->getInstance()Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->generateTabId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;->getInstance()Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;->add(ILcom/sec/android/app/sbrowser/tab/Tab;)V

    :try_start_0
    invoke-static {p0, p2, p3, p4, v0}, Lcom/sec/android/app/sbrowser/webapp/WebappLaunchIntentDispatcher;->createCustomTabActivityIntent(Landroid/content/Context;Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x7d1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p0, "CustomTab is launched."

    invoke-static {p5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ActivityNotFoundException :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p5}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private loadUrlIfPostShareTarget(LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-static {v0, p2, p1, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkPostShareTargetNavigator;->navigateIfPostShareTarget(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;LK/a;Lcom/sec/terrace/Terrace;)Z

    move-result p0

    return p0
.end method

.method private maybeStartExternalActivity(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "apkPackageName : "

    const-string v3, "si__WebappActivity"

    invoke-static {v2, v0, v3}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->getSpecializedHandlersWithFilter(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    move v5, v2

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->linkify(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad URI : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private preInflationStartup()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->buildIntentDataProvider(Landroid/content/Intent;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    if-nez v0, :cond_0

    const-string v0, "si__WebappActivity"

    const-string v1, "IntentDataProvider is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/webapp/Webapp;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/sbrowser/webapp/Webapp;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateTaskDescription()V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mImmersiveModeController:Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->computeImmersiveMode(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)LI/e;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mImmersiveMode:LI/e;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mImmersiveModeController:Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

    iget v1, v0, LI/e;->b:I

    iget-boolean v0, v0, LI/e;->a:Z

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->enterImmersiveMode(IZ)V

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->lambda$new$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic y()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->lambda$onPostInflation$0()V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIsTerraceForLinkClosing:Z

    return p0
.end method


# virtual methods
.method public attemptPictureInPicture()V
    .locals 0

    return-void
.end method

.method public createActivityDelegate()Lcom/sec/terrace/TerraceActivityDelegate;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/ActivityDelegateFactory;->createActivityDelegate(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/android/app/sbrowser/BaseActivityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public createIntentToBringToFront(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/sec/android/app/sbrowser/webapp/WebappManager;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "BRING_TAB_TO_FRONT"

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->goForwardIfPossible()V

    return v2

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->goBackIfPossible()Z

    return v2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x40000015
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContentViewHolder()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mContentViewHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/webapp/Webapp;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    return-object p0
.end method

.method public getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    return-object p0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLastUserInteraction()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mLastUserInteractionTime:J

    return-wide v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getNativeClientPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWebappScopeUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->scopeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getWebappUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getUrlToLoad()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideSplashScreen()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebappSplashController:Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->hideSplashScreen(Landroid/app/Activity;)V

    return-void
.end method

.method public initializeInterceptNavigationDelegate(Lcom/sec/terrace/Terrace;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->create()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    invoke-direct {p0, p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->createExternalNavigationHandler(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->createInterceptNavigationDelegate()Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/Terrace;->setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V

    return-void
.end method

.method public isActivityFinishingOrDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIsDestroyed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

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

.method public isCreatedWithTerrace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIsCreatedWithTerrace:Z

    return p0
.end method

.method public isWebContentsVisible()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadUrl(Ljava/lang/String;LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->loadUrlIfPostShareTarget(LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setShouldClearHistoryList(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/Terrace;->loadUrl(Lcom/sec/terrace/browser/TerraceLoadUrlParams;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p3, "onActivityResult, requestCode = "

    const-string v0, "si__WebappActivity"

    invoke-static {p1, p3, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x7d1

    if-ne p1, p3, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIsTerraceForLinkClosing:Z

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->isRequestCodeForShare(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->onActivityResult(II)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$1;-><init>(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Z)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/A;->a(Landroidx/lifecycle/J;Landroidx/activity/u;)V

    return-void
.end method

.method public onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIsCreatedWithTerrace:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;-><init>(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p1, v0}, Lcom/sec/terrace/Terrace;->setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIsTerraceForLinkClosing:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "si__WebappActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebApkActivityCoordinator:Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->onDestroy()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->onDestroy()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/p;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->setNavBarUpdate(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onNativeInitializationFailure()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationFailure()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationSuccess()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mContentViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getRenderView()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->onNativeInitializationSuccess()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mContentViewHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->onCurrentTabChanged(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->isContentBlockerRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isContentBlockerSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initContentBlocker(Landroid/content/Context;I)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->initialize()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->initDeferredStartupForActivity()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "onNewIntent()"

    const-string v1, "si__WebappActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Terrace is not initialized yet"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->buildIntentDataProvider(Landroid/content/Intent;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->show()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->shouldForceNavigation:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getUrlToLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getShareData()LK/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getShareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->loadUrl(Ljava/lang/String;LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;)V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "si__WebappActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onPause()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->onPause()V

    return-void
.end method

.method public onPostInflation()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPostInflation()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LN4/a;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LN4/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebappSplashController:Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->buildSplashScreen(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "url"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getUrlToLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clicked"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "clicked=1"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "si__WebappActivity"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->get()Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->setHttpAuthObserver(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateThemeUI()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappLogging;->sendLogForLaunching(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V

    return-void
.end method

.method public onPreInflation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPreInflation()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->preInflationStartup()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "si__WebappActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->onCurrentTabChanged(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "si__WebappActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->onStart()V

    :cond_0
    invoke-static {p0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "download_complete_popup"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ll2/b;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "si__WebappActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mWebapp:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->onStop()V

    :cond_0
    invoke-static {p0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    invoke-virtual {v0, v1}, Ll2/b;->d(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onStop()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mLastUserInteractionTime:J

    return-void
.end method

.method public scopePolicy()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isWebApkActivity()Z

    move-result p0

    return p0
.end method

.method public setContentView()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->setContentView()V

    const v0, 0x7f0e0914

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    const v0, 0x7f0b0e45

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0302

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->mContentViewHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public shouldOverrideFullscreenAction()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p0

    return p0
.end method

.method public showParent(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return-void
.end method

.method public supportPullToRefresh()Z
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
