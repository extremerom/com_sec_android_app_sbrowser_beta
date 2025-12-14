.class public final synthetic Lorg/chromium/device/battery/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/device/battery/BatteryStatusManager;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/device/battery/BatteryStatusManager;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/device/battery/a;->a:I

    iput-object p1, p0, Lorg/chromium/device/battery/a;->b:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/device/battery/a;->a:I

    iget-object p0, p0, Lorg/chromium/device/battery/a;->b:Lorg/chromium/device/battery/BatteryStatusManager;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryStatusManager;->registerBatteryStatusManagerReceiver()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryStatusManager;->unregisterBatteryStatusManagerReceiver()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
