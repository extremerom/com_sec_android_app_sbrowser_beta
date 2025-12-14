.class Lorg/chromium/device/bluetooth/ChromeBluetoothAdapterJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;


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

.method public static get()Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapterJni;

    invoke-direct {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapterJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createOrUpdateDeviceOnScan(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Object;[I[Ljava/lang/Object;I)V
    .locals 0

    invoke-static/range {p1 .. p14}, LJ/N;->MOuw3NGo(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public onAdapterStateChanged(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MGGbKqrZ(JLjava/lang/Object;Z)V

    return-void
.end method

.method public onScanFailed(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mq3WoOFf(JLjava/lang/Object;)V

    return-void
.end method

.method public populatePairedDevice(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MKOAqcaJ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
