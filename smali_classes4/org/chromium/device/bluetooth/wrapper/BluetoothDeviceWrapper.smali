.class public Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final DEVICE_CLASS_UNSPECIFIED:I = 0x1f00


# instance fields
.field final mCharacteristicsToWrappers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final mDescriptorsToWrappers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            "Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public connectGatt(Landroid/content/Context;ZLorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;I)Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;
    .locals 3

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;

    invoke-direct {v2, p3, p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper$ForwardBluetoothGattCallbackToWrapper;-><init>(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V

    invoke-virtual {v1, p1, p2, v2, p4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;-><init>(Landroid/bluetooth/BluetoothGatt;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;)V

    return-object v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothClass_getDeviceClass()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x1f00

    return p0
.end method

.method public getBondState()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p0

    return p0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
