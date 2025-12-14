.class public Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;,
        Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setArticleImageInBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setArticleImageInBackground(Landroid/graphics/Bitmap;)V
    .locals 12

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setImage(Landroid/graphics/Bitmap;Z)Landroid/util/Pair;

    return-void

    :cond_1
    const/16 v2, 0xa

    new-array v3, v2, [Landroid/media/FaceDetector$Face;

    new-instance v4, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6, v2}, Landroid/media/FaceDetector;-><init>(III)V

    invoke-virtual {v4, v0, v3}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->recycleBitmapIfNeeded(Landroid/graphics/Bitmap;)V

    const-string v0, "SavedPageModel"

    if-gtz v4, :cond_2

    const-string v2, "setArticleImageInBackground - Face not detected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setImage(Landroid/graphics/Bitmap;Z)Landroid/util/Pair;

    goto/16 :goto_9

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setArticleImageInBackground - Face detected : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3ecccccd    # 0.4f

    move v9, v5

    move v8, v6

    :goto_0
    if-ge v8, v2, :cond_6

    aget-object v10, v3, v8

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/media/FaceDetector$Face;->confidence()F

    move-result v11

    cmpl-float v11, v11, v7

    if-gtz v11, :cond_4

    invoke-virtual {v10}, Landroid/media/FaceDetector$Face;->confidence()F

    move-result v11

    invoke-static {v11, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v10}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v11

    cmpl-float v11, v11, v9

    if-lez v11, :cond_5

    :cond_4
    invoke-virtual {v10, v4}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    invoke-virtual {v10}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v9

    invoke-virtual {v10}, Landroid/media/FaceDetector$Face;->confidence()F

    move-result v7

    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    cmpl-float v2, v9, v5

    if-nez v2, :cond_7

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setImage(Landroid/graphics/Bitmap;Z)Landroid/util/Pair;

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070f15

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070f11

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v7, v1

    int-to-float v8, v2

    div-float v9, v7, v8

    int-to-float v3, v3

    int-to-float v5, v5

    div-float/2addr v3, v5

    cmpl-float v5, v9, v3

    if-lez v5, :cond_9

    mul-float/2addr v8, v3

    float-to-int v3, v8

    if-le v3, v1, :cond_8

    goto :goto_3

    :cond_8
    move v5, v3

    :goto_2
    move v3, v2

    goto :goto_4

    :cond_9
    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    mul-float/2addr v5, v7

    float-to-int v3, v5

    if-le v3, v2, :cond_a

    :goto_3
    move v5, v1

    goto :goto_2

    :cond_a
    move v5, v1

    :goto_4
    iget v7, v4, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    div-int/lit8 v8, v3, 0x2

    div-int/lit8 v9, v5, 0x2

    sub-int/2addr v4, v9

    sub-int/2addr v7, v8

    if-gez v4, :cond_b

    move v4, v6

    goto :goto_5

    :cond_b
    add-int v8, v4, v5

    if-le v8, v1, :cond_c

    sub-int v4, v1, v5

    :cond_c
    :goto_5
    if-gez v7, :cond_d

    goto :goto_6

    :cond_d
    add-int v1, v7, v3

    if-le v1, v2, :cond_e

    sub-int v6, v2, v3

    goto :goto_6

    :cond_e
    move v6, v7

    :goto_6
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v4, v6, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setArticleImageInBackground : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_7
    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setImage([B)V

    goto :goto_8

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    const/16 v2, 0x5f

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setImage([B)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->recycleBitmapIfNeeded(Landroid/graphics/Bitmap;)V

    :goto_8
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->recycleBitmapIfNeeded(Landroid/graphics/Bitmap;)V

    :cond_10
    :goto_9
    return-void
.end method


# virtual methods
.method public compressBitmap(Landroid/graphics/Bitmap;I)[B
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v0, p2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object p1

    :cond_1
    :goto_0
    const-string p0, "SavedPageModel"

    const-string p1, "Error in compressing bitmap as it is already recycled or its null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->destroy()V

    return-void
.end method

.method public executeSavePageItemTask(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const-string v0, "SavedPageModel"

    const-string v2, "executeSavePageItemTask - executing SavePageItemTask"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/net/Uri;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public getSavedPageItem()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    return-object p0
.end method

.method public recycleBitmapIfNeeded(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public setArticleImage(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070f15

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070f11

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v5, v1

    int-to-float v6, v2

    div-float v7, v5, v6

    int-to-float v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    cmpl-float v7, v7, v8

    const/4 v9, 0x0

    if-lez v7, :cond_1

    mul-float/2addr v6, v8

    float-to-int v5, v6

    if-le v5, v1, :cond_0

    move v5, v1

    :cond_0
    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v8

    mul-float/2addr v6, v5

    float-to-int v5, v6

    if-le v5, v2, :cond_2

    :goto_0
    move v5, v1

    move v1, v9

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_0

    :goto_1
    invoke-static {p1, v1, v9, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v5, v4, 0x2

    if-lt v2, v5, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v6, v3, 0x2

    if-lt v2, v6, :cond_3

    move v4, v5

    move v3, v6

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setImage ::  error occurred : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SavedPageModel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_4
    move-object v2, v0

    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :cond_6
    move-object v2, v0

    :cond_7
    :goto_6
    if-nez v2, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setImage([B)V

    const/4 p0, -0x1

    move p1, p0

    goto :goto_8

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    if-eqz p2, :cond_9

    const/16 p2, 0x5f

    goto :goto_7

    :cond_9
    const/16 p2, 0x46

    :goto_7
    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setImage([B)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    :goto_8
    new-instance p2, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public setReaderPage(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->mSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setReaderPage(Z)V

    return-void
.end method
