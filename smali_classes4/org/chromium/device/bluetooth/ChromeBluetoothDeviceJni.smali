.class Lorg/chromium/device/bluetooth/ChromeBluetoothDeviceJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;


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

.method public static get()Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDeviceJni;

    invoke-direct {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDeviceJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createGattRemoteService(JLorg/chromium/device/bluetooth/ChromeBluetoothDevice;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MAoRk69U(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onConnectionStateChange(JLorg/chromium/device/bluetooth/ChromeBluetoothDevice;IZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MmnW7gQC(JLjava/lang/Object;IZ)V

    return-void
.end method

.method public onGattServicesDiscovered(JLorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M9HSgyay(JLjava/lang/Object;)V

    return-void
.end method
