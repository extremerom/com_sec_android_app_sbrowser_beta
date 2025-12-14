.class public final synthetic Lorg/chromium/device/bluetooth/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

.field public final synthetic c:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;II)V
    .locals 0

    iput p4, p0, Lorg/chromium/device/bluetooth/e;->a:I

    iput-object p1, p0, Lorg/chromium/device/bluetooth/e;->b:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    iput-object p2, p0, Lorg/chromium/device/bluetooth/e;->c:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    iput p3, p0, Lorg/chromium/device/bluetooth/e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lorg/chromium/device/bluetooth/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lorg/chromium/device/bluetooth/e;->d:I

    iget-object v1, p0, Lorg/chromium/device/bluetooth/e;->b:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/e;->c:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-static {v1, p0, v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->h(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V

    return-void

    :pswitch_0
    iget v0, p0, Lorg/chromium/device/bluetooth/e;->d:I

    iget-object v1, p0, Lorg/chromium/device/bluetooth/e;->b:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/e;->c:Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;

    invoke-static {v1, p0, v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;->c(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;Lorg/chromium/device/bluetooth/wrapper/BluetoothGattCharacteristicWrapper;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
