.class Lorg/chromium/device/usb/ChromeUsbConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field final mConnection:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbConnection;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Usb"

    const-string v0, "ChromeUsbConnection created."

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private close()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbConnection;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbDeviceConnection;)Lorg/chromium/device/usb/ChromeUsbConnection;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/usb/ChromeUsbConnection;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbConnection;-><init>(Landroid/hardware/usb/UsbDeviceConnection;)V

    return-object v0
.end method

.method private getFileDescriptor()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbConnection;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result p0

    return p0
.end method
