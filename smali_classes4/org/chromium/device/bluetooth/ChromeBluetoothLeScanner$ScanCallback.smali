.class Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;


# direct methods
.method private constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Bluetooth"

    const-string v0, "onBatchScanResults"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onScanFailed(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->d(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->f(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)V

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->g(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)V

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->c(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->e(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;I)V

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-static {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->b(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;->onScanFailed(I)V

    return-void
.end method

.method public onScanResult(ILorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-static {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->b(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;)Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;->onLeScanResult(ILorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;)V

    return-void
.end method
