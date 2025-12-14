.class public Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mScanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->mScanResult:Landroid/bluetooth/le/ScanResult;

    return-void
.end method

.method private getScanRecord()Landroid/bluetooth/le/ScanRecord;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->mScanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/le/ScanRecord;

    return-object p0
.end method


# virtual methods
.method public getDevice()Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;
    .locals 1

    new-instance v0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->mScanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public getRssi()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->mScanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p0

    return p0
.end method

.method public getScanRecord_getAdvertiseFlags()I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getAdvertiseFlags()I

    move-result p0

    return p0
.end method

.method public getScanRecord_getDeviceName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScanRecord_getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getScanRecord_getServiceData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getScanRecord_getServiceUuids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScanRecord_getTxPowerLevel()I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapperImpl;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getTxPowerLevel()I

    move-result p0

    return p0
.end method
