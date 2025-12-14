.class public Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;


# instance fields
.field private mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    move-result-object p0

    return-object p0
.end method

.method public getLastUserInteractionTime()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getLastUserInteraction()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeClientPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getNativeClientPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getTerrace()Lcom/sec/terrace/Terrace;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->isActivityFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method public isCreatedWithTerrace()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->isCreatedWithTerrace()Z

    move-result p0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappInterceptNavigationDelegateClientImpl;->mActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->isWebContentsVisible()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
