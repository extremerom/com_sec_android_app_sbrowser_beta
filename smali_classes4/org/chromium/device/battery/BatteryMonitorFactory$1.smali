.class Lorg/chromium/device/battery/BatteryMonitorFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/battery/BatteryMonitorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;


# direct methods
.method public constructor <init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;->this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryStatusChanged(Lorg/chromium/device/mojom/BatteryStatus;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;->this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-static {v0}, Lorg/chromium/device/battery/BatteryMonitorFactory;->c(Lorg/chromium/device/battery/BatteryMonitorFactory;)V

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;->this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-static {v0, p1}, Lorg/chromium/device/battery/BatteryMonitorFactory;->b(Lorg/chromium/device/battery/BatteryMonitorFactory;Lorg/chromium/device/mojom/BatteryStatus;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;->this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-static {p0}, Lorg/chromium/device/battery/BatteryMonitorFactory;->a(Lorg/chromium/device/battery/BatteryMonitorFactory;)Ljava/util/HashSet;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/battery/BatteryMonitorImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/device/battery/BatteryMonitorImpl;->didChange(Lorg/chromium/device/mojom/BatteryStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method
