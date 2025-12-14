.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;


# instance fields
.field private final mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->lambda$loadFavicon$0(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->sInstance:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->sInstance:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->sInstance:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isAvailableFavicon(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$loadFavicon$0(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->isAvailableFavicon(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "TabButtonFaviconFetcher"

    const-string p5, "[onFaviconAvailable] adding to Bitmap Cache"

    invoke-static {p0, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p0

    invoke-virtual {p0, p1, p4, p6, p7}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getRequestedFaviconUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3, p4, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateFavicon(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public loadFavicon(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setRequestedFaviconUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->isAvailableFavicon(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateFavicon(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    filled-new-array {v2}, [I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    new-instance v4, LEa/a;

    invoke-direct {v4, p0, v0, p2, p1}, LEa/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p2, v2, v1, v4}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    :goto_0
    return-void
.end method
