.class public Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SPLASH_SCREEN_CACHE_DIR:Ljava/lang/String;


# instance fields
.field private mDiskCacheDir:Ljava/io/File;

.field private final mDiskCacheSize:I

.field private mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "SplashScreen"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->SPLASH_SCREEN_CACHE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->SPLASH_SCREEN_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskCacheDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SplashScreenBitmapManager"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/high16 p1, 0x6400000

    iput p1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskCacheSize:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->initializeDiskCache()V

    return-void
.end method

.method private initializeDiskCache()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskCacheDir:Ljava/io/File;

    const-string v1, "SplashScreenBitmapManager"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskCacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->getAvailableSpace(Ljava/io/File;)J

    move-result-wide v2

    iget v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskCacheSize:I

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskCacheDir:Ljava/io/File;

    int-to-long v3, v0

    const/4 v0, 0x1

    invoke-static {v2, v0, v0, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initDiskCache failed! - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "Disk cache initialization failed! Not enough disk space."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "directory creation failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->get(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;->close()V

    :cond_0
    return-object p1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;->close()V

    return-object p1

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method private writeToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->edit(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->commit()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "writeToCache(): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplashScreenBitmapManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public clearBitmapCache()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->initializeDiskCache()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->close()V

    :cond_0
    return-void
.end method

.method public getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->readFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SplashScreenBitmapManager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method public storeBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->mDiskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->writeToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SplashScreenBitmapManager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
