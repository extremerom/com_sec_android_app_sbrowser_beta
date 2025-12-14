.class final Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;,
        Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

.field private final mBluetoothGattCallbackImpl:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

.field final mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

.field private mNativeBluetoothDeviceAndroid:J

.field final mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;",
            "Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field final mWrapperToChromeDescriptorsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;",
            "Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mNativeBluetoothDeviceAndroid:J

    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    new-instance p1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;I)V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGattCallbackImpl:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeDescriptorsMap:Ljava/util/HashMap;

    new-array p0, p2, [Ljava/lang/Object;

    const-string p1, "Bluetooth"

    const-string p2, "ChromeBluetoothDevice created."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mNativeBluetoothDeviceAndroid:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private connectToService(Ljava/lang/String;)Lorg/chromium/device/bluetooth/Outcome;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/chromium/device/bluetooth/Outcome<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/chromium/device/bluetooth/Outcome;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/chromium/device/bluetooth/Outcome;

    invoke-direct {p1, p0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Exception;)V

    return-object p1
.end method

.method private connectToServiceInsecurely(Ljava/lang/String;)Lorg/chromium/device/bluetooth/Outcome;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/chromium/device/bluetooth/Outcome<",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/chromium/device/bluetooth/Outcome;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/chromium/device/bluetooth/Outcome;

    invoke-direct {p1, p0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Exception;)V

    return-object p1
.end method

.method private static create(JLorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;-><init>(JLorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V

    return-object v0
.end method

.method private createGattConnectionImpl()V
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Bluetooth"

    const-string v1, "connectGatt"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->close()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGattCallbackImpl:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->connectGatt(Landroid/content/Context;ZLorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;I)Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    return-void
.end method

.method private disconnectGatt()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Bluetooth"

    const-string v1, "BluetoothGatt.disconnect"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->disconnect()V

    :cond_0
    return-void
.end method

.method private getAddress()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBluetoothClass()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getBluetoothClass_getDeviceClass()I

    move-result p0

    return p0
.end method

.method private getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getType()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getType()I

    move-result p0

    return p0
.end method

.method private getUuids()[Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private isPaired()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getBondState()I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onBluetoothDeviceAndroidDestruction()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mNativeBluetoothDeviceAndroid:J

    return-void
.end method
