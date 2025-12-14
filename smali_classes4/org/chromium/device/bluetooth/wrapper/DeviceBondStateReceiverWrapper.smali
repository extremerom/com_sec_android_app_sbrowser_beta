.class public Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper$Callback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mCallback:Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper$Callback;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper;->mCallback:Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper$Callback;

    new-instance v0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-direct {v0, p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {p0, v0, p2}, Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper$Callback;->onDeviceBondStateChanged(Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;I)V

    return-void
.end method
