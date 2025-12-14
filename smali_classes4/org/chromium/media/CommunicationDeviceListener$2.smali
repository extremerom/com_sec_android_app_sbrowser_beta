.class Lorg/chromium/media/CommunicationDeviceListener$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/CommunicationDeviceListener;->registerForBluetoothHeadsetIntentBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/CommunicationDeviceListener;


# direct methods
.method public constructor <init>(Lorg/chromium/media/CommunicationDeviceListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceListener$2;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceListener$2;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceListener;->a(Lorg/chromium/media/CommunicationDeviceListener;)Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setDeviceExistence(IZ)V

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceListener$2;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {p0}, Lorg/chromium/media/CommunicationDeviceListener;->a(Lorg/chromium/media/CommunicationDeviceListener;)Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->onPotentialDeviceStatusChange()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceListener$2;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceListener;->a(Lorg/chromium/media/CommunicationDeviceListener;)Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setDeviceExistence(IZ)V

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceListener$2;->this$0:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-static {p0}, Lorg/chromium/media/CommunicationDeviceListener;->a(Lorg/chromium/media/CommunicationDeviceListener;)Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->onPotentialDeviceStatusChange()V

    :goto_0
    const-string p0, "Bluetooth"

    invoke-static {v0, p0}, Lorg/chromium/media/CommunicationDeviceListener;->d(ILjava/lang/String;)V

    return-void
.end method
