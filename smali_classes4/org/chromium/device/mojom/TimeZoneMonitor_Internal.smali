.class Lorg/chromium/device/mojom/TimeZoneMonitor_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/TimeZoneMonitor_Internal$TimeZoneMonitorAddClientParams;,
        Lorg/chromium/device/mojom/TimeZoneMonitor_Internal$Stub;,
        Lorg/chromium/device/mojom/TimeZoneMonitor_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/TimeZoneMonitor;",
            "Lorg/chromium/device/mojom/TimeZoneMonitor$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/TimeZoneMonitor_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/TimeZoneMonitor_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/TimeZoneMonitor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
