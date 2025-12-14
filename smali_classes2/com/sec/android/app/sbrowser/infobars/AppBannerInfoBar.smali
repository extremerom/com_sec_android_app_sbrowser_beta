.class Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V

    return-object v0
.end method

.method private isWebApk()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->isWebApk()Z

    move-result p0

    return p0
.end method

.method private sendSAEvent(Ljava/lang/String;)V
    .locals 0

    const-string p0, "201"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->isWebApk()Z

    move-result v2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->getIconImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBarLayout;->setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    if-eqz v2, :cond_0

    const-string v1, "1131"

    goto :goto_0

    :cond_0
    const-string v1, "2053"

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;->sendSAEvent(Ljava/lang/String;)V

    return-object v0
.end method

.method public onCloseButtonClicked()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onCloseButtonClicked()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;->isWebApk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1133"

    goto :goto_0

    :cond_0
    const-string v0, "2050"

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;->sendSAEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onPrimaryButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;->isWebApk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1132"

    goto :goto_0

    :cond_0
    const-string v0, "2052"

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;->sendSAEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;->isWebApk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1134"

    goto :goto_0

    :cond_0
    const-string v0, "2051"

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;->sendSAEvent(Ljava/lang/String;)V

    return-void
.end method
