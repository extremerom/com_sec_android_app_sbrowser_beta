.class Lorg/chromium/device/sensors/PlatformSensorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/sensors/PlatformSensor$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/device/sensors/PlatformSensor$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/device/sensors/PlatformSensorJni;

    invoke-direct {v0}, Lorg/chromium/device/sensors/PlatformSensorJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public notifyPlatformSensorError(JLorg/chromium/device/sensors/PlatformSensor;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MrHXg7he(JLjava/lang/Object;)V

    return-void
.end method

.method public updatePlatformSensorReading(JLorg/chromium/device/sensors/PlatformSensor;DDDDD)V
    .locals 0

    invoke-static/range {p1 .. p13}, LJ/N;->Mb4JvlL7(JLjava/lang/Object;DDDDD)V

    return-void
.end method
