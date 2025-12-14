.class final Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;,
        Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

.field private mDeviceBondStateReceiver:Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper;

.field private final mLeScanner:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

.field private mNativeBluetoothAdapterAndroid:J


# direct methods
.method private constructor <init>(JLorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    if-eqz p3, :cond_0

    new-instance p1, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    new-instance p2, Lorg/chromium/device/bluetooth/a;

    invoke-direct {p2, p3}, Lorg/chromium/device/bluetooth/a;-><init>(Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;)V

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;I)V

    invoke-direct {p1, p2, v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;-><init>(Ljava/util/function/Supplier;Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;)V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mLeScanner:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mLeScanner:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    :goto_0
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->registerBroadcastReceiver()V

    const-string p0, "Bluetooth"

    if-nez p3, :cond_1

    const-string p1, "ChromeBluetoothAdapter created with no adapterWrapper."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "ChromeBluetoothAdapter created with provided adapterWrapper."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    return-wide v0
.end method

.method private static create(JLorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;)Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;-><init>(JLorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;)V

    return-object v0
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getBluetoothStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "illegal state: "

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "STATE_TURNING_OFF"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_ON"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_TURNING_ON"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_OFF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getOsPermissionStatus()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->hasPermissionToScan()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v1
.end method

.method private hasPermissionToScan()Z
    .locals 4
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lorg/chromium/components/location/LocationUtils;->getInstance()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/location/LocationUtils;->isSystemLocationSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method private isDiscoverable()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getScanMode()I

    move-result p0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDiscovering()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mLeScanner:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->isScanning()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPowered()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPresent()Z
    .locals 0
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onBluetoothAdapterAndroidDestruction()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->stopScan()Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->unregisterBroadcastReceiver()V

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mDeviceBondStateReceiver:Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mDeviceBondStateReceiver:Lorg/chromium/device/bluetooth/wrapper/DeviceBondStateReceiverWrapper;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private populatePairedDevice(Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V
    .locals 6

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapterJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    invoke-virtual {p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;->populatePairedDevice(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V

    return-void
.end method

.method private populatePairedDevices()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->hasBluetoothFeature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-direct {p0, v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->populatePairedDevice(Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setPowered(Z)Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->enable()Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->disable()Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private startScan(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)Z"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->hasPermissionToScan()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mLeScanner:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->startScan(JLjava/util/List;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private stopScan()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mLeScanner:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->stopScan()Z

    move-result p0

    return p0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "onReceive: BluetoothAdapter.ACTION_STATE_CHANGED: %s"

    invoke-direct {p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->getBluetoothStateString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, p2, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapterJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    const/4 p2, 0x1

    invoke-interface {p1, v0, v1, p0, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;->onAdapterStateChanged(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapterJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    const/4 p2, 0x0

    invoke-interface {p1, v0, v1, p0, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;->onAdapterStateChanged(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Z)V

    :cond_2
    :goto_0
    return-void
.end method
