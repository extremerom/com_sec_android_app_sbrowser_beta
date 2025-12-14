.class final Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterList;->mFilters:Ljava/util/ArrayList;

    return-void
.end method

.method private addFilter(Landroid/bluetooth/le/ScanFilter;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterList;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static create()Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterList;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterList;

    invoke-direct {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothScanFilterList;->mFilters:Ljava/util/ArrayList;

    return-object p0
.end method
