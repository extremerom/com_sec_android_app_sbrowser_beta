.class public interface abstract Lorg/chromium/device/mojom/Sensor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/Sensor$AddConfiguration_Response;,
        Lorg/chromium/device/mojom/Sensor$GetDefaultConfiguration_Response;,
        Lorg/chromium/device/mojom/Sensor$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/Sensor;",
            "Lorg/chromium/device/mojom/Sensor$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/device/mojom/Sensor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/device/mojom/Sensor;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract addConfiguration(Lorg/chromium/device/mojom/SensorConfiguration;Lorg/chromium/device/mojom/Sensor$AddConfiguration_Response;)V
.end method

.method public abstract configureReadingChangeNotifications(Z)V
.end method

.method public abstract getDefaultConfiguration(Lorg/chromium/device/mojom/Sensor$GetDefaultConfiguration_Response;)V
.end method

.method public abstract removeConfiguration(Lorg/chromium/device/mojom/SensorConfiguration;)V
.end method

.method public abstract resume()V
.end method

.method public abstract suspend()V
.end method
