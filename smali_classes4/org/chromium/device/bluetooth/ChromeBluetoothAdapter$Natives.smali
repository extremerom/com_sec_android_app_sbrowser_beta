.class interface abstract Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract createOrUpdateDeviceOnScan(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Object;[I[Ljava/lang/Object;I)V
.end method

.method public abstract onAdapterStateChanged(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Z)V
.end method

.method public abstract onScanFailed(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)V
.end method

.method public abstract populatePairedDevice(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V
.end method
