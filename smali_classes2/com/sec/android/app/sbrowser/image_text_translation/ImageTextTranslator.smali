.class public Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;,
        Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;,
        Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;
    }
.end annotation


# static fields
.field private static sTranslationTokenInfo:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;


# instance fields
.field private mBitmapIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDebugFailedImg:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

.field private mImgOverlayTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiImgOverlayQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayCallback:Ljava/lang/Runnable;

.field private mOverlayHandler:Landroid/os/Handler;

.field private mOverlayInitDelayed:I

.field private mOverlayRunDelayed:I

.field private mOverlaySrcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

.field private final mRecognizerLock:Ljava/lang/Object;

.field private mSendEventLog:Z

.field private final mTab:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskFutureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Runnable;",
            "Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayInitDelayed:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlaySrcList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mSendEventLog:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mDebugFailedImg:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$1;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayCallback:Ljava/lang/Runnable;

    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayRunDelayed:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTab:Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTaskFutureMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;->with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;->getTextExtraction()Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;->getImageOverlayHelper(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$runImageOverlayOperation$6(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$getRunnable$5(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Ljava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$getRunnable$3(Ljava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void
.end method

.method public static createImageTextTranslator(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextHelper;->isVisionTextSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$getRunnable$1(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void
.end method

.method private deInitializeVisionText()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/image_text_translation/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/a;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->getUnCaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$getRunnable$2()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$getRunnable$0(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$getRunnable$4(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void
.end method

.method private static declared-synchronized getTranslationTokenInfo()Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;
    .locals 8

    const-class v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sTranslationTokenInfo:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;

    const-string v3, ""

    const-string v4, ""

    const-string v5, "4oe3617251"

    const-string v6, ""

    const-string v7, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sTranslationTokenInfo:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getUnCaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/image_text_translation/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/d;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)V

    return-object v0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$deInitializeVisionText$7()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->lambda$getUnCaughtExceptionHandler$8(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private isMultiImgOverlaySupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->supportsImgTransMultiThreading()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mDebugFailedImg:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic lambda$deInitializeVisionText$7()V
    .locals 6

    const-string v0, "TextExtraction library error "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizerLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    invoke-interface {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    const-string v3, "ImageTextTranslator"

    const-string v4, "DeInitialized recogniser"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_2
    const-string v4, "ImageTextTranslator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :goto_1
    :try_start_3
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    throw v0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private synthetic lambda$getRunnable$0(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 3

    const-string v0, "detectText is empty"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->dummyJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method private synthetic lambda$getRunnable$1(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 3

    const-string v0, "OCR result is empty"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->dummyJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method private synthetic lambda$getRunnable$2()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getProcessingStatus()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;->NONE:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->isProcessing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getOcrResult()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getIsAvailable()Z

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getTargetLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->runImageOverlayOperation(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getRunnable$3(Ljava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method private synthetic lambda$getRunnable$4(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 3

    const-string v0, "Extraction interrupted due to exception"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->dummyJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method private synthetic lambda$getRunnable$5(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;ZLjava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "Runnable interrupted: "

    const-string v2, "Exception caused by createScaledBitmap"

    const-string v3, "OCR result is empty:"

    const-string v4, "ImgTrans:getRunnable:extractText:"

    const-string v5, "ImgTrans:getRunnable:extractText:"

    const-string v6, "detectText is empty:"

    const-string v7, "ImgTrans:getRunnable:detectText:"

    const-string v10, "ImgTrans:getRunnable:detectText:"

    const-string v11, "ImgTrans:getRunnable:copy:"

    const-string v12, "ImgTrans:getRunnable:copy:"

    const-string v13, "ImgTrans:getRunnable:initialize:"

    const-string v14, "ImgTrans:getRunnable:initialize:"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v16, v9

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizerLock:Ljava/lang/Object;

    monitor-enter v9

    move-object/from16 v17, v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->isInvalidParams(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->isTabReady()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ImageTextTranslator"

    const-string v3, "Worker thread interrupted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_6

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :cond_2
    :goto_1
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_4
    :try_start_2
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;->with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;->getTextExtraction()Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-nez v2, :cond_9

    iget-object v14, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v14, :cond_8

    if-eqz v2, :cond_6

    :try_start_3
    invoke-interface {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_8
    :try_start_4
    invoke-interface {v14}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;->getRecognizer()Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    :cond_9
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    sget-object v14, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;->All:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;

    invoke-virtual {v14}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;->getId()I

    move-result v14

    invoke-interface {v2, v14}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->initialize(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    if-eqz v15, :cond_1f

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_a

    goto/16 :goto_4

    :cond_a
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v15, v2, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v15, v13, :cond_b

    :try_start_6
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    invoke-interface {v2, v13}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->detectText(Landroid/graphics/Bitmap;)Z

    move-result v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    if-nez v2, :cond_f

    const-string v2, "ImageTextTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mDebugFailedImg:Z

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    :cond_c
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/image_text_translation/c;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v8, v4}, Lcom/sec/android/app/sbrowser/image_text_translation/c;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_d
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    :cond_f
    :try_start_8
    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mSendEventLog:Z

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->sendImgTransEventLog()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mSendEventLog:Z

    :cond_10
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    invoke-interface {v5, v13}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->extractText(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->isOcrResultInValid(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v2, "ImageTextTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mDebugFailedImg:Z

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    :cond_11
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/image_text_translation/c;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v8, v4}, Lcom/sec/android/app/sbrowser/image_text_translation/c;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_12
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    :cond_14
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getRequestType()I

    move-result v3

    if-ne v3, v12, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->isMultiImgOverlaySupported()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v10, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    move-object v2, v10

    move-object v3, v13

    move-object v4, v5

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;-><init>(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    invoke-interface {v2, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/image_text_translation/a;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/sec/android/app/sbrowser/image_text_translation/a;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_15
    new-instance v10, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    move-object v2, v10

    move-object v3, v13

    move-object v4, v5

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;-><init>(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getTargetLang()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->cancelCurrentTask()V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    :cond_16
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v2, v10}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "ImageTextTranslator"

    const-string v3, "ImageOverlay Add failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/image_text_translation/a;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Lcom/sec/android/app/sbrowser/image_text_translation/a;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;I)V

    iget v4, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayInitDelayed:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_2
    :try_start_b
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_18
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_19
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-void

    :cond_1a
    :try_start_c
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getBitmapRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v4}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    invoke-static {v5, v3, v6, v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createJSONArrayFromOcrResult(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/graphics/Rect;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/sbrowser/image_text_translation/e;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1, v8, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_1c
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_26

    :goto_3
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_e
    const-string v3, "ImageTextTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_1d
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1e
    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    return-void

    :cond_1f
    :goto_4
    :try_start_10
    const-string v2, "ImageTextTranslator"

    const-string v3, "Received recycled bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_20

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_20
    if-eqz v15, :cond_21

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_21
    monitor-exit v9

    return-void

    :cond_22
    :goto_5
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_23

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_23
    if-eqz v15, :cond_24

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_24
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    return-void

    :goto_6
    :try_start_12
    const-string v3, "ImageTextTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/image_text_translation/c;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v8, v4}, Lcom/sec/android/app/sbrowser/image_text_translation/c;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_25

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_25
    if-eqz v15, :cond_26

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_3

    :cond_26
    :goto_7
    monitor-exit v9

    return-void

    :goto_8
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v1, :cond_27

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    :cond_27
    if-eqz v15, :cond_28

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_28
    throw v2

    :goto_9
    monitor-exit v9
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    throw v1
.end method

.method private synthetic lambda$getUnCaughtExceptionHandler$8(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Thread Uncaught exception ="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageTextTranslator"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$runImageOverlayOperation$6(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 3

    const-string v0, "Overlay is not available"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->dummyJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayInitDelayed:I

    return-void
.end method


# virtual methods
.method public cancelTranslationAndPerformCleanup()V
    .locals 5

    const-string v0, "ImageTextTranslator"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->cancelCurrentTask()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->cancelConcurrentTask()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_2

    const-string v2, "Shutting down ThreadPoolExecutor"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTaskFutureMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTaskFutureMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->deInitializeVisionText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTaskFutureMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto :goto_5

    :goto_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while cleanup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTaskFutureMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTaskFutureMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    throw v0
.end method

.method public getRequestID(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 p0, 0x5f

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x9

    if-le p0, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "ImageTextTranslator"

    const-string p1, "NumberFormatException when parsing request ID string"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getRunnable(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Ljava/lang/String;Z)Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/image_text_translation/b;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/b;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;ZLjava/lang/String;)V

    return-object v0
.end method

.method public isInvalidParams(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isTabReady()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTab:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTab:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTab:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTab:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLoadFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mSendEventLog:Z

    return-void
.end method

.method public processMultipleImageOverlayQueue()V
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->isProcessingConcurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ImageTextTranslator"

    const-string v0, "MultiImgOverlayQueue not empty and OverlayHelper is processing concurrently"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-string v1, ""

    move v3, v0

    move-object v4, v1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getIsAvailable()Z

    move-result v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getTargetLang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getOcrResult()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->getRequestID(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mBitmapIdMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequest;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getOcrResult()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v1

    invoke-direct {v9, v8, v10, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequest;-><init>(ILandroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->runImageOverlayOperationMultiple(Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImgTrans:processTranslation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mSendEventLog:Z

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string p1, "ImageTextTranslator"

    const-string p2, "ThreadPoolExecutor created"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p2

    const-string p4, "SOURCE"

    invoke-virtual {p2, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlaySrcList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getTargetLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p5}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->getRunnable(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTaskFutureMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public runImageOverlayOperation(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    const-string v1, "ImageTextTranslator"

    if-nez v0, :cond_1

    const-string p2, "OverlayHelper is null"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getProcessingStatus()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;->NONE:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->isProcessing()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;->RUNNING:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->updateImgOverlayStatus(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " In place replacement request :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {p3, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->isAvailable(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p2, " OverlayHelper is not available for ocrresult"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sec/android/app/sbrowser/image_text_translation/c;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p5, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/c;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const-string p0, "not matching reqeustId"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ImgTrans:doImageOverlay:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->setNeedToDownloadLangPack(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {p3, p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->setTargetLanguage(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-static {}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->getTranslationTokenInfo()Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;

    move-result-object p4

    invoke-interface {p3, p4, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->init(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "before doImageOverlay isProcessing :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->isProcessing()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    new-instance p3, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;

    invoke-direct {p3, p0, p5, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Landroid/graphics/Bitmap;)V

    invoke-interface {p2, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->doImageOverlay(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayCallback:Ljava/lang/Runnable;

    iget p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mOverlayRunDelayed:I

    int-to-long p3, p0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method public runImageOverlayOperationMultiple(Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequest;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    const-string v1, "ImageTextTranslator"

    if-nez v0, :cond_0

    const-string p0, "OverlayHelper is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->getRequestID(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "image element class name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {v4, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->isAvailable(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, " OverlayHelper is not available for ocrresult"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->setNeedToDownloadLangPack(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->setTargetLanguage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {p1, p6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->initConcurrent(Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isProcessingConcurrent status before doImageOverlay :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->isProcessingConcurrent()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;

    new-instance p2, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;

    invoke-direct {p2, p0, p5}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Ljava/util/Map;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;->doConcurrentImageOverlay(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;)V

    return-void
.end method

.method public declared-synchronized sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->isTabReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-interface {p4, p1, p2, p3}, Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;->onCompletion(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setImgOverlayTaskQueueForTest(Ljava/util/Queue;Ljava/util/Queue;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;",
            ">;",
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mImgOverlayTaskQueue:Ljava/util/Queue;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mMultiImgOverlayQueue:Ljava/util/Queue;

    return-void
.end method

.method public setRecognizerForTest(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    return-void
.end method

.method public setSendEventLogForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mSendEventLog:Z

    return-void
.end method

.method public setTaskFutureMapForTest(Ljava/util/HashMap;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Runnable;",
            "Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mTaskFutureMap:Ljava/util/HashMap;

    return-void
.end method

.method public setThreadPoolExecutorForTest(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method
