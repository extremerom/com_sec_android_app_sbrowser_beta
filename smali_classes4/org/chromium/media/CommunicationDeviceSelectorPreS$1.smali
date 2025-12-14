.class Lorg/chromium/media/CommunicationDeviceSelectorPreS$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/CommunicationDeviceSelectorPreS;->registerForBluetoothScoIntentBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/CommunicationDeviceSelectorPreS;


# direct methods
.method public constructor <init>(Lorg/chromium/media/CommunicationDeviceSelectorPreS;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS$1;->this$0:Lorg/chromium/media/CommunicationDeviceSelectorPreS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS$1;->this$0:Lorg/chromium/media/CommunicationDeviceSelectorPreS;

    invoke-static {p0, p2}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->b(Lorg/chromium/media/CommunicationDeviceSelectorPreS;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS$1;->this$0:Lorg/chromium/media/CommunicationDeviceSelectorPreS;

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->a(Lorg/chromium/media/CommunicationDeviceSelectorPreS;)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS$1;->this$0:Lorg/chromium/media/CommunicationDeviceSelectorPreS;

    invoke-virtual {p1}, Lorg/chromium/media/CommunicationDeviceSelector;->maybeUpdateSelectedDevice()V

    :cond_2
    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS$1;->this$0:Lorg/chromium/media/CommunicationDeviceSelectorPreS;

    invoke-static {p0, v0}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->b(Lorg/chromium/media/CommunicationDeviceSelectorPreS;I)V

    :goto_0
    return-void
.end method
