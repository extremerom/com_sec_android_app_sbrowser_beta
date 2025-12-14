.class public interface abstract Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract getDevice()Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;
.end method

.method public abstract getRssi()I
.end method

.method public abstract getScanRecord_getAdvertiseFlags()I
.end method

.method public abstract getScanRecord_getDeviceName()Ljava/lang/String;
.end method

.method public abstract getScanRecord_getManufacturerSpecificData()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getScanRecord_getServiceData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getScanRecord_getServiceUuids()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScanRecord_getTxPowerLevel()I
.end method
