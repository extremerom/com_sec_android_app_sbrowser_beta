.class public Lorg/chromium/device/battery/BatteryMonitorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/mojom/BatteryMonitor;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mCallback:Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;

.field private final mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

.field private mHasStatusToReport:Z

.field private mStatus:Lorg/chromium/device/mojom/BatteryStatus;

.field private mSubscribed:Z


# direct methods
.method public constructor <init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    return-void
.end method

.method private unsubscribe()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/device/battery/BatteryMonitorFactory;->unsubscribe(Lorg/chromium/device/battery/BatteryMonitorImpl;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->unsubscribe()V

    return-void
.end method

.method public didChange(Lorg/chromium/device/mojom/BatteryStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mStatus:Lorg/chromium/device/mojom/BatteryStatus;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    iget-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->reportStatus()V

    :cond_0
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->unsubscribe()V

    return-void
.end method

.method public queryNextStatus(Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;

    if-eqz v0, :cond_0

    const-string p1, "BatteryMonitorImpl"

    const-string v0, "Overlapped call to queryNextStatus!"

    invoke-static {p1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->unsubscribe()V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;

    iget-boolean p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->reportStatus()V

    :cond_1
    return-void
.end method

.method public reportStatus()V
    .locals 2
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mStatus:Lorg/chromium/device/mojom/BatteryStatus;

    invoke-interface {v0, v1}, Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;->call(Lorg/chromium/device/mojom/BatteryStatus;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    return-void
.end method
