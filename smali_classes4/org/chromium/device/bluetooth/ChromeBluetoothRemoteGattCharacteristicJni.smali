.class Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristicJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristicJni;

    invoke-direct {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristicJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createGattRemoteDescriptor(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MkqvrLoV(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onChanged(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;[B)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MZCKcdTH(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onRead(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;I[B)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Mn9Gzi$d(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public onWrite(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M3TCxDs5(JLjava/lang/Object;I)V

    return-void
.end method
