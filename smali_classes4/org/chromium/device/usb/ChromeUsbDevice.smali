.class final Lorg/chromium/device/usb/ChromeUsbDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final mDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Usb"

    const-string v0, "ChromeUsbDevice created."

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbDevice;)Lorg/chromium/device/usb/ChromeUsbDevice;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/usb/ChromeUsbDevice;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    return-object v0
.end method

.method private getConfigurations()[Landroid/hardware/usb/UsbConfiguration;
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v0

    new-array v1, v0, [Landroid/hardware/usb/UsbConfiguration;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getDeviceClass()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result p0

    return p0
.end method

.method private getDeviceId()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p0

    return p0
.end method

.method private getDeviceProtocol()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result p0

    return p0
.end method

.method private getDeviceSubclass()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result p0

    return p0
.end method

.method private getDeviceVersion()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private getManufacturerName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProductId()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    return p0
.end method

.method private getProductName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVendorId()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object p0
.end method
