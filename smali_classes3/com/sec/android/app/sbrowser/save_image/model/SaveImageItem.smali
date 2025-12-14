.class public Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;,
        Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$ImageState;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mChecked:Z

.field private mGifData:[B

.field private final mId:I

.field private mImageSrc:Ljava/lang/String;

.field private mIsGif:Z

.field private mIsHttpImage:Z

.field private mRunningTask:Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

.field private mState:I

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailSize:I

.field private mThumbnailTask:Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mCallBackList:Ljava/util/List;

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mId:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mState:I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setImageSrc(Ljava/lang/String;)V

    return-void
.end method

.method private finishThumbnailTask()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailTask:Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailTask:Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;

    :cond_0
    return-void
.end method

.method private getAdjustBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v3, p0, v0

    mul-int v4, v2, v1

    if-le v3, v4, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    if-le p0, v0, :cond_0

    int-to-float v1, v2

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    mul-float/2addr p0, v1

    move v0, v1

    move v1, p0

    :goto_0
    float-to-int p0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :catch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private static isCurrentlyLowMemory()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    :cond_0
    iget-boolean v0, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    return v0
.end method

.method private notifyBitmapChanged()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mCallBackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;

    invoke-interface {v1, p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;->onItemChanged(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mCallBackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addCallBack(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mCallBackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mGifData:[B

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mRunningTask:Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->finish()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mRunningTask:Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mRunningTask:Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailTask:Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->finish()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailTask:Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailTask:Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mCallBackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getGifData()[B
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mGifData:[B

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mId:I

    return p0
.end method

.method public getImageSrc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mImageSrc:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mState:I

    return p0
.end method

.method public getThumbnailBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailSize:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->loadThumbnailBitmap(I)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mChecked:Z

    return p0
.end method

.method public isGif()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mIsGif:Z

    return p0
.end method

.method public isHttpImage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mIsHttpImage:Z

    return p0
.end method

.method public loadImageBitmapFromCache()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getImageSrc()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public loadImageBitmapFromUrl()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mRunningTask:Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;-><init>(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mRunningTask:Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public loadThumbnailBitmap(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->finishThumbnailTask()V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;-><init>(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailTask:Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    const-string v3, "image "

    const-string v4, "SaveImageItem"

    const/16 v5, 0xa

    if-le p2, v5, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-gt p2, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getAdjustBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p2

    :goto_0
    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mState:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p2

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mState:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mId:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is invalid : ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") - "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mImageSrc:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_6

    move v2, v0

    :cond_6
    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mState:I

    if-ne v2, v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->loadImageBitmapFromUrl()V

    :cond_7
    :goto_3
    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mState:I

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mRunningTask:Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mRunningTask:Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->notifyBitmapChanged()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mChecked:Z

    return-void
.end method

.method public setGifData([B)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mGifData:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mGifData:[B

    :goto_0
    return-void
.end method

.method public setImageSrc(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mImageSrc:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mIsGif:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mIsHttpImage:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isCurrentlyLowMemory()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->loadImageBitmapFromCache()V

    :goto_1
    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->finishThumbnailTask()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->notifyBitmapChanged()V

    return-void
.end method
