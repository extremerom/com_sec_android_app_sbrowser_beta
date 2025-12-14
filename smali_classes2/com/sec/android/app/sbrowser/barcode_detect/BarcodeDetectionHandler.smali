.class public Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;,
        Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;,
        Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;
    }
.end annotation


# instance fields
.field private mBarcodeDetectionListener:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;

.field private mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

.field private mBarcodeDetectionTimer:Ljava/util/Timer;

.field private final mBarcodeProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

.field private mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

.field private mBoardingPassBarcodeValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentRequestUrl:Ljava/lang/String;

.field private mTargetAction:Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionTimer:Ljava/util/Timer;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

    sget-object p1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    sget-object p1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBoardingPassBarcodeValues:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionTimer:Ljava/util/Timer;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

    sget-object p1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    sget-object p1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBoardingPassBarcodeValues:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionListener:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionTimer:Ljava/util/Timer;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    return-void
.end method

.method private sendEventLogForBarcodeDetectionTimeOut()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "8524"

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBarcodeDetectionStatusForTest()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    return-object p0
.end method

.method public getBarcodeType()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    return-object p0
.end method

.method public isDetectionInProgress()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEsimSupported()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mContext:Landroid/content/Context;

    const-string v0, "euicc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidQRImage(Landroid/graphics/Rect;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le p1, p0, :cond_0

    div-int/2addr p1, p0

    int-to-long p0, p1

    goto :goto_0

    :cond_0
    div-int/2addr p0, p1

    int-to-long p0, p0

    :goto_0
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    long-to-double p0, p0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public launchBarcodeIntent()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$2;->$SwitchMap$com$sec$android$app$sbrowser$barcode_detect$BarcodeDetectionHandler$BarcodeType:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBoardingPassBarcodeValues:Ljava/util/List;

    const-string v1, "context_menu"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->fireBoardingPassIntent(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mTargetAction:Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "BarcodeDetectionHandler"

    const-string v1, "Launch eSim Barcode intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->removeBarcodeInfo()V

    return-void
.end method

.method public onBarcodeDetectionComplete()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->DETECTION_TIMEOUT:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->sendEventLogForBarcodeDetectionTimeOut()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionListener:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;->onBarcodeDetected(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;)V

    :cond_2
    return-void
.end method

.method public onExtractBarcodeActions(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;

    instance-of v1, v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/uri/LaunchSimCardManagerAction;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->isEsimSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->ESIM:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mTargetAction:Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "BarcodeDetectionHandler"

    const-string p1, "No barcode actions extracted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BarcodeDetectionHandler"

    const-string p1, "Recycled bitmap received"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->startBarcodeDetectionTimer()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeProcessor;->processBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public removeBarcodeInfo()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionListener:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mTargetAction:Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBoardingPassBarcodeValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mCurrentRequestUrl:Ljava/lang/String;

    return-void
.end method

.method public setBarcodeDetectionListener(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionListener:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;

    return-void
.end method

.method public setBarcodeDetectionStatusForTest(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionStatus:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    return-void
.end method

.method public setBarcodeTypeAndTargetActionForTest(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mTargetAction:Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;

    return-void
.end method

.method public setLatestBarcodeRawValue(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isBoardingPassDetectionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mCurrentRequestUrl:Ljava/lang/String;

    const-string v1, "BarcodeDetectionHandler"

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mCurrentRequestUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isDomainAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "Barcode value is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "EC:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isBoardingPass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Boarding pass detected"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBoardingPassBarcodeValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->BOARDINGPASS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeType:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p0, "URL is not allowed for boarding pass detection"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldStartBarcodeDetection()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->isEsimSupported()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isBoardingPassDetectionSupported()Z

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

.method public startBarcodeDetectionOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->shouldStartBarcodeDetection()Z

    move-result v0

    const-string v1, "BarcodeDetectionHandler"

    if-nez v0, :cond_0

    const-string p0, "Barcode detection not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->isValidQRImage(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "Image is not a valid QR"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mCurrentRequestUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->processBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public startBarcodeDetectionTimer()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;-><init>(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->mBarcodeDetectionTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
