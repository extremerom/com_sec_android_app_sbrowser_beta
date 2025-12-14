.class Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattServiceJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService$Natives;


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

.method public static get()Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattServiceJni;

    invoke-direct {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattServiceJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createGattRemoteCharacteristic(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MM2CqKoK(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
