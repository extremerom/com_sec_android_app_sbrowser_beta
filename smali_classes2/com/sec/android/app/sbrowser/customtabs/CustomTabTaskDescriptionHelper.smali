.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

.field private mDefaultThemeColor:I

.field private mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

.field private mForceIcon:Landroid/graphics/Bitmap;

.field private mForceTitle:Ljava/lang/String;

.field private mIconGenerator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;

.field private mIconTabObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;

.field private final mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

.field private mLargestFavicon:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTabObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;

.field private mUseClientIcon:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->initialize()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->lambda$fetchIcon$0(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mLargestFavicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->fetchIcon()V

    return-void
.end method

.method private computeIcon()Landroid/graphics/Bitmap;
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mUseClientIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "CustomTabTaskDescriptionHelper"

    const-string v0, "[computeIcon] use client icon"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mForceIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIconGenerator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mLargestFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private computeThemeColor()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mDefaultThemeColor:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->isValidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getThemeColor()I

    move-result v1

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getOpaqueColor(I)I

    move-result p0

    return p0
.end method

.method private computeTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mForceTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mForceTitle:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->onActiveTabChanged()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->updateTaskDescription()V

    return-void
.end method

.method private fetchIcon()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->isValidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/sec/android/app/sbrowser/customtabs/b;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v2, v0, p0, v3}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLocalFaviconImageForURL(Ljava/lang/String;ILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z

    return-void
.end method

.method private initialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->usesSeparateTask()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const v2, 0x7f0602d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mDefaultThemeColor:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->hasCustomToolbarColor()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getToolbarColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mDefaultThemeColor:I

    :cond_2
    iget-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->icon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mForceIcon:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->shortName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mForceTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isWebApkActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mUseClientIcon:Z

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIconGenerator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;

    new-instance v0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->startObserving()V

    return-void
.end method

.method private isValidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$fetchIcon$0(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->isValidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->updateFavicon(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "CustomTabTaskDescriptionHelper"

    const-string p1, "[fetchIcon] url is not matched"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onActiveTabChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->updateTaskDescription()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mForceIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->fetchIcon()V

    :cond_0
    return-void
.end method

.method private startObserving()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mTabObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->registerActivityTabObserver(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mForceIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mUseClientIcon:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$2;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIconTabObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->registerActivityTabObserver(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;)V

    :cond_0
    return-void
.end method

.method private stopObserving()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mTabObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->unregisterActivityTabObserver(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mIconTabObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->unregisterActivityTabObserver(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;)V

    return-void
.end method

.method private updateFavicon(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mLargestFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mLargestFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mLargestFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateFavicon] favicon size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabTaskDescriptionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mLargestFavicon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->updateTaskDescription()V

    :cond_2
    return-void
.end method

.method private updateTaskDescription()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->computeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->computeIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->computeThemeColor()I

    move-result p0

    invoke-direct {v1, v2, v3, p0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method private usesSeparateTask()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10080000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->destroy()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->stopObserving()V

    return-void
.end method
