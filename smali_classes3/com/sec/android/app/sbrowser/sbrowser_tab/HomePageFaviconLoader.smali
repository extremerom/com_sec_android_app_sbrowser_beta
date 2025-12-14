.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/HomePageFaviconLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sHomePageFavicon:Landroid/graphics/Bitmap;


# direct methods
.method public static declared-synchronized getHomePageFavicon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/HomePageFaviconLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/HomePageFaviconLoader;->sHomePageFavicon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0802c0

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->getResizedBitmapImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/HomePageFaviconLoader;->sHomePageFavicon:Landroid/graphics/Bitmap;

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/HomePageFaviconLoader;->sHomePageFavicon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
