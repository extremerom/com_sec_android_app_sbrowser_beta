.class public Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

.field private final mService:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattService;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    iput-object p2, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    return-void
.end method


# virtual methods
.method public getCharacteristics()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object v3, v3, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    if-nez v3, :cond_0

    new-instance v3, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    iget-object v4, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-direct {v3, v2, v4}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V

    iget-object v4, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object v4, v4, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getInstanceId()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result p0

    return p0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
