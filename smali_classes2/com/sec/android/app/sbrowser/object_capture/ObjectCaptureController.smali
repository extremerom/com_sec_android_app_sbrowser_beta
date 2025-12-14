.class public Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mImageHiddenHeightBottom:I

.field private mImageHiddenHeightTop:I

.field private mImageRect:Landroid/graphics/Rect;

.field private mIsBitmapReceived:Z

.field private mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

.field private mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

.field private mSavedImageFilePath:Ljava/lang/String;

.field private mSavedImageUri:Landroid/net/Uri;

.field private mTopControlsStateChangedOnScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->createObjectCaptureModel()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->lambda$deleteExistingFilesAndStartCapture$3()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->lambda$getSaveToDeviceRunnable$0(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->lambda$getSaveToDeviceRunnable$1(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    return-void
.end method

.method private compareImageToViewPort()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentViewRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createObjectCaptureController(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->isObjectCaptureSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegateImpl;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegateImpl;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private createObjectCaptureModel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->createObjectCaptureModel(Landroid/content/Context;Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;Ljava/lang/Boolean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->lambda$showSnackBarOnFileSaved$2(Ljava/lang/Boolean;Landroid/view/View;)V

    return-void
.end method

.method private deleteExistingFilesAndStartCapture()V
    .locals 3

    const-string v0, "ObjectCaptureController"

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/object_capture/a;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;I)V

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Could not clear image - RejectedExecutionException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "Could not clear image - NullPointerException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static deleteOCImages(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->deleteOCImages(Ljava/io/File;)V

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete drag image file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ObjectCaptureController"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->lambda$deleteExistingFilesAndStartCapture$4()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getCapturedImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p0, "IO Error occurred during image drag file close!"

    const-string v0, "ObjectCaptureController"

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    const/16 v4, 0x64

    if-ge v2, v3, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "images"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Image Drag Folder cannot be created."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-object v3, v1

    goto/16 :goto_4

    :catch_1
    move-object v3, v1

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Drag image failed, Unable to create drag image file!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, ".png"

    invoke-static {v3, v5, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v6, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".FileProvider"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v3

    goto :goto_8

    :catch_2
    :try_start_3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object p1

    :cond_4
    :try_start_5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "Title"

    invoke-static {p1, p2, v2, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object p0

    :catch_4
    :goto_4
    :try_start_6
    const-string p1, "NullPointerException occurred during image drag operation!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_5

    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_6
    :goto_6
    :try_start_8
    const-string p1, "IO Error occurred during image drag operation!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    :goto_7
    return-object v1

    :goto_8
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_9
    throw p1
.end method

.method private getSaveToDeviceRunnable(Ljava/lang/Boolean;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;
    .locals 2

    new-instance v0, LJ8/d;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1, p2, p1}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    return-object p0
.end method

.method private isObjectAtPoint(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->getObjectResult()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->getObjectResult()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->findObjectIndexByPosition(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "is object at failed, e="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ObjectCaptureController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public static isObjectCaptureSupported()Z
    .locals 6

    const-string v0, "ObjectCapture supported :"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v3

    const-string v4, "ObjectCapture"

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    const-string v4, "ObjectCaptureController"

    if-nez v3, :cond_1

    const-string v0, "Disabled from global config"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-ge v3, v5, :cond_2

    const-string v0, "Not supported below T OS"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v3, "64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Object Capture not supported as app is not 64-bit"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string v1, "Package not present in the current apk"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ObjectCaptureProvider;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;->isObjectCaptureSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DeepSky library error:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->deleteExistingFilesAndStartCapture()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->onMenuItemClicked(I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->onPerformLongClickAtPoint(FF)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$deleteExistingFilesAndStartCapture$3()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->getOCDrawHelper()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->startObjectCaptureByButton(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "8520"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->showNoObjectFoundMessage()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteExistingFilesAndStartCapture$4()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->deleteOCImages(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ObjectCaptureController"

    const-string v1, "Failed to access files for deletion."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/object_capture/a;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$getSaveToDeviceRunnable$0(ZLjava/lang/Boolean;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->showSnackBarOnFileSaved(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$getSaveToDeviceRunnable$1(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "Closing ParcelFileDescriptor operation failed due to exception: "

    const-string v3, "Closing FileOutputStream operation failed due to exception: "

    const-string v4, "NullPointerException occurred during ContentResolver::update()"

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    const-string v5, "ObjectCaptureController"

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    if-nez v0, :cond_1

    :cond_0
    move-object/from16 v12, p1

    goto/16 :goto_10

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "DCIM/Clipped Images"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v0, "Could Not create Directory."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception during Directory Creation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMdd-HHmmss"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Clipped_image_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".png"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-long v11, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-long v13, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v15, 0x3e8

    div-long v15, v6, v15

    move-object/from16 v17, v2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v19, v4

    const-string v4, "_data"

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v10

    const-string v10, "title"

    invoke-virtual {v2, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "_display_name"

    invoke-virtual {v2, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "date_added"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "date_modified"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "mime_type"

    const-string v7, "image/png"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "width"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "height"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "_size"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "media_type"

    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "is_pending"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v8, "captured_original_path"

    invoke-virtual {v2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "captured_app"

    invoke-virtual {v2, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "content://secmedia/media"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "relative_path"

    invoke-virtual {v2, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "group_id"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    const/4 v8, 0x0

    :try_start_1
    const-string v9, "w"

    invoke-virtual {v3, v4, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v9, :cond_4

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v16, v0

    move-object v10, v8

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v20

    goto/16 :goto_b

    :catch_1
    move-object/from16 v12, p1

    move-object v10, v8

    :catch_2
    :goto_0
    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v20

    goto/16 :goto_7

    :cond_4
    :try_start_3
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_1
    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v11, 0x64

    move-object/from16 v12, p1

    :try_start_5
    invoke-virtual {v12, v0, v11, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v11
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_6
    invoke-virtual {v3, v4, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-object/from16 v13, v19

    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v14, v18

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    if-eqz v9, :cond_5

    :try_start_8
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v15, v17

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mSavedImageUri:Landroid/net/Uri;

    move-object/from16 v2, v20

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mSavedImageFilePath:Ljava/lang/String;

    move v6, v11

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v20

    :goto_6
    move-object/from16 v16, v0

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_5

    :catch_6
    move-object/from16 v12, p1

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v20

    move-object/from16 v16, v0

    move-object v10, v8

    goto/16 :goto_b

    :catch_7
    move-object/from16 v12, p1

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v20

    move-object v10, v8

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v20

    move-object/from16 v16, v0

    move-object v9, v8

    move-object v10, v9

    goto :goto_b

    :catch_8
    move-object/from16 v12, p1

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v20

    move-object v9, v8

    move-object v10, v9

    :goto_7
    :try_start_9
    const-string v0, "Failed to find image file"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_a
    invoke-virtual {v3, v4, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    if-eqz v10, :cond_6

    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_9
    if-eqz v9, :cond_7

    :try_start_c
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_7
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mSavedImageUri:Landroid/net/Uri;

    iput-object v11, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mSavedImageFilePath:Ljava/lang/String;

    goto :goto_f

    :catchall_5
    move-exception v0

    goto :goto_6

    :goto_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_d
    invoke-virtual {v3, v4, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_c

    :catch_c
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    if-eqz v10, :cond_8

    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_8
    :goto_d
    if-eqz v9, :cond_9

    :try_start_f
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mSavedImageUri:Landroid/net/Uri;

    iput-object v11, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mSavedImageFilePath:Ljava/lang/String;

    throw v16

    :cond_a
    move-object/from16 v12, p1

    :goto_f
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/firebase/messaging/p;

    const/4 v3, 0x6

    move-object/from16 v4, p2

    invoke-direct {v2, v1, v6, v4, v3}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    const-string v0, "Save To Device task failed."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$showSnackBarOnFileSaved$2(Ljava/lang/Boolean;Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mSavedImageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mSavedImageFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    const-string v2, "image/png"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->createViewIntentForDownloadItem(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startNonPopOverActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->showNoObjectFoundMessage()V

    return-void
.end method

.method private onMenuItemClicked(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->getObjectResult()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->getOutput()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "ObjectCaptureController"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string p1, "inside default condition"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string p1, "8536"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "8535"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->sendSALog(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->isSaveAsStickerDefaultSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->getCapturedImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->addToSticker(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    const-string p1, "8534"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->sendSALog(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->isIncognito()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->getSaveToDeviceRunnable(Ljava/lang/Boolean;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->getCapturedImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->shareViaChooser(Landroid/net/Uri;)V

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v1, ".png"

    invoke-static {v0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->copyImageToCliboard(Landroid/content/Context;[BZLjava/lang/String;)V

    const-string p1, "8532"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->sendSALog(Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    return-void

    :cond_8
    :goto_1
    const-string p1, "Captured result bitmap is recycled."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    return-void
.end method

.method private onPerformLongClickAtPoint(FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->isObjectAtPoint(FF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->showNoObjectFoundMessage()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private resetTopControlsState()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mTopControlsStateChangedOnScroll:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->updateBrowserControlsState(IZ)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mTopControlsStateChangedOnScroll:Z

    return-void
.end method

.method private scrollImageIntoViewIfNeeded()V
    .locals 6

    iget v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightBottom:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getBottomMargin()I

    move-result v5

    if-gt v0, v5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getBrowserTopControlsState()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0, v2, v4}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->updateBrowserControlsState(IZ)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mTopControlsStateChangedOnScroll:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    iget p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightBottom:I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getTopMargin()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-interface {v0, v4, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->scrollBy(II)V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightTop:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getBrowserTopControlsState()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getTopMargin()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0, v2, v4}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->updateBrowserControlsState(IZ)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mTopControlsStateChangedOnScroll:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    iget p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightTop:I

    neg-int p0, p0

    invoke-interface {v0, v4, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->scrollBy(II)V

    :cond_3
    return-void
.end method

.method private sendSALog(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setImagePositionParams(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentViewRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightBottom:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightTop:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le p1, v3, :cond_2

    const-string p1, "Image is larger than viewport."

    const-string v3, "ObjectCaptureController"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-lt v1, p1, :cond_1

    const-string p1, "Shift the Image to top."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getTopMargin()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightBottom:I

    :cond_1
    return-void

    :cond_2
    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-ge v1, p1, :cond_3

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightTop:I

    :cond_3
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, p1, :cond_4

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightBottom:I

    :cond_4
    :goto_0
    return-void
.end method

.method private shareViaChooser(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "image/*"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Share"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "8533"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method private showNoObjectFoundMessage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f140806

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "8521"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showSnackBarOnFileSaved(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->isTabClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f14083f

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/content/Context;Landroid/view/View;I)LH6/o;

    move-result-object v0

    new-instance v1, LFa/b;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, p2}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f140840

    invoke-virtual {v0, p0, v1}, LH6/o;->j(ILandroid/view/View$OnClickListener;)V

    const p0, 0x7f060223

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget-object p1, v0, LH6/m;->i:LH6/l;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, LH6/o;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateImageBoundsIfNeeded()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightBottom:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getBottomMargin()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getBrowserTopControlsState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getTopMargin()I

    move-result v0

    :goto_0
    neg-int v0, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightBottom:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getTopMargin()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageHiddenHeightTop:I

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method


# virtual methods
.method public didRemoveClientView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->isClientViewInflated()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->isObjectCaptureViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->isProgressBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->cancelCapture()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->hideProgressBarIfVisible()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->clearClientViewIfVisible()V

    const-string v0, "ObjectCaptureController"

    const-string v1, "didRemoveClientView : remove inflated view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->removeOCInfo()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public handleConfigurationChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    return-void
.end method

.method public handleKeyEvent()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    move-result p0

    return p0
.end method

.method public handleWindowFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    :cond_0
    return-void
.end method

.method public initAndStartObjectCapture()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->isBitmapReceived()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->isClientViewInflated()Z

    move-result v0

    const-string v1, "ObjectCaptureController"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0e053e

    invoke-virtual {v0, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v3, 0x7f0b0843

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    if-nez v0, :cond_2

    const-string p0, "ObjectCaptureCustomView is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    new-instance v3, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->setObjectCaptureViewDelegate(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->setImagePositionParams(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->updateImageBoundsIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->scrollImageIntoViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->onObjectCaptureStarted()V

    const-string v0, "Object Capture Client view set to visible"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->compareImageToViewPort()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->showProgressBar(Landroid/graphics/Rect;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->initAndStartObjectCapture()V

    :cond_4
    :goto_0
    return-void
.end method

.method public isBitmapReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mIsBitmapReceived:Z

    return p0
.end method

.method public isClientViewInflated()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->isTabClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isObjectCaptureViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCurrentTabChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    return-void
.end method

.method public prepareForObjectCaptureOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentViewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentViewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mImageRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mIsBitmapReceived:Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "ObjectCaptureController"

    const-string p1, "Object Capture not Supported for Images Larger Than Viewport"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeOCInfo()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->resetTopControlsState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mIsBitmapReceived:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->removeOCInfo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->onObjectCaptureEnded()V

    return-void
.end method

.method public revokeDragImageUriPermissions()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->revokeDragImageUriPermissions()V

    :cond_0
    return-void
.end method

.method public setObjectCaptureModelForTest(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureModel:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    return-void
.end method

.method public setObjectCaptureViewForTest(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->mObjectCaptureView:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    return-void
.end method
