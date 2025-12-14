.class public interface abstract Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract onCharacteristicChanged(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;)V
.end method

.method public abstract onCharacteristicRead(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V
.end method

.method public abstract onCharacteristicWrite(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V
.end method

.method public abstract onConnectionStateChange(II)V
.end method

.method public abstract onDescriptorRead(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V
.end method

.method public abstract onDescriptorWrite(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V
.end method

.method public abstract onMtuChanged(II)V
.end method

.method public abstract onServicesDiscovered(I)V
.end method
