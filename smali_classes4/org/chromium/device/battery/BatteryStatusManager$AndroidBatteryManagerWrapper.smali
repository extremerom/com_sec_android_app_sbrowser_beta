.class Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/battery/BatteryStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidBatteryManagerWrapper"
.end annotation


# instance fields
.field private final mBatteryManager:Landroid/os/BatteryManager;


# direct methods
.method public constructor <init>(Landroid/os/BatteryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->mBatteryManager:Landroid/os/BatteryManager;

    return-void
.end method


# virtual methods
.method public getIntProperty(I)I
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    return p0
.end method
