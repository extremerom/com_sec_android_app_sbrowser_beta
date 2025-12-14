.class public Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field final mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattDescriptor;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput-object p2, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    return-void
.end method


# virtual methods
.method public getUuid()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public getValue()[B
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p0

    return-object p0
.end method

.method public setValue([B)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result p0

    return p0
.end method
