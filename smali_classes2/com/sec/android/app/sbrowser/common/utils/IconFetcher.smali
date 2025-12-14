.class public Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;
    }
.end annotation


# instance fields
.field private mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

.field private mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mLruCache:Landroid/util/LruCache;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;)Landroid/util/LruCache;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mLruCache:Landroid/util/LruCache;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->sendIconFetchedMessage(Landroid/os/Handler;)V

    return-void
.end method

.method public static getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "out of memory in getByteArrayForBitmap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IconFetcher"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    return-object v0
.end method

.method private sendIconFetchedMessage(Landroid/os/Handler;)V
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ICON_REQUEST_COMPLETED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;

    invoke-direct {v0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;-><init>(Landroid/graphics/Bitmap;J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mLruCache:Landroid/util/LruCache;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public clearCache()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mLruCache:Landroid/util/LruCache;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;->getImage()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getDominantColorFromMemCache(Ljava/lang/String;)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mLruCache:Landroid/util/LruCache;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;->getDominantColor()J

    move-result-wide p0

    return-wide p0
.end method

.method public getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    return-object p0
.end method

.method public getIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->mLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestIcon(Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;-><init>(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;IILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, p2, p3, v7}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLocalFaviconImageForURL(Ljava/lang/String;IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z

    return-void
.end method

.method public requestIcon(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;Ljava/lang/String;Landroid/os/Handler;)V

    const/16 p0, 0x40

    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    return-void
.end method
