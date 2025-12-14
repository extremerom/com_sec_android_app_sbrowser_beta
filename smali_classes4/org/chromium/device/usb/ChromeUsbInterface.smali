.class final Lorg/chromium/device/usb/ChromeUsbInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field final mInterface:Landroid/hardware/usb/UsbInterface;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Usb"

    const-string v0, "ChromeUsbInterface created."

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbInterface;)Lorg/chromium/device/usb/ChromeUsbInterface;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/usb/ChromeUsbInterface;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbInterface;-><init>(Landroid/hardware/usb/UsbInterface;)V

    return-object v0
.end method

.method private getAlternateSetting()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result p0

    return p0
.end method

.method private getEndpoints()[Landroid/hardware/usb/UsbEndpoint;
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    new-array v1, v0, [Landroid/hardware/usb/UsbEndpoint;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getInterfaceClass()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result p0

    return p0
.end method

.method private getInterfaceNumber()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result p0

    return p0
.end method

.method private getInterfaceProtocol()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result p0

    return p0
.end method

.method private getInterfaceSubclass()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result p0

    return p0
.end method
