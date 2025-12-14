.class public interface abstract Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;


# virtual methods
.method public addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 0

    return-void
.end method

.method public attachThinWebView(Z)V
    .locals 0

    return-void
.end method

.method public createLoadUrlParams(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createLoadUrlParamsForIntent(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public detachThinWebView(Z)V
    .locals 0

    return-void
.end method

.method public getActiveTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoardingPassProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageTextTranslator()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/tab/TabLayout;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-object p0
.end method

.method public getThinWebView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisitCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleAssistantMenuItemClicked()V
    .locals 0

    return-void
.end method

.method public isExtractionFailed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChangedFromMainView(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onExtractTextEnded()V
    .locals 0

    return-void
.end method

.method public onExtractTextStarted()V
    .locals 0

    return-void
.end method

.method public onMainActivityRecreated(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onObjectCaptureEnded()V
    .locals 0

    return-void
.end method

.method public onObjectCaptureStarted()V
    .locals 0

    return-void
.end method

.method public onReadyToShowTabAfterRecreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onSetToCurrentTab(Z)V
    .locals 0

    return-void
.end method

.method public onSetToNotCurrentTab(Z)V
    .locals 0

    return-void
.end method

.method public removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 0

    return-void
.end method

.method public requestUserAgent(ZLandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public savePageUtilityCheck()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setActiveTime(J)V
    .locals 0

    return-void
.end method

.method public setMainViewTabCallback(Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;)V
    .locals 0

    return-void
.end method

.method public setTab(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V
    .locals 0

    return-void
.end method

.method public setVisitCount(I)V
    .locals 0

    return-void
.end method

.method public showReloadTipCardIfNeeded()V
    .locals 0

    return-void
.end method
