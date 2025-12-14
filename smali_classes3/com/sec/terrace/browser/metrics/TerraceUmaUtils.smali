.class public Lcom/sec/terrace/browser/metrics/TerraceUmaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sApplicationStartTimeMs:J

.field private static sApplicationStartWallClockMs:J


# direct methods
.method private static getApplicationStartTime()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-wide v0, Lcom/sec/terrace/browser/metrics/TerraceUmaUtils;->sApplicationStartTimeMs:J

    return-wide v0
.end method

.method private static getMainEntryPointWallTime()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-wide v0, Lcom/sec/terrace/browser/metrics/TerraceUmaUtils;->sApplicationStartWallClockMs:J

    return-wide v0
.end method

.method private static getProcessStartTime()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static recordMainEntryPointTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/terrace/browser/metrics/TerraceUmaUtils;->sApplicationStartWallClockMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/terrace/browser/metrics/TerraceUmaUtils;->sApplicationStartTimeMs:J

    return-void
.end method
