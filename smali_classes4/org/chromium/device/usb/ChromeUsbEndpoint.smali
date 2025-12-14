.class final Lorg/chromium/device/usb/ChromeUsbEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field final mEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Usb"

    const-string v0, "ChromeUsbEndpoint created."

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbEndpoint;)Lorg/chromium/device/usb/ChromeUsbEndpoint;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/usb/ChromeUsbEndpoint;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbEndpoint;-><init>(Landroid/hardware/usb/UsbEndpoint;)V

    return-object v0
.end method

.method private getAddress()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result p0

    return p0
.end method

.method private getAttributes()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result p0

    return p0
.end method

.method private getInterval()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result p0

    return p0
.end method

.method private getMaxPacketSize()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p0

    return p0
.end method
