.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;
    }
.end annotation


# instance fields
.field private mCanEvaluateJavaScript:Z

.field private mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

.field private mNewsJavaScriptAdapter:Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;

.field private mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

.field private mTab:Lcom/sec/android/app/sbrowser/tab/Tab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)V

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string v0, "QuickAccess"

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;

    new-instance p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;-><init>(Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mNewsJavaScriptAdapter:Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string p2, "News"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->lambda$handleQuickAccessRequestResult$2()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->lambda$new$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->lambda$handleQuickAccessRequestResult$1()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    return-object p0
.end method

.method private handleHomepageContentSettingsChanged()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageForSecretMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$handleQuickAccessRequestResult$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleQuickAccessRequestResult$2()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->exitEditMode()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->handleHomepageContentSettingsChanged()V

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public closeDialogIfNecessary()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->closeDialogIfNecessary()V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string v1, "QuickAccess"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeJavaScriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string v1, "News"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeJavaScriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mNewsJavaScriptAdapter:Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;

    return-void
.end method

.method public enterEditMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->enterEditMode()V

    return-void
.end method

.method public exitEditMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->notifyDbUpdated()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onPrivacyDashboardUpdated()V

    return-void
.end method

.method public handleDidFinishLoad()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mCanEvaluateJavaScript:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mCanEvaluateJavaScript:Z

    :cond_0
    return-void
.end method

.method public handleQuickAccessRequestResult(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/a;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/a;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/a;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public loadJavaScriptUrl(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mCanEvaluateJavaScript:Z

    if-nez v0, :cond_0

    const-string p0, "ContentJavaScriptHelper"

    const-string p1, "cannot load JavaScript"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method

.method public onAttachedToWindow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->onTabAttached(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string v0, "QuickAccess"

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeJavaScriptInterface(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string v0, "News"

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeJavaScriptInterface(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mNewsJavaScriptAdapter:Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string v1, "QuickAccess"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeJavaScriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string v1, "News"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeJavaScriptInterface(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->mQuickAccessJavaScriptAdapter:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->onTabDetached()V

    return-void
.end method
