.class public Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;
.implements Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor$BarcodeProcessorType;,
        Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor$BarcodeProcessingAgent;
    }
.end annotation


# instance fields
.field private mBarcodeProcessingAgent:I

.field private mBarcodeProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

.field private final mBarcodeProcessorType:I

.field private mBarcodeValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImageResourceLoadNotificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mProbableBoardingPassImageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mSubmittedTaskCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessorType:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->getBarcodeProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mProbableBoardingPassImageUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    iput p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessingAgent:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->getTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/Terrace;->getBoardingPasContextAwareEngineController()Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineController;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineController;->addObserver(Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineObserver;)V

    :cond_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mImageResourceLoadNotificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->lambda$startBoardingPassProcessingForImage$1(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method private addWhiteBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, p1, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eq v0, p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    const-string p1, "BoardingPassProcessor"

    const-string v0, "Illegal argument exception while adding white border"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->lambda$onBarcodeDetectionComplete$0(Landroid/view/View;)V

    return-void
.end method

.method public static bytesToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBoardingPassProcessor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-object v0
.end method

.method private getTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onBarcodeDetectionComplete$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->launchBoardingPassIntent()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mContext:Landroid/content/Context;

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz p1, :cond_0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "2271"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startBoardingPassProcessingForImage$1(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "BoardingPassProcessor"

    const-string p1, " bitmap is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->addWhiteBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->processBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private shouldRetryImageScan()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->isResourceLoadCompleteRequestInQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mRetryCount:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "Should retry = "

    const-string v1, "BoardingPassProcessor"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private startBoardingPassListProcessing()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mProbableBoardingPassImageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->setRequestCountAndPrepareForProcessing(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mProbableBoardingPassImageUrls:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->startBoardingPassProcessingForImage(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startBoardingPassProcessingForImage(Ljava/lang/String;II)V
    .locals 2

    const-string v0, ""

    iget v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessingAgent:I

    if-eq v1, p3, :cond_0

    iput p3, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessingAgent:I

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isPngDataImageURL(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isDataImageURL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    :try_start_0
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u00a0"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->bytesToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->addWhiteBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->processBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception while decoding: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BoardingPassProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p3, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-direct {p3, p2, p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;-><init>(ILjava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/barcode_detect/b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p2}, Lcom/sec/android/app/sbrowser/barcode_detect/b;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;I)V

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->addCallBack(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->loadImageBitmapFromUrl()V

    return-void
.end method


# virtual methods
.method public cleanupIfRequired()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mProbableBoardingPassImageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mSubmittedTaskCounter:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearResourceLoadCounter()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mImageResourceLoadNotificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public getBarcodeProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessorType:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoardingPassPageDetectionParams()Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getBpImageSubstrings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getBpImageSubstrings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Ljava/lang/String;

    new-instance v0, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getSeatRegex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getSeatRegexWeight()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getFlightRegex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getFlightRegexWeight()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getBoardingPassLangWiseKeyword()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;->getKo()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getThreshold()D

    move-result-wide v9

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;-><init>(Ljava/lang/String;DLjava/lang/String;DLjava/util/Map;D[Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentVisibleTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public isAllowListedUrl(Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isDomainAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBoardingPassDetectedAutomatically()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isResourceLoadCompleteRequestInQueue()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mImageResourceLoadNotificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->clearResourceLoadCounter()V

    return v0
.end method

.method public launchBoardingPassIntent()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    const-string v0, "auto_detection"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->fireBoardingPassIntent(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onBarcodeDetectionComplete()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mSubmittedTaskCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mSubmittedTaskCounter:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessingAgent:I

    if-nez v0, :cond_2

    const-string v0, "BoardingPassProcessor"

    const-string v1, "Boarding Pass Detected Automatically"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1408cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/barcode_detect/c;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/c;-><init>(Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;)V

    invoke-virtual {v1, v2, v3}, LH6/o;->k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    const v2, 0x7f060223

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v2, v1, LH6/m;->i:LH6/l;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x1388

    iput v0, v1, LH6/m;->k:I

    invoke-virtual {v1}, LH6/o;->l()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2270"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    :try_start_2
    const-string v0, "BoardingPassProcessor"

    const-string v1, "Boarding Pass not available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onBoardingPassDetectionResult([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mProbableBoardingPassImageUrls:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[parseJsonResult] done : count of img tags - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count of parsed images - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mProbableBoardingPassImageUrls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BoardingPassProcessor"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->shouldRetryImageScan()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mRetryCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mRetryCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->startProbableBoardingPassImageScan(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mSubmittedTaskCounter:I

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->startBoardingPassListProcessing()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onImageResourceLoadComplete(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->shouldTriggerBoardingPassScan(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mImageResourceLoadNotificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mRetryCount:I

    if-lez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mSubmittedTaskCounter:I

    if-gtz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->startProbableBoardingPassImageScan(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public processBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;->processBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "BoardingPassProcessor"

    const-string p1, "Recycled bitmap received"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBarcodeProcessorAndAgentForTest(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessingAgent:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

    return-void
.end method

.method public declared-synchronized setLatestBarcodeRawValue(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "BoardingPassProcessor"

    const-string v0, "Barcode value is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "EC:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EC:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isBoardingPass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setRequestCountAndPrepareForProcessing(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mSubmittedTaskCounter:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setRetryCountAndClearBarcodeValuesForTest(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mRetryCount:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mBarcodeValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public shouldTriggerBoardingPassScan(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->isAllowListedUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isBoardingPassDetectionSupported()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public startProbableBoardingPassImageScan(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->cleanupIfRequired()V

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    iput p2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->mRetryCount:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->shouldTriggerBoardingPassScan(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->getTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getBoardingPasContextAwareEngineController()Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineController;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->getBoardingPassPageDetectionParams()Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineController;->runBoardingPassPageDetection(Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;)V

    :cond_4
    return-void
.end method
