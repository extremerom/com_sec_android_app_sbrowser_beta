.class public final synthetic Lorg/chromium/device/bluetooth/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/g;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    iput p2, p0, Lorg/chromium/device/bluetooth/g;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/g;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;

    iget p0, p0, Lorg/chromium/device/bluetooth/g;->b:I

    invoke-static {v0, p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothLeScanner;I)V

    return-void
.end method
