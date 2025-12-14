.class public Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;


# instance fields
.field private final mBarcodeResponseObserver:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mBarcodeResponseObserver:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->lambda$processBitmap$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->lambda$processBitmap$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->lambda$processBitmap$2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getBarcodesFromBitmap(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeProvider;->getBarcodeScanner(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScanner;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScanner;->process(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error while barcode scanning = "

    const-string v1, "DeepskyBarcodeProcessor"

    invoke-static {p1, v1, p0}, Landroidx/recyclerview/widget/P;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$processBitmap$0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mBarcodeResponseObserver:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;->setLatestBarcodeRawValue(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$processBitmap$1(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mBarcodeResponseObserver:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;->onExtractBarcodeActions(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$processBitmap$2(Landroid/graphics/Bitmap;)V
    .locals 7

    const-string v0, "DeepskyBarcodeProcessor"

    const-string v1, "Number of barcode detected = "

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Thread interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mBarcodeResponseObserver:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/android/app/sbrowser/barcode_detect/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->getBarcodesFromBitmap(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;->getRawData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;->getRawData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;->getUiResource()Lcom/samsung/android/app/sdk/deepsky/barcode/result/ActionUIResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/result/ActionUIResource;->getActions()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mHandler:Landroid/os/Handler;

    new-instance v5, LGa/d;

    const/16 v6, 0x13

    invoke-direct {v5, v6, p0, v4}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mHandler:Landroid/os/Handler;

    new-instance v4, LGa/d;

    const/16 v5, 0x14

    invoke-direct {v4, v5, p0, v2}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mBarcodeResponseObserver:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/android/app/sbrowser/barcode_detect/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_5

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error extracting barcode data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    return-void

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw p0
.end method


# virtual methods
.method public getExecutorServiceForTest()Ljava/util/concurrent/ExecutorService;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public processBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LGa/d;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0, p1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setHandlerForTesting(Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->mHandler:Landroid/os/Handler;

    return-void
.end method
