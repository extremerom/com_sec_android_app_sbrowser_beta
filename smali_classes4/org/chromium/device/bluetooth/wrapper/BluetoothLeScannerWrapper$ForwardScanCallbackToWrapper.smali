.class Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardScanCallbackToWrapper"
.end annotation


# instance fields
.field final mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;


# direct methods
.method public constructor <init>(Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    new-instance v2, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;

    invoke-direct {v2, v1}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;-><init>(Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;

    invoke-interface {p0, v0}, Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;->onBatchScanResult(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;

    invoke-interface {p0, p1}, Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;->onScanFailed(I)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;

    new-instance v0, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;

    invoke-direct {v0, p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;-><init>(Landroid/bluetooth/le/ScanResult;)V

    invoke-interface {p0, p1, v0}, Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;->onScanResult(ILorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;)V

    return-void
.end method
