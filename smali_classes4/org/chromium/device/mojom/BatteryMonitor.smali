.class public interface abstract Lorg/chromium/device/mojom/BatteryMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;,
        Lorg/chromium/device/mojom/BatteryMonitor$Proxy;
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

    sget-object v0, Lorg/chromium/device/mojom/BatteryMonitor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/device/mojom/BatteryMonitor;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract queryNextStatus(Lorg/chromium/device/mojom/BatteryMonitor$QueryNextStatus_Response;)V
.end method
