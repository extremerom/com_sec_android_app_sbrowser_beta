.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;
.super Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/TabObserver;
.implements Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;


# instance fields
.field private mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

.field private final mBackgroundPlayCustomHandler:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;

.field private mBarcodeDetectionHandler:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

.field private mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

.field private mContext:Landroid/content/Context;

.field private mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field private mImageTextTranslator:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

.field private mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

.field private mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

.field private mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

.field private mMainViewCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mObjectCaptureController:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

.field private mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

.field private mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

.field private mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mVirtualCardPreview:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;

.field private final mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabObserver;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;-><init>(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$1;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;-><init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$2;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;-><init>(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBackgroundPlayCustomHandler:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    new-instance p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;-><init>(Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->lambda$addShortcut$1(II)V

    return-void
.end method

.method private addShortcutInternal(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;III)V

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->requestNotificationPermissionIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->run()V

    return-void
.end method

.method private adjustInfoBarContainer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getBottomMargin()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->adjustInfoBarContainer(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->lambda$onPrimaryMainDocumentElementAvailable$4()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->lambda$new$0()V

    return-void
.end method

.method private canUseHandoff()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isSendingAvailable(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isWebStateHandoffSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isAppDataProviderSupported()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabInterceptNavigationDelegateClientImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabInterceptNavigationDelegateClientImpl;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->lambda$onFullscreenModeChanged$3(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->lambda$addShortcutInternal$2(II)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->adjustInfoBarContainer()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0
.end method

.method private handleDidFinishLoadForAppBanner(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getEnablePWA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->requestPWASupportStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setPwaType(I)V

    :goto_0
    return-void
.end method

.method private hasActiveEffectivelyFullscreenVideo()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->hasActiveEffectivelyFullscreenVideo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasInfoBarContainer()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->addShortcutInternal(II)V

    return-void
.end method

.method private initBarcodeDetectionHandler()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBarcodeDetectionHandler:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->isMainViewTab()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBarcodeDetectionHandler:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    :cond_1
    :goto_0
    return-void
.end method

.method private initLiveTextController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->createLiveTextController(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->setDelegate(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;)V

    :cond_1
    return-void
.end method

.method private initObjectCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mObjectCaptureController:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->createObjectCaptureController(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mObjectCaptureController:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    return-void
.end method

.method private initializeAppBanner()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-eqz v0, :cond_0

    const-string p0, "TabEventHandler"

    const-string v0, "initializeAppBanner, return"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$4;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;-><init>(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    return-void
.end method

.method private initializeBlockUnwantedWebpages()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    return-void
.end method

.method private initializeInfoBar()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;-><init>(Lcom/sec/terrace/Terrace;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getBottomMargin()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->setBottomBarEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    return-void
.end method

.method private initializeInterceptNavigationDelegate()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->create()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->createExternalNavigationHandler(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->createInterceptNavigationDelegate()Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V

    :cond_0
    return-void
.end method

.method private initializePreview()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mVirtualCardPreview:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;-><init>(Lcom/sec/terrace/Terrace;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mVirtualCardPreview:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;

    return-void
.end method

.method private isBasicLayoutType()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isFocusLayoutType()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

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

.method private synthetic lambda$addShortcut$1(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->addShortcutInternal(II)V

    return-void
.end method

.method private synthetic lambda$addShortcutInternal$2(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setIsInstalling(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->closeBannerIfNeeded()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->addShortcut(II)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyPWAStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private synthetic lambda$onFullscreenModeChanged$3(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBottomMargin()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->onToggleFullscreenModeForTab(ZII)V

    return-void
.end method

.method private synthetic lambda$onPrimaryMainDocumentElementAvailable$4()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const-string v0, "!function(){\n    var js = \'window.MediaSource = NaN;\';\n    var head = document.head || document.getElementsByTagName(\'head\')[0];\n    var script = document.createElement(\'script\');\n    head.appendChild(script);\n    script.appendChild(document.createTextNode(js));\n}();"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method private performAccessibilityAction()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AccessibilityFocus"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    const/16 p0, 0x40

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private requestNumberOfBlockedElements()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->requestNumberOfBlockedElements()V

    :cond_0
    return-void
.end method

.method private shouldAllowRefreshOnHomePage()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->isMostVisitedEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsUnifiedHomePage()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addShortcut(IILandroid/view/View;Z)V
    .locals 3
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;III)V

    invoke-static {v0, p3, p4, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->showDialog(Landroid/content/Context;Landroid/view/View;ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->addShortcutInternal(II)V

    :goto_0
    return-void
.end method

.method public clearBitmapData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->resetAndClearExtractTextInfo()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mObjectCaptureController:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->removeOCInfo()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBarcodeDetectionHandler:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->removeBarcodeInfo()V

    :cond_2
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->destroy()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->onDestroy()V

    :cond_2
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyClosed()V

    :cond_3
    return-void
.end method

.method public closeInfoBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->hasInfoBarContainer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->destroy()V

    return-void
.end method

.method public didRemoveObjectCaptureView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mObjectCaptureController:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    move-result p0

    return p0
.end method

.method public didRemoveVisionTextView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    move-result p0

    return p0
.end method

.method public dismissDialogForNavigation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldStayInIncognito(ZLjava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->dismissDialogForNavigation(Z)V

    return-void
.end method

.method public extractTextMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->extractTextMenu(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBarcodeDetectionHandler:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    return-object p0
.end method

.method public getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    return-object p0
.end method

.method public getImageTextTranslator()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->isMainViewTab()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mImageTextTranslator:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->createImageTextTranslator(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mImageTextTranslator:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mImageTextTranslator:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    return-object p0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    return-object p0
.end method

.method public getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    return-object p0
.end method

.method public getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mObjectCaptureController:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    return-object p0
.end method

.method public getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    return-object p0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    return-object p0
.end method

.method public goBack()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->showBlockUnwantedWebpagesDialogIfNeeded()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBlockUnwantedWebpages:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->updateBlockUnwantedWebpagesDb()Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mVirtualCardPreview:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;->onCancel()V

    :cond_1
    return-void
.end method

.method public hideInfoBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->hasInfoBarContainer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initializeInfoBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initializePreview()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initializeAppBanner()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initializeInterceptNavigationDelegate()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initializeBlockUnwantedWebpages()V

    return-void
.end method

.method public isExtensionSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedReaderPage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isOfflineModePage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "about:blank"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->isMainViewTab()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isHoverScrollEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isInfoBarPresent()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->hasInfoBarContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMainViewTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    instance-of p0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return p0
.end method

.method public notifyWebContentsCreated(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyWebContentsCreated(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onBottomOffsetsForFullscreenChanged(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onBottomOffsetsForFullscreenChanged(F)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->isFocusLayoutType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->isInfoBarPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getBottomMargin()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->handleBottomOffsetsForFullscreenChanged(IF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V

    :cond_2
    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onContentsZoomChange(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->onContentsZoomChange(Z)V

    :cond_0
    return-void
.end method

.method public onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->destroyDialogIfExisted(Landroid/content/Context;)V

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 6

    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->reset()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    const/4 v3, 0x1

    move-wide v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDidFinishNavigation(ZZZ)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->maybeUpdateNavigationHistory()V

    :cond_1
    return-void
.end method

.method public onDidNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDidNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_1
    return-void
.end method

.method public onDidRetrieveWebState(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDidRetrieveWebState(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->canUseHandoff()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getHandoffHelper()Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getHandoffHelper()Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->sendWebState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->onUrlChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->requestNumberOfBlockedElements()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->didRemoveVisionTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDragEntered()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDragEntered()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    :cond_0
    return-void
.end method

.method public onFirstVisuallyNonEmptyPaint()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onFirstVisuallyNonEmptyPaint()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mMainViewCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mMainViewCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method

.method public onFullscreenModeChanged(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onFullscreenModeChanged(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToggleFullscreenModeForTab(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getSelectedText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    const-wide/16 p0, 0x96

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onImageResourceLoadComplete(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onImageResourceLoadComplete(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBoardingPassProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBoardingPassProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->onImageResourceLoadComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoadFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    if-ne p1, v0, :cond_0

    const-string v0, "201"

    const-string v1, "8345"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TabEventHandler"

    const-string v1, "onLoadFailed : fail connect multi cp, Timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->requestNumberOfBlockedElements()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->printStatusLog(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/logging/GateMessage;->printGateMessageForErrorCode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyLoadFailed(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onLoadFailed(ZZILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onLoadFailed(ZZILjava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->reset()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyPWAStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_1
    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->onLoadFinished(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->printStatusLog(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->requestNumberOfBlockedElements()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->showErrorNotificationIfNeeded(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->onPageFinishedUpdateSyncDB(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->handleDidFinishLoadForAppBanner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isErrorPage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/logging/GateMessage;->printGateMessage(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyLoadFinished(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mImageTextTranslator:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->onLoadFinished()V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBoardingPassProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBoardingPassProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->startProbableBoardingPassImageScan(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "201"

    const-string v1, "8344"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TabEventHandler"

    const-string v1, "onLoadStarted : Try connect multi cp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->onLoadStarted()V

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/logging/GateMessage;->printGateMessage(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->destroyDialogIfExisted(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyLoadStarted(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->getOrCreateInstance()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->dismissDialog()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mImageTextTranslator:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->cancelTranslationAndPerformCleanup()V

    :cond_3
    return-void
.end method

.method public onLoadingStatusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onLoadingStatusChanged(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsLoading(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyLoadFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNavigationStateChangedUpdateTitle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateTitle()V

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onOffsetsForFullscreenChanged(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->isBasicLayoutType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->isInfoBarPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getTopMargin()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getBottomMargin()I

    move-result v2

    neg-float v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->handleOffsetsForFullscreenChanged(IIF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V

    :cond_2
    return-void
.end method

.method public onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p2

    if-nez p6, :cond_0

    iget-object p6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    invoke-virtual {p6, p1, p2, p4, p5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->shouldIgnoreNewTab(Ljava/lang/String;ZZLcom/sec/terrace/TerraceOrigin;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    const-string p4, "onOpenNewTab : disposition = "

    const-string p5, "TabEventHandler"

    invoke-static {p3, p4, p5}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    const/4 p4, 0x4

    if-ne p3, p4, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOpenInNewTab(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onPrimaryMainDocumentElementAvailable()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onPrimaryMainDocumentElementAvailable()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->applyCustomCss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBackgroundPlayCustomHandler:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;->updateAllowed(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isHtmlMediaSourceDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/o;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onReadyToShowTabAfterRecreate(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->handleDidFinishLoadForAppBanner(Ljava/lang/String;)V

    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onScrollEnded(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->canUseHandoff()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->retrieveWebState()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->onScrollEnded()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->performAccessibilityAction()V

    return-void
.end method

.method public onScrollStarted(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onScrollStarted(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->onScrollStarted()V

    :cond_0
    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mExternalNavigationHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->linkify(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onTabHidden()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->onTabHidden()V

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getInstance()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->flushCookieStore()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyHidden()V

    :cond_0
    return-void
.end method

.method public onTabShown()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->onTabShown()V

    return-void
.end method

.method public onWebApkFinishedInstalled(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onWebApkFinishedInstalled(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setWebApkInstallResult(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->onWebApkFinishedInstalled(I)V

    :cond_0
    return-void
.end method

.method public onWebSearch(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onWebSearch(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "com.android.browser.application_id"

    const-string v1, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "create_new_tab"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ActivityNotFoundException :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "TabEventHandler"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initBarcodeDetectionHandler()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initLiveTextController()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initObjectCaptureController()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mBarcodeDetectionHandler:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->startBarcodeDetectionOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mObjectCaptureController:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->prepareForObjectCaptureOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getImageTextTranslator()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getImageTextTranslator()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    :cond_0
    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->onRequestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void
.end method

.method public revokeObjectCaptureDragImageUriPermissions()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mObjectCaptureController:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->revokeDragImageUriPermissions()V

    :cond_0
    return-void
.end method

.method public setMainViewPhoneCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mMainViewCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method

.method public shouldPerformPullToRefresh()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->shouldAllowRefreshOnHomePage()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isOfflineModePage()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->changeUserAgentIfNeeded(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public showInfoBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->hasInfoBarContainer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->hasActiveEffectivelyFullscreenVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->adjustInfoBarContainer()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public supportPullToRefresh()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->shouldAllowRefreshOnHomePage()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_pull_to_refresh"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public updateInfoBar()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->hasInfoBarContainer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->hasActiveEffectivelyFullscreenVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/o;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->updateSavePasswordInfoBar()V

    return-void
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->updateIntent(Landroid/content/Intent;)V

    return-void
.end method
