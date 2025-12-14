.class final Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mBuilder:Landroid/bluetooth/le/ScanFilter$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterBuilder;->mBuilder:Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method private static create()Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterBuilder;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterBuilder;

    invoke-direct {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterBuilder;-><init>()V

    return-object v0
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterBuilder;->mBuilder:Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_0
    return-void
.end method

.method private setServiceUuid(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterBuilder;->mBuilder:Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanFilter;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterBuilder;->mBuilder:Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p0

    return-object p0
.end method
