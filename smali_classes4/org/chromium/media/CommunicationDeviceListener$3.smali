.class Lorg/chromium/media/CommunicationDeviceListener$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/CommunicationDeviceListener;->registerForUsbAudioIntentBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/media/CommunicationDeviceListener;


# direct methods
.method public constructor <init>(Lorg/chromium/media/CommunicationDeviceListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceListener$3;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener$3;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {v0, p1}, Lorg/chromium/media/CommunicationDeviceListener;->c(Lorg/chromium/media/CommunicationDeviceListener;Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceListener$3;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceListener;->a(Lorg/chromium/media/CommunicationDeviceListener;)Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setDeviceExistence(IZ)V

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const-string p1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceListener$3;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceListener;->b(Lorg/chromium/media/CommunicationDeviceListener;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceListener$3;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceListener;->a(Lorg/chromium/media/CommunicationDeviceListener;)Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setDeviceExistence(IZ)V

    :cond_2
    move p1, p2

    :goto_0
    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceListener$3;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {p0}, Lorg/chromium/media/CommunicationDeviceListener;->a(Lorg/chromium/media/CommunicationDeviceListener;)Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->onPotentialDeviceStatusChange()V

    const-string p0, "USB"

    invoke-static {p1, p0}, Lorg/chromium/media/CommunicationDeviceListener;->d(ILjava/lang/String;)V

    return-void
.end method
