.class public Lorg/chromium/base/PowerMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/PowerMonitor$PowerStatus;,
        Lorg/chromium/base/PowerMonitor$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sBatteryPowerStatus:I

.field private static sIsInitRequested:Z


# direct methods
.method public static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/PowerMonitor;->lambda$createInternal$0(I)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->createInternal()V

    return-void
.end method

.method public static bridge synthetic c(Z)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/PowerMonitor;->onBatteryChargingChanged(Z)V

    return-void
.end method

.method public static create()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/chromium/base/PowerMonitor;->sIsInitRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/PowerMonitor;->sIsInitRequested:Z

    const-string v1, "PostPowerMonitorBroadcastReceiverInitToBackground"

    invoke-static {v1}, Lorg/chromium/base/BaseFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/chromium/base/f;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/chromium/base/f;-><init>(I)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/base/PowerMonitor;->createInternal()V

    :goto_0
    return-void
.end method

.method private static createInternal()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lorg/chromium/base/PowerMonitor$1;

    invoke-direct {v2}, Lorg/chromium/base/PowerMonitor$1;-><init>()V

    invoke-static {v0, v2, v1}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/chromium/base/PowerMonitorForQ;->addThermalStatusListener(Landroid/os/PowerManager;)V

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lorg/chromium/base/e;

    invoke-direct {v1, v0}, Lorg/chromium/base/e;-><init>(I)V

    const/4 v0, 0x7

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static getBatteryPowerStatus()I
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/base/PowerMonitor;->sIsInitRequested:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->create()V

    :cond_0
    sget v0, Lorg/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lorg/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private static getCurrentThermalStatus()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/base/PowerMonitor;->sIsInitRequested:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->create()V

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result v0

    return v0
.end method

.method private static getRemainingBatteryCapacity()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/base/PowerMonitor;->sIsInitRequested:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->create()V

    :cond_0
    invoke-static {}, Lorg/chromium/base/PowerMonitor;->getRemainingBatteryCapacityImpl()I

    move-result v0

    return v0
.end method

.method private static getRemainingBatteryCapacityImpl()I
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$createInternal$0(I)V
    .locals 1

    sget v0, Lorg/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/chromium/base/PowerMonitor;->onBatteryChargingChanged(Z)V

    :cond_1
    return-void
.end method

.method private static onBatteryChargingChanged(Z)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    sput p0, Lorg/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    invoke-static {}, Lorg/chromium/base/PowerMonitorJni;->get()Lorg/chromium/base/PowerMonitor$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/base/PowerMonitor$Natives;->onBatteryChargingChanged()V

    return-void
.end method
