.class public Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

.field private final mGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->close()V

    return-void
.end method

.method public disconnect()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void
.end method

.method public discoverServices()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method

.method public getServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    new-instance v3, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;

    iget-object v4, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-direct {v3, v2, v4}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;-><init>(Landroid/bluetooth/BluetoothGattService;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readCharacteristic(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method public readDescriptor(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method

.method public requestMtu(I)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p0

    return p0
.end method

.method public setCharacteristicNotification(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;Z)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p0

    return p0
.end method

.method public writeCharacteristic(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method public writeDescriptor(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method
