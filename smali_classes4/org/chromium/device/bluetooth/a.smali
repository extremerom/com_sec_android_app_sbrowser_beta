.class public final synthetic Lorg/chromium/device/bluetooth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/a;->a:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/a;->a:Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothAdapterWrapper;->getBluetoothLeScanner()Lorg/chromium/device/bluetooth/wrapper/BluetoothLeScannerWrapper;

    move-result-object p0

    return-object p0
.end method
