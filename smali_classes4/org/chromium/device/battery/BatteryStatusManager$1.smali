.class Lorg/chromium/device/battery/BatteryStatusManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/battery/BatteryStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/battery/BatteryStatusManager;


# direct methods
.method public constructor <init>(Lorg/chromium/device/battery/BatteryStatusManager;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/battery/BatteryStatusManager$1;->this$0:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/battery/BatteryStatusManager$1;->this$0:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-virtual {p0, p2}, Lorg/chromium/device/battery/BatteryStatusManager;->onReceive(Landroid/content/Intent;)V

    return-void
.end method
