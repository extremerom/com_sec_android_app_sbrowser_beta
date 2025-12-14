.class public Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;,
        Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;,
        Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;
    }
.end annotation


# instance fields
.field private mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurThreadIndex:I

.field private mMaxThreads:I

.field private mSize:Landroid/util/Size;

.field private mThumbnailHandlers:[Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

.field private mThumbnailSize:I

.field private mThumbnailThreads:[Landroid/os/HandlerThread;

.field private mUiUpdater:Landroid/os/Handler;

.field private mVideoThumbnailIndicator:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCurThreadIndex:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$1;

    const/high16 v1, 0x500000

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCache:Landroid/util/LruCache;

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailSize:I

    new-instance p1, Landroid/util/Size;

    iget p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailSize:I

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mMaxThreads:I

    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mMaxThreads:I

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mMaxThreads:I

    new-array p2, p1, [Landroid/os/HandlerThread;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailThreads:[Landroid/os/HandlerThread;

    new-array p1, p1, [Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailHandlers:[Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

    :goto_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mMaxThreads:I

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailThreads:[Landroid/os/HandlerThread;

    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "download_thumbnail_thread"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p2, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailThreads:[Landroid/os/HandlerThread;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailHandlers:[Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailThreads:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Landroid/os/Looper;)V

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mUiUpdater:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCache:Landroid/util/LruCache;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mSize:Landroid/util/Size;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailSize:I

    return p0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    :cond_0
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p0, p0, 0x2

    :goto_0
    div-int v2, v0, v1

    if-le v2, p2, :cond_1

    div-int v2, p0, v1

    if-le v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private createVideoThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    move v4, v3

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v2

    add-int/2addr v2, v4

    invoke-direct {v5, v1, v4, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailSize:I

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailSize:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, p1, v5, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->getVideoIndicator()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070520

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f07051c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07051e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v3, v3, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailSize:I

    sub-int v5, p0, v5

    sub-int/2addr v5, v7

    add-int/2addr v1, v7

    sub-int/2addr p0, v7

    invoke-direct {v3, v7, v5, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, p1, v8, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mUiUpdater:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->addToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->createVideoThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->getCenterCropBitmap(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static getBmpFactoryOption(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez p0, :cond_1

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCenterCropBitmap(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->getBmpFactoryOption(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->getCenterCropRect(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/32 v6, 0x4c4b40

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_0

    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->isSupportRegionDecoder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0, p2, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    const-string p1, "DownloadThumbnail"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v0
.end method

.method private getCenterCropRect(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Rect;
    .locals 4

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v0, 0x0

    if-le p0, p1, :cond_0

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    add-int v1, p0, p1

    move v3, v0

    move v0, p0

    move p0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    add-int v1, p1, p0

    move v3, v1

    move v1, p1

    move p1, v3

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getIconBitmapFromPackage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getFilePathForUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget p1, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz p1, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getVideoIndicator()Landroid/graphics/Bitmap;
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mVideoThumbnailIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mVideoThumbnailIndicator:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080379

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070520

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07051c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07051d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0603c9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07051f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mVideoThumbnailIndicator:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mVideoThumbnailIndicator:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v2

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v5

    invoke-virtual {v6, v7, v4, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v4, v8, v8, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    sub-int v7, v1, v3

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v2, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v5, v7, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v6, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mVideoThumbnailIndicator:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->getIconBitmapFromPackage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private isSupportRegionDecoder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "image/jpeg"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "image/png"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, ".dcf"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailThreads:[Landroid/os/HandlerThread;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public getThumbNail(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mThumbnailHandlers:[Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

    iget p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCurThreadIndex:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iget p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCurThreadIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCurThreadIndex:I

    iget p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mMaxThreads:I

    if-lt p1, p3, :cond_2

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->mCurThreadIndex:I

    :cond_2
    return-object v1
.end method
