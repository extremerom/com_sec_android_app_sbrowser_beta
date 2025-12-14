.class public Lcom/sec/android/app/sbrowser/customtabs/features/CustomTabNavigationBarController;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getDividerColor(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const p1, 0x7f060123

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static update(Landroid/view/Window;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getNavigationBarColor()Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getNavigationBarDividerColor()Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isExtraLaunchWithReadArticlesAloud()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0608eb

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    :cond_2
    const/4 p1, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/ui/util/ColorUtils;->shouldUseLightForegroundOnBackground(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, p1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {p0, v2, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/CustomTabNavigationBarController;->updateBarColor(Landroid/view/Window;Ljava/lang/Integer;ZZ)V

    invoke-static {p2, v2, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/CustomTabNavigationBarController;->getDividerColor(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    :cond_4
    return-void
.end method

.method private static updateBarColor(Landroid/view/Window;Ljava/lang/Integer;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p3, :cond_1

    or-int/lit8 p3, v0, 0x10

    goto :goto_0

    :cond_1
    and-int/lit8 p3, v0, -0x11

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/chromium/ui/util/ColorUtils;->getDarkenedColorForStatusBar(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method
