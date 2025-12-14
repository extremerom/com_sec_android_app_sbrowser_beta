.class Lorg/chromium/device/mojom/PowerMonitorClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/PowerMonitorClient_Internal$PowerMonitorClientResumeParams;,
        Lorg/chromium/device/mojom/PowerMonitorClient_Internal$PowerMonitorClientSuspendParams;,
        Lorg/chromium/device/mojom/PowerMonitorClient_Internal$PowerMonitorClientPowerStateChangeParams;,
        Lorg/chromium/device/mojom/PowerMonitorClient_Internal$Stub;,
        Lorg/chromium/device/mojom/PowerMonitorClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/PowerMonitorClient;",
            "Lorg/chromium/device/mojom/PowerMonitorClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/PowerMonitorClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/PowerMonitorClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/PowerMonitorClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
