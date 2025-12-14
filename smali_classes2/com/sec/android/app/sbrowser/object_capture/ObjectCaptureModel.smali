.class public Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private final mLockObject:Ljava/lang/Object;

.field private mOCInitAndCaptureExecutor:Ljava/util/concurrent/ExecutorService;

.field private mObjectCapture:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

.field private final mObjectCaptureControllerDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;

.field private mObjectResult:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mLockObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCaptureControllerDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->lambda$getOCInitAndCaptureRunnable$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->lambda$getOCInitAndCaptureRunnable$2()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->lambda$getOCInitAndCaptureRunnable$1()V

    return-void
.end method

.method public static createObjectCaptureModel(Landroid/content/Context;Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->lambda$getOCInitAndCaptureRunnable$3()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCapture:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCapture:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    return-void
.end method

.method private getOCInitAndCaptureRunnable()Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/object_capture/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/object_capture/b;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;I)V

    return-object v0
.end method

.method private getUnCaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$1;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->recycleImageBitmap()V

    return-void
.end method

.method private synthetic lambda$getOCInitAndCaptureRunnable$0()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->handleObjectCaptureResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$getOCInitAndCaptureRunnable$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectResult:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->isCaptured()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->handleObjectCaptureResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$getOCInitAndCaptureRunnable$2()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->handleObjectCaptureFailed()V

    return-void
.end method

.method private synthetic lambda$getOCInitAndCaptureRunnable$3()V
    .locals 4

    const-string v0, "ObjectCaptureModel"

    const-string v1, "[Object Capture][Pref] capture ended, total objects captured: "

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ObjectCaptureProvider;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCapture:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mImageBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/sbrowser/object_capture/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/object_capture/b;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v2, "[Object Capture][Pref] init started"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCapture:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    invoke-interface {v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;->init()V

    const-string v2, "[Object Capture][Pref] init ended and capture started"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCapture:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;->capture(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectResult:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectResult:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->getObjects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/sbrowser/object_capture/b;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/object_capture/b;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [Object Capture] Executor exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/object_capture/b;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private declared-synchronized recycleImageBitmap()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mImageBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelCapture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mOCInitAndCaptureExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getObjectResult()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectResult:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    return-object p0
.end method

.method public handleObjectCaptureFailed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCaptureControllerDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;->handleCaptureFailed()V

    return-void
.end method

.method public handleObjectCaptureResult(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCaptureControllerDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectCapture:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mObjectResult:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    invoke-interface {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;->handleObjectCaptureResult(ZLcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;)V

    return-void
.end method

.method public initAndStartObjectCapture()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mOCInitAndCaptureExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->getOCInitAndCaptureRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mOCInitAndCaptureExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public removeOCInfo()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->getUnCaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->recycleImageBitmap()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->mImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
