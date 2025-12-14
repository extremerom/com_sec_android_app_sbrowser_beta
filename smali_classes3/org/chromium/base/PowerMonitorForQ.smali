.class public final Lorg/chromium/base/PowerMonitorForQ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static addThermalStatusListener(Landroid/os/PowerManager;)V
    .locals 1

    new-instance v0, Lorg/chromium/base/PowerMonitorForQ$1;

    invoke-direct {v0}, Lorg/chromium/base/PowerMonitorForQ$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    return-void
.end method
