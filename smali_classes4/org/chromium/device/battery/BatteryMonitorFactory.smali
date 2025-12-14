.class public Lorg/chromium/device/battery/BatteryMonitorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/services/service_manager/InterfaceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/services/service_manager/InterfaceFactory<",
        "Lorg/chromium/device/mojom/BatteryMonitor;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBatteryStatus:Lorg/chromium/device/mojom/BatteryStatus;

.field private final mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

.field private mHasStatusUpdate:Z

.field private final mManager:Lorg/chromium/device/battery/BatteryStatusManager;

.field private final mSubscribedMonitors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/chromium/device/battery/BatteryMonitorImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    new-instance v0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/battery/BatteryMonitorFactory$1;-><init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mHasStatusUpdate:Z

    new-instance v1, Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-direct {v1, v0}, Lorg/chromium/device/battery/BatteryStatusManager;-><init>(Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;)V

    iput-object v1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mManager:Lorg/chromium/device/battery/BatteryStatusManager;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/device/battery/BatteryMonitorFactory;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/device/battery/BatteryMonitorFactory;Lorg/chromium/device/mojom/BatteryStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mBatteryStatus:Lorg/chromium/device/mojom/BatteryStatus;

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/device/battery/BatteryMonitorFactory;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mHasStatusUpdate:Z

    return-void
.end method


# virtual methods
.method public createImpl()Lorg/chromium/device/mojom/BatteryMonitor;
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mManager:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-virtual {v0}, Lorg/chromium/device/battery/BatteryStatusManager;->start()V

    :cond_0
    new-instance v0, Lorg/chromium/device/battery/BatteryMonitorImpl;

    invoke-direct {v0, p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;-><init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V

    iget-boolean v1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mHasStatusUpdate:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mBatteryStatus:Lorg/chromium/device/mojom/BatteryStatus;

    invoke-virtual {v0, v1}, Lorg/chromium/device/battery/BatteryMonitorImpl;->didChange(Lorg/chromium/device/mojom/BatteryStatus;)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryMonitorFactory;->createImpl()Lorg/chromium/device/mojom/BatteryMonitor;

    move-result-object p0

    return-object p0
.end method

.method public unsubscribe(Lorg/chromium/device/battery/BatteryMonitorImpl;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mManager:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-virtual {p1}, Lorg/chromium/device/battery/BatteryStatusManager;->stop()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mHasStatusUpdate:Z

    :cond_0
    return-void
.end method
