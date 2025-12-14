.class public Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/view/View;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;
    .locals 7
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->hasExternalSource()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;-><init>(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/view/View;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)V

    return-object v0

    :cond_0
    new-instance p3, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;-><init>(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)V

    return-object p3
.end method
