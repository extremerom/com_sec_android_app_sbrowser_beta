.class Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mNativePtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;->mFilter:Landroid/content/IntentFilter;

    new-instance v1, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor$1;

    invoke-direct {v1, p0}, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor$1;-><init>(Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;)V

    iput-object v1, p0, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-wide p1, p0, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;->mNativePtr:J

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;->mNativePtr:J

    return-wide v0
.end method

.method public static getInstance(J)Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;

    invoke-direct {v0, p0, p1}, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public stop()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/time_zone_monitor/TimeZoneMonitor;->mNativePtr:J

    return-void
.end method
