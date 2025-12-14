.class Lorg/chromium/device/usb/ChromeUsbService$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/device/usb/ChromeUsbService;->registerForUsbDeviceIntentBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/usb/ChromeUsbService;


# direct methods
.method public constructor <init>(Lorg/chromium/device/usb/ChromeUsbService;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbService$2;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/device/usb/ChromeUsbServiceJni;->get()Lorg/chromium/device/usb/ChromeUsbService$Natives;

    move-result-object p2

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbService$2;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    iget-wide v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    invoke-interface {p2, v0, v1, p0, p1}, Lorg/chromium/device/usb/ChromeUsbService$Natives;->deviceAttached(JLorg/chromium/device/usb/ChromeUsbService;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/chromium/device/usb/ChromeUsbServiceJni;->get()Lorg/chromium/device/usb/ChromeUsbService$Natives;

    move-result-object p2

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbService$2;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    iget-wide v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    invoke-interface {p2, v0, v1, p0, p1}, Lorg/chromium/device/usb/ChromeUsbService$Natives;->deviceDetached(JLorg/chromium/device/usb/ChromeUsbService;I)V

    :cond_1
    :goto_0
    return-void
.end method
