.class Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor$Natives;


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

.method public static get()Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptorJni;

    invoke-direct {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptorJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onRead(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;I[B)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MaKNZo8k(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public onWrite(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M4SmPJiR(JLjava/lang/Object;I)V

    return-void
.end method
