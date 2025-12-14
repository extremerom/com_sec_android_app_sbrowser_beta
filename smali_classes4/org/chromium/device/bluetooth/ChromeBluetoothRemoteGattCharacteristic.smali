.class final Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field final mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

.field final mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

.field final mInstanceId:Ljava/lang/String;

.field private mNativeBluetoothRemoteGattCharacteristicAndroid:J


# direct methods
.method private constructor <init>(JLorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    iput-object p4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mInstanceId:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object p1, p5, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p1, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Bluetooth"

    const-string p2, "ChromeBluetoothRemoteGattCharacteristic created."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static create(JLorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;-><init>(JLorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V

    return-object v6
.end method

.method private createDescriptors()V
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristicJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;

    move-result-object v3

    iget-wide v4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    iget-object v9, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    move-object v6, p0

    invoke-interface/range {v3 .. v9}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;->createGattRemoteDescriptor(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V

    move v1, v10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getProperties()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->getProperties()I

    move-result p0

    return p0
.end method

.method private getUUID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onBluetoothRemoteGattCharacteristicAndroidDestruction()V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Bluetooth"

    const-string v3, "ChromeBluetoothRemoteGattCharacteristic Destroyed."

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v1, v1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v2, v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->setCharacteristicNotification(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;Z)Z

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private readRemoteCharacteristic()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0, p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->readCharacteristic(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Bluetooth"

    const-string v0, "readRemoteCharacteristic readCharacteristic failed."

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private setCharacteristicNotification(Z)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->setCharacteristicNotification(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;Z)Z

    move-result p0

    return p0
.end method

.method private writeRemoteCharacteristic([BI)Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0, p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->setValue([B)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "Bluetooth"

    if-nez p1, :cond_0

    const-string p0, "writeRemoteCharacteristic setValue failed."

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {p1, p2}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->setWriteType(I)V

    :cond_1
    iget-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object p1, p1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {p1, p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->writeCharacteristic(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "writeRemoteCharacteristic writeCharacteristic failed."

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCharacteristicChanged([B)V
    .locals 4

    const-string v0, "Bluetooth"

    const-string v1, "onCharacteristicChanged"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristicJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;->onChanged(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;[B)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(I)V
    .locals 7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "OK"

    goto :goto_0

    :cond_0
    const-string v1, "Error"

    :goto_0
    const-string v2, "Bluetooth"

    const-string v3, "onCharacteristicRead status:%d==%s"

    invoke-static {v2, v3, v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristicJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->getValue()[B

    move-result-object v6

    move-object v4, p0

    move v5, p1

    invoke-interface/range {v1 .. v6}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;->onRead(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;I[B)V

    :cond_1
    return-void
.end method

.method public onCharacteristicWrite(I)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "OK"

    goto :goto_0

    :cond_0
    const-string v1, "Error"

    :goto_0
    const-string v2, "Bluetooth"

    const-string v3, "onCharacteristicWrite status:%d==%s"

    invoke-static {v2, v3, v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristicJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic$Natives;->onWrite(JLorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;I)V

    :cond_1
    return-void
.end method
