.class public Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;
    }
.end annotation


# instance fields
.field private mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

.field private final mContext:Landroid/content/Context;

.field private mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

.field private mPWAStatusRequestId:I

.field private final mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;-><init>(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mPWAStatusRequestId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    new-instance p1, Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    invoke-direct {p1, p0, p2}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;-><init>(Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;Lcom/sec/terrace/Terrace;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;IZ)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->lambda$onDisplayAppBanner$0(IIZ)V

    return-void
.end method

.method private getLastGeneratedRequestId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mPWAStatusRequestId:I

    return p0
.end method

.method private getNewRequestId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mPWAStatusRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mPWAStatusRequestId:I

    return v0
.end method

.method private getPWAStatus(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->getNewRequestId()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->fetchPWAStatus(ILjava/lang/String;I)Z

    return-void
.end method

.method private synthetic lambda$onDisplayAppBanner$0(IIZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->sendBannerEvent(I)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->addShortcut(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->sendBannerEvent(I)V

    :goto_0
    return-void
.end method

.method private logManifestDetails(Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Manifest Info: [name = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", scope = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", startUrl = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getStartUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", manifestUrl = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", display = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", orientation = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getOrientation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icons size = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getIcons()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppBannerManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onAllowed(Ljava/lang/String;I)V
    .locals 1

    const-string p1, "AppBannerManager"

    const-string v0, "Shortcut Installation is allowed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    const/16 p1, 0xa

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->addShortcut(II)V

    return-void
.end method

.method private onDenied(Ljava/lang/String;)V
    .locals 0

    const-string p0, "AppBannerManager"

    const-string p1, "Shortcut Installation is denied."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDismissed(Ljava/lang/String;)V
    .locals 0

    const-string p0, "AppBannerManager"

    const-string p1, "Shortcut Installation is dismissed."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addShortcut(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;->onAcceptBannerInstallation(II)V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public closeBannerIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->closeBannerIfNeeded()V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

    return-void
.end method

.method public destroyDialogIfExisted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->destroyDialogIfExisted(Landroid/content/Context;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getWebappInfo()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    return-object p0
.end method

.method public isSupportAppBanner(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBannerShownResult(Ljava/lang/String;II)V
    .locals 2

    const-string v0, "Banner shown & response received: "

    const-string v1, "AppBannerManager"

    invoke-static {p2, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->onDismissed(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->onDenied(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->onAllowed(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onDisplayAppBanner(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mContext:Landroid/content/Context;

    new-instance v1, LG6/b;

    invoke-direct {v1, p1, p0}, LG6/b;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->showDialog(Landroid/content/Context;Landroid/view/View;ZLcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFetchedManifest(ILcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)V
    .locals 0

    return-void
.end method

.method public onFetchedManifestWithPWAStatus(ILcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;I)V
    .locals 3

    const-string v0, "PWA status["

    const-string v1, "]: "

    const-string v2, "["

    invoke-static {p1, p3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mPWAStatusRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppBannerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->getLastGeneratedRequestId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;->onPWAStatusUpdated(I)V

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-gt p3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->isSupportAppBanner(I)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->logManifestDetails(Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)V

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->processAppBannerIfRequired(Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;I)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Cannot show app banner"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWebApkFinishedInstalled(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mManifestDataFetcher:Lcom/sec/terrace/TerraceAppBannerDataFetcher;

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->onInstall()V

    :cond_0
    return-void
.end method

.method public processAppBannerIfRequired(Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;I)V
    .locals 0

    return-void
.end method

.method public requestPWASupportStatus(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->mBannerDelegate:Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;->isIncognitoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerUtils;->getOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->getPWAStatus(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->getNewRequestId()I

    move-result p0

    const-string p1, "CurrentOrigin is empty, skip pwa request id = "

    const-string v0, "AppBannerManager"

    invoke-static {p0, p1, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
