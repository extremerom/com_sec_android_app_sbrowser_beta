.class Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;,
        Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanState;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final INDEFINITE_SCAN_DURATION:J = -0x8000000000000000L


# instance fields
.field private final mChromeScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;

.field private mCurrentScanSequence:I

.field private mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;

.field private mScanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mScanState:I

.field private final mScannerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;",
            ">;",
            "Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanState:I

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScannerSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mChromeScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->lambda$startScanWindow$0(I)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mChromeScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)I
    .locals 0

    iget p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mCurrentScanSequence:I

    return p0
.end method

.method private cleanScanParams()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanFilters:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mCurrentScanSequence:I

    return-void
.end method

.method public static bridge synthetic f(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanState:I

    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->cleanScanParams()V

    return-void
.end method

.method private synthetic lambda$startScanWindow$0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->pauseScan(I)V

    return-void
.end method

.method private pauseScan(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mCurrentScanSequence:I

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanState:I

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->stopScanWindow()V

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mChromeScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;

    invoke-interface {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;->onScanFinished()V

    return-void
.end method

.method private startScanWindow(J)Z
    .locals 6
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    const-string v0, "Bluetooth"

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScannerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->cleanScanParams()V

    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanFilters:Ljava/util/List;

    iget-object v4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v5, v4}, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;->startScan(Ljava/util/List;ILorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;)V

    const/4 v1, 0x1

    iput v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanState:I

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    iget v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mCurrentScanSequence:I

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v4

    new-instance v5, Lorg/chromium/device/bluetooth/g;

    invoke-direct {v5, p0, v3}, Lorg/chromium/device/bluetooth/g;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;I)V

    invoke-virtual {v4, v5, p1, p2}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Adapter is off. Cannot start scan: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Cannot start scan: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->cleanScanParams()V

    return v2
.end method

.method private stopScanWindow()V
    .locals 3

    const-string v0, "Bluetooth"

    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScannerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;

    invoke-virtual {v1, p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;->stopScan(Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter is off. Cannot stop scan: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot stop scan: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public isScanning()Z
    .locals 1

    iget p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startScan(JLjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;I)V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;

    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanFilters:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->startScanWindow(J)Z

    move-result p0

    return p0
.end method

.method public stopScan()Z
    .locals 3

    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->stopScanWindow()V

    :cond_1
    iput v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mScanState:I

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->cleanScanParams()V

    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mCurrentScanSequence:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->mCurrentScanSequence:I

    return v2
.end method
