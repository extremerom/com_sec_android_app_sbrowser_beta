.class public Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public startScan(Ljava/util/List;ILorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;I",
            "Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p2

    new-instance v0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;

    invoke-direct {v0, p3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;-><init>(Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;)V

    iget-object v1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {p0, p1, p2, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method public stopScan(Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper$ForwardScanCallbackToWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method
