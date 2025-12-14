.class Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardBluetoothGattCallbackToWrapper"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

.field final mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;


# direct methods
.method public constructor <init>(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    iput-object p2, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    const-string p1, "Bluetooth"

    const-string v0, "wrapper onCharacteristicChanged."

    invoke-static {p1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    invoke-interface {p0, p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;->onCharacteristicChanged(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    invoke-interface {p0, p1, p3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;->onCharacteristicRead(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    invoke-interface {p0, p1, p3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;->onCharacteristicWrite(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    invoke-interface {p0, p2, p3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;->onConnectionStateChange(II)V

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    invoke-interface {p0, p1, p3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;->onDescriptorRead(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    invoke-interface {p0, p1, p3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;->onDescriptorWrite(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    invoke-interface {p0, p2, p3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;->onMtuChanged(II)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;

    invoke-interface {p0, p2}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;->onServicesDiscovered(I)V

    return-void
.end method
