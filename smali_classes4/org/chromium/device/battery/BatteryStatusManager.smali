.class Lorg/chromium/device/battery/BatteryStatusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;,
        Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final sSequencedTaskRunner:Lorg/chromium/base/task/TaskRunner;


# instance fields
.field private mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

.field private final mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

.field private volatile mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/base/task/PostTask;->createSequencedTaskRunner(I)Lorg/chromium/base/task/SequencedTaskRunner;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/battery/BatteryStatusManager;->sSequencedTaskRunner:Lorg/chromium/base/task/TaskRunner;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;)V
    .locals 3

    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "batterymanager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    invoke-direct {v0, v1}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;-><init>(Landroid/os/BatteryManager;)V

    invoke-direct {p0, p1, v0}, Lorg/chromium/device/battery/BatteryStatusManager;-><init>(Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;)V

    return-void
.end method

.method private constructor <init>(Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mFilter:Landroid/content/IntentFilter;

    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/battery/BatteryStatusManager$1;-><init>(Lorg/chromium/device/battery/BatteryStatusManager;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    iput-object p2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/device/battery/BatteryStatusManager;)Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/device/battery/BatteryStatusManager;Lorg/chromium/device/mojom/BatteryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/battery/BatteryStatusManager;->updateBatteryStatus(Lorg/chromium/device/mojom/BatteryStatus;)V

    return-void
.end method

.method private updateBatteryStatus(Lorg/chromium/device/mojom/BatteryStatus;)V
    .locals 14

    iget-object p0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result v2

    int-to-double v2, v2

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result p0

    int-to-double v4, p0

    iget-boolean p0, p1, Lorg/chromium/device/mojom/BatteryStatus;->charging:Z

    const-wide v6, 0x40ac200000000000L    # 3600.0

    const-wide/16 v8, 0x0

    if-eqz p0, :cond_0

    iget-wide v10, p1, Lorg/chromium/device/mojom/BatteryStatus;->chargingTime:D

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p0, v10, v12

    if-nez p0, :cond_1

    cmpl-double p0, v4, v8

    if-lez p0, :cond_1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v4, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/chromium/device/mojom/BatteryStatus;->chargingTime:D

    goto :goto_0

    :cond_0
    cmpg-double p0, v4, v8

    if-gez p0, :cond_1

    neg-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/chromium/device/mojom/BatteryStatus;->dischargingTime:D

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;)V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BatteryStatusManager"

    const-string p1, "Unexpected intent."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "present"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_8

    if-ne v2, v3, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "level"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "scale"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-double v5, v0

    int-to-double v7, v4

    div-double/2addr v5, v7

    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_2

    cmpl-double v0, v5, v9

    if-lez v0, :cond_3

    :cond_2
    move-wide v5, v9

    :cond_3
    const/4 v0, 0x1

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    const-string v4, "status"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    move v1, v0

    :cond_5
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move-wide v7, v3

    :goto_1
    new-instance p1, Lorg/chromium/device/mojom/BatteryStatus;

    invoke-direct {p1}, Lorg/chromium/device/mojom/BatteryStatus;-><init>()V

    iput-boolean v2, p1, Lorg/chromium/device/mojom/BatteryStatus;->charging:Z

    iput-wide v7, p1, Lorg/chromium/device/mojom/BatteryStatus;->chargingTime:D

    iput-wide v3, p1, Lorg/chromium/device/mojom/BatteryStatus;->dischargingTime:D

    iput-wide v5, p1, Lorg/chromium/device/mojom/BatteryStatus;->level:D

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/device/battery/BatteryStatusManager$2;-><init>(Lorg/chromium/device/battery/BatteryStatusManager;Lorg/chromium/device/mojom/BatteryStatus;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    invoke-interface {p0, p1}, Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;->onBatteryStatusChanged(Lorg/chromium/device/mojom/BatteryStatus;)V

    :goto_2
    return-void

    :cond_8
    :goto_3
    iget-object p0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    new-instance p1, Lorg/chromium/device/mojom/BatteryStatus;

    invoke-direct {p1}, Lorg/chromium/device/mojom/BatteryStatus;-><init>()V

    invoke-interface {p0, p1}, Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;->onBatteryStatusChanged(Lorg/chromium/device/mojom/BatteryStatus;)V

    return-void
.end method

.method public registerBatteryStatusManagerReceiver()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mFilter:Landroid/content/IntentFilter;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BatteryStatusManagerBroadcastReceiverInBackground"

    invoke-static {v0}, Lorg/chromium/device/DeviceFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/device/battery/BatteryStatusManager;->sSequencedTaskRunner:Lorg/chromium/base/task/TaskRunner;

    new-instance v1, Lorg/chromium/device/battery/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/chromium/device/battery/a;-><init>(Lorg/chromium/device/battery/BatteryStatusManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryStatusManager;->registerBatteryStatusManagerReceiver()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BatteryStatusManagerBroadcastReceiverInBackground"

    invoke-static {v0}, Lorg/chromium/device/DeviceFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/device/battery/BatteryStatusManager;->sSequencedTaskRunner:Lorg/chromium/base/task/TaskRunner;

    new-instance v1, Lorg/chromium/device/battery/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/device/battery/a;-><init>(Lorg/chromium/device/battery/BatteryStatusManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryStatusManager;->unregisterBatteryStatusManagerReceiver()V

    :goto_0
    return-void
.end method

.method public unregisterBatteryStatusManagerReceiver()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    return-void
.end method
