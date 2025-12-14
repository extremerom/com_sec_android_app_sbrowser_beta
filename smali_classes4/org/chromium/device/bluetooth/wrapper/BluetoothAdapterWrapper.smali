.class public Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected final mContext:Landroid/content/Context;

.field private final mHasBluetoothFeature:Z

.field private final mHasLowEnergyFeature:Z

.field protected mScannerWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;ZZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mHasBluetoothFeature:Z

    iput-boolean p4, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mHasLowEnergyFeature:Z

    return-void
.end method

.method public static createWithDefaultAdapter(Z)Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const-string v3, "Bluetooth"

    if-ge v0, v1, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothAdapterWrapper.create failed: Lacking Bluetooth permissions."

    invoke-static {v3, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    if-nez v0, :cond_3

    const-string p0, "BluetoothAdapterWrapper.create failed: No Bluetooth support."

    invoke-static {v3, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p0, "BluetoothAdapterWrapper.create failed: Default adapter not found."

    invoke-static {v3, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4
    new-instance v2, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3, p0, v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;ZZ)V

    return-object v2
.end method


# virtual methods
.method public disable()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p0

    return p0
.end method

.method public enable()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothLeScanner()Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mHasLowEnergyFeature:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mScannerWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;

    if-nez v1, :cond_2

    new-instance v1, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;)V

    iput-object v1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mScannerWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;

    :cond_2
    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mScannerWrapper:Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;

    return-object p0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-direct {v2, v1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScanMode()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p0

    return p0
.end method

.method public hasBluetoothFeature()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mHasBluetoothFeature:Z

    return p0
.end method

.method public isDiscovering()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    return p0
.end method
