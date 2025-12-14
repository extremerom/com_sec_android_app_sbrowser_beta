.class Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/bluetooth/ChromeBluetoothScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BleScanCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;


# direct methods
.method private constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)V

    return-void
.end method


# virtual methods
.method public onLeScanResult(ILorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getDevice()Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getDevice()Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bluetooth"

    const-string v3, "onScanResult %d %s %s"

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getScanRecord_getServiceUuids()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    move-object v13, v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v13, v3

    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getScanRecord_getServiceData()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    new-array v1, v2, [Ljava/lang/String;

    new-array v3, v2, [[B

    move-object v15, v1

    move-object/from16 v16, v3

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [[B

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    aput-object v6, v4, v5

    move v5, v7

    goto :goto_2

    :cond_3
    move-object v15, v3

    move-object/from16 v16, v4

    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getScanRecord_getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_4

    new-array v1, v2, [I

    new-array v2, v2, [[B

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v3, v3, [I

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    new-array v4, v4, [[B

    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_5
    iget-object v1, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-static {v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapterJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;

    move-result-object v5

    iget-object v1, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-static {v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J

    move-result-wide v6

    iget-object v8, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getDevice()Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getDevice()Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;

    move-result-object v10

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getScanRecord_getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getRssi()I

    move-result v12

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getScanRecord_getTxPowerLevel()I

    move-result v14

    invoke-interface/range {p2 .. p2}, Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;->getScanRecord_getAdvertiseFlags()I

    move-result v19

    invoke-interface/range {v5 .. v19}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;->createOrUpdateDeviceOnScan(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Ljava/lang/String;Lorg/chromium/device/bluetooth/wrapper/BluetoothDeviceWrapper;Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Object;[I[Ljava/lang/Object;I)V

    :cond_6
    return-void
.end method

.method public onScanFailed(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Bluetooth"

    const-string v1, "onScanFailed: %d"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapterJni;->get()Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J

    move-result-wide v0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$BleScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$Natives;->onScanFailed(JLorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)V

    return-void
.end method

.method public onScanFinished()V
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Bluetooth"

    const-string v1, "onScanFinished"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
