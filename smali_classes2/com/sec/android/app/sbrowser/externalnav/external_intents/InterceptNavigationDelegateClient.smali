.class public interface abstract Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public checkParentalControl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public closeTab()V
    .locals 0

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastUserInteractionTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNativeClientPackageName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBlockDeepLinkEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isClosed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCreatedWithTerrace()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncognito()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadUrlIfPossible(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V
    .locals 0

    return-void
.end method

.method public notifyTabChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setExternalNavigationParams(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;)V
    .locals 0

    return-void
.end method

.method public wasTabLaunchedFromExternalApp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
