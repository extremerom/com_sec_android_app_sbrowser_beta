.class public Lcom/sec/android/app/sbrowser/webapp/Webapp;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/TabLayout;
.implements Lcom/sec/android/app/sbrowser/tab/TabObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;
    }
.end annotation


# instance fields
.field private mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

.field private final mActivity:Landroid/app/Activity;

.field private mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

.field private mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

.field private mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

.field private mIsActivityPaused:Z

.field private mIsLoading:Z

.field private mIsSameDocument:Z

.field private mLargestFavicon:Landroid/graphics/Bitmap;

.field private mOldWebappCleanupStarted:Z

.field private mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

.field private mReloadPageOnResume:Z

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mThemeColor:Ljava/lang/Integer;

.field private mTitle:Ljava/lang/String;

.field protected mWebAppActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

.field private final mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

.field private final mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

.field private final mWebappInterface:Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/webapp/Webapp$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp$1;-><init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/Webapp$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp$2;-><init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;-><init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInterface:Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;

    check-cast p1, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebAppActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-static {p3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->create(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/webapp/Webapp;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->lambda$addShortcut$0(I)V

    return-void
.end method

.method private addShortcut(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LG6/c;

    const/16 v1, 0x11

    invoke-direct {v0, p1, v1, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->requestNotificationPermissionIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v0}, LG6/c;->run()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private createContextmenuPopulator()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/webapp/WebappContextMenuPopulator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/webapp/WebappContextMenuPopulator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/Webapp$5;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/webapp/Webapp$5;-><init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;Lcom/sec/terrace/Terrace;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTab(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/Webapp$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp$6;-><init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->addEventListener(Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/webapp/Webapp;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->addShortcut(I)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/webapp/Webapp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->saveAllImages(Ljava/lang/String;)V

    return-void
.end method

.method private handleDidFinishLoad(ILjava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didFinishLoad frameId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")isMainFrame = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Webapp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsLoading:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsLoading:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsSameDocument:Z

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->requestAppBanner(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initAppBanner()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-eqz v0, :cond_0

    const-string p0, "Webapp"

    const-string v0, "initAppBanner, return"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInterface:Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/webapp/Webapp$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp$4;-><init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerFactory;->create(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/view/View;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    return-void
.end method

.method private initInfoBar()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInterface:Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;->getContentViewHolder()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;-><init>(Lcom/sec/terrace/Terrace;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->setBottomBarEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$addShortcut$0(I)V
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setIsInstalling(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->source()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addShortcut(II)V

    return-void
.end method

.method private requestAppBanner(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getEnablePWA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->requestPWASupportStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setPwaType(I)V

    :goto_0
    return-void
.end method

.method private saveAllImages(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez p0, :cond_0

    const-string p0, "Webapp"

    const-string p1, "scanAllImages :: tab is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->scanImages(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    return-object p0
.end method

.method public bridge synthetic getBottomMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getCurrentVisibleContentRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    return-object p0
.end method

.method public getTabDelegate()Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getTopMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getVisibleBottomMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleBottomMargin()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getVisibleTopMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result p0

    return p0
.end method

.method public goBackIfPossible()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v1, 0x0

    const-string v2, "Webapp"

    if-nez v0, :cond_0

    const-string p0, "tab is null finishing the activity"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v0, "Fullscreen mode now, exit fullscreen."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->exitFullscreen()V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->destroySelectActionMode()V

    return v3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->goBack()Z

    return v3

    :cond_3
    return v1
.end method

.method public goForwardIfPossible()V
    .locals 2

    const-string v0, "Webapp"

    const-string v1, "onForwardPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->canGoForward()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->goForward()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivateContents()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->webApkPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    invoke-static {v2, v0, p0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->createLaunchWebApkIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v0, "com.sec.android.app.sbrowser.beta.webapp.WebappManager.ACTION_START_WEBAPP"

    invoke-static {v0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->copyWebappLaunchIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCloseContents()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->close()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Webapp"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    :cond_1
    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0

    if-eqz p3, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsLoading:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->reset()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebAppActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebAppActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->clear()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsSameDocument:Z

    if-eqz p4, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mReloadPageOnResume:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->destroyCrashView()V

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsLoading:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->onLoadStarted()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->clear()V

    :cond_2
    return-void
.end method

.method public onFaviconUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->icon()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mLargestFavicon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mLargestFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mLargestFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mLargestFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateTaskDescription()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFirstVisuallyNonEmptyPaint()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInterface:Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;->hideSplashScreen()V

    return-void
.end method

.method public onFullscreenModeChanged(ZZ)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateThemeUI()V

    :cond_0
    const v0, 0x7f0b0d77

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarVisible(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    if-nez p2, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavBarVisibility(Landroid/content/Context;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->onToggleFullscreenModeForTab(Z)V

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    const p1, 0x1020002

    const p2, 0x7f140564

    invoke-static {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    :cond_5
    return-void
.end method

.method public onHidden()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebAppActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebAppActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadFailed(ZZILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsLoading:Z

    return-void
.end method

.method public onLoadFinished(JLjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInterface:Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;->hideSplashScreen()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->handleDidFinishLoad(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onLoadingStatusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsLoading:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsLoading:Z

    :cond_0
    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->createTerrace(Z)Lcom/sec/terrace/Terrace;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/webapp/Webapp$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp$3;-><init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;Lcom/sec/terrace/Terrace;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/sbrowser/tab/Tab;->initialize(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->setWebappInfo(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setFindEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->createContextmenuPopulator()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInterface:Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;->initializeInterceptNavigationDelegate(Lcom/sec/terrace/Terrace;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Webapp"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsActivityPaused:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateTaskDescription()V

    return-void
.end method

.method public onPrimaryMainDocumentElementAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->applyCustomCss()V

    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsActivityPaused:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->showCrashView()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mReloadPageOnResume:Z

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "Webapp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsActivityPaused:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mReloadPageOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->reload()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getActivityInfoOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mOldWebappCleanupStarted:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->unregisterOldWebapps(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mOldWebappCleanupStarted:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mInfoBarService:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->updateSavePasswordInfoBar()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateThemeUI()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mReloadPageOnResume:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->hasExternalSource()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->requestAppBanner(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Webapp"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    :cond_0
    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    const-string p0, "Webapp"

    const/4 p3, 0x1

    :try_start_0
    invoke-static {p2, p3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Uri error : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No related Activity Found : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Webapp"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->hide()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->onTabHidden()V

    :cond_1
    return-void
.end method

.method public onThemeColorChanged(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mThemeColor:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateThemeUI()V

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateTaskDescription()V

    return-void
.end method

.method public onWebApkFinishedInstalled(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mPwaStatus:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setWebApkInstallResult(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mAppBannerManager:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->onWebApkFinishedInstalled(I)V

    :cond_0
    return-void
.end method

.method public onWebSearch(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Webapp"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.customtabs.extra.SESSION"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p0, "CustomTab is launched."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ActivityNotFoundException :"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActiveTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebDarkCustomHandler:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->onTabShown()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInterface:Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareData()LK/a;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;->loadUrl(Ljava/lang/String;LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mIsLoading:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->initInfoBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->initAppBanner()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateThemeUI()V

    return-void
.end method

.method public updateTaskDescription()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mTitle:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->icon()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->icon()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mLargestFavicon:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mThemeColor:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->hasValidThemeColor()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->themeColor()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mThemeColor:Ljava/lang/Integer;

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060de1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mThemeColor:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mThemeColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getOpaqueColor(I)I

    move-result v2

    invoke-direct {v3, v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public updateThemeUI()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mThemeColor:Ljava/lang/Integer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060d8e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateThemeUI()  color = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Webapp"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "This condition is not valid as per the current scenario, need to check further."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;-><init>(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getThemeColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->updateTaskDescription()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_MAIN_VIEW:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :goto_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    return-void
.end method
