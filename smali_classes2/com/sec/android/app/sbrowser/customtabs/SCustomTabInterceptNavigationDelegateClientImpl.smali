.class public Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;


# instance fields
.field private final mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->lambda$closeTab$0()V

    return-void
.end method

.method private synthetic lambda$closeTab$0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeTab() -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCustomTabInterceptNavigationDelegateClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->closeTab()V

    return-void
.end method


# virtual methods
.method public closeTab()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    move-result-object p0

    return-object p0
.end method

.method public getLastUserInteractionTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->getLastUserInteraction()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public isBlockDeepLinkEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result p0

    return p0
.end method

.method public isCreatedWithTerrace()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isCreatedWithTerrace()Z

    move-result p0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isHidden()Z

    move-result p0

    return p0
.end method

.method public loadUrlIfPossible(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->mTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public wasTabLaunchedFromExternalApp()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->isCreatedWithTerrace()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
