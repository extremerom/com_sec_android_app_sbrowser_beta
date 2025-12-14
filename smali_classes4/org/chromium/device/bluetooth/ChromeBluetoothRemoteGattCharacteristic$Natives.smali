.class interface abstract Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract createGattRemoteDescriptor(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
.end method

.method public abstract onChanged(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;[B)V
.end method

.method public abstract onRead(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;I[B)V
.end method

.method public abstract onWrite(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;I)V
.end method
