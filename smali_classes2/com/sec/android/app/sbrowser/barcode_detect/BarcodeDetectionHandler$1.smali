.class Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->startBarcodeDetectionTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;->lambda$run$0()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->c(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->a(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->b(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->DETECTION_TIMEOUT:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->d(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->a(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;)Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;->onBarcodeDetected(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
