.class Lorg/chromium/device/mojom/BatteryMonitor_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;,
        Lorg/chromium/device/mojom/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusParams;,
        Lorg/chromium/device/mojom/BatteryMonitor_Internal$Stub;,
        Lorg/chromium/device/mojom/BatteryMonitor_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/BatteryMonitor;",
            "Lorg/chromium/device/mojom/BatteryMonitor$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/BatteryMonitor_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/BatteryMonitor_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/BatteryMonitor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
