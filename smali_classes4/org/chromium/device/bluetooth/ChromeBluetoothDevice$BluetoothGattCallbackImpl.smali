.class Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothGattCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;


# direct methods
.method private constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->lambda$onServicesDiscovered$2()V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->lambda$onMtuChanged$1()V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->lambda$onCharacteristicRead$4(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V

    return-void
.end method

.method public static synthetic d(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->lambda$onCharacteristicChanged$3(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;[B)V

    return-void
.end method

.method public static synthetic e(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->lambda$onDescriptorRead$6(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V

    return-void
.end method

.method public static synthetic f(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->lambda$onConnectionStateChange$0(II)V

    return-void
.end method

.method public static synthetic g(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->lambda$onDescriptorWrite$7(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V

    return-void
.end method

.method public static synthetic h(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->lambda$onCharacteristicWrite$5(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V

    return-void
.end method

.method private synthetic lambda$onCharacteristicChanged$3(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;[B)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Bluetooth"

    const-string p2, "onCharacteristicChanged when chromeCharacteristic == null."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->onCharacteristicChanged([B)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCharacteristicRead$4(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Bluetooth"

    const-string p2, "onCharacteristicRead when chromeCharacteristic == null."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->onCharacteristicRead(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCharacteristicWrite$5(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Bluetooth"

    const-string p2, "onCharacteristicWrite when chromeCharacteristic == null."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->onCharacteristicWrite(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onConnectionStateChange$0(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->onConnectionStateChangeUiThread(II)V

    return-void
.end method

.method private synthetic lambda$onDescriptorRead$6(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeDescriptorsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Bluetooth"

    const-string p2, "onDescriptorRead when chromeDescriptor == null."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->onDescriptorRead(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onDescriptorWrite$7(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeDescriptorsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Bluetooth"

    const-string p2, "onDescriptorWrite when chromeDescriptor == null."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->onDescriptorWrite(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onMtuChanged$1()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->discoverServices()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onServicesDiscovered$2()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->onServicesDiscoveredUiThread()V

    return-void
.end method

.method private onConnectionStateChangeUiThread(II)V
    .locals 8

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v1, v1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    const/16 v2, 0x205

    invoke-virtual {v1, v2}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->requestMtu(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->discoverServices()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v1, v1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->close()V

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-static {v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothDeviceJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;

    move-result-object v2

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-static {v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    if-ne p2, v0, :cond_2

    const/4 p0, 0x1

    :goto_1
    move v7, p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    move v6, p1

    invoke-interface/range {v2 .. v7}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;->onConnectionStateChange(JLorg/chromium/device/bluetooth/ChromeBluetoothDevice;IZ)V

    :cond_3
    return-void
.end method

.method private onServicesDiscoveredUiThread()V
    .locals 8

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattWrapper;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-static {v2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->b(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;->getInstanceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothDeviceJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;

    move-result-object v2

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-static {v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-interface/range {v2 .. v7}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;->createGattRemoteService(JLorg/chromium/device/bluetooth/ChromeBluetoothDevice;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattServiceWrapper;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothDeviceJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-static {v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)J

    move-result-wide v1

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$Natives;->onGattServicesDiscovered(JLorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;)V
    .locals 3

    const-string v0, "Bluetooth"

    const-string v1, "device onCharacteristicChanged."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;->getValue()[B

    move-result-object v0

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v1

    new-instance v2, Lorg/chromium/device/bluetooth/c;

    invoke-direct {v2, p0, p1, v0}, Lorg/chromium/device/bluetooth/c;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;[B)V

    invoke-virtual {v1, v2}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCharacteristicRead(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V
    .locals 3

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v0

    new-instance v1, Lorg/chromium/device/bluetooth/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/chromium/device/bluetooth/e;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;II)V

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCharacteristicWrite(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V
    .locals 3

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v0

    new-instance v1, Lorg/chromium/device/bluetooth/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/chromium/device/bluetooth/e;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;II)V

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string v1, "Connected"

    goto :goto_0

    :cond_0
    const-string v1, "Disconnected"

    :goto_0
    const-string v2, "Bluetooth"

    const-string v3, "onConnectionStateChange status:%d newState:%s"

    invoke-static {v2, v3, v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v0

    new-instance v1, Lorg/chromium/device/bluetooth/f;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/device/bluetooth/f;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;II)V

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDescriptorRead(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V
    .locals 3

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v0

    new-instance v1, Lorg/chromium/device/bluetooth/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/chromium/device/bluetooth/b;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;II)V

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDescriptorWrite(Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;I)V
    .locals 3

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v0

    new-instance v1, Lorg/chromium/device/bluetooth/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/chromium/device/bluetooth/b;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattDescriptorWrapper;II)V

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMtuChanged(II)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, "OK"

    goto :goto_0

    :cond_0
    const-string p2, "Error"

    :goto_0
    const-string v1, "Bluetooth"

    const-string v2, "onMtuChanged mtu:%d status:%d==%s"

    invoke-static {v1, v2, p1, v0, p2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object p1

    new-instance p2, Lorg/chromium/device/bluetooth/d;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lorg/chromium/device/bluetooth/d;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;I)V

    invoke-virtual {p1, p2}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServicesDiscovered(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "OK"

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    :goto_0
    const-string v1, "Bluetooth"

    const-string v2, "onServicesDiscovered status:%d==%s"

    invoke-static {v1, v2, v0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object p1

    new-instance v0, Lorg/chromium/device/bluetooth/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/device/bluetooth/d;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;I)V

    invoke-virtual {p1, v0}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
