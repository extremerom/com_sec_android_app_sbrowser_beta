.class Lorg/chromium/base/PowerMonitorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/PowerMonitor$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/base/PowerMonitor$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/PowerMonitorJni;

    invoke-direct {v0}, Lorg/chromium/base/PowerMonitorJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onBatteryChargingChanged()V
    .locals 0

    invoke-static {}, LJ/N;->MCImhGql()V

    return-void
.end method

.method public onThermalStatusChanged(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MQNVaF2F(I)V

    return-void
.end method
