.class public Lorg/chromium/base/jank_tracker/JankMetricUMARecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static recordJankMetricsToUMA(Lorg/chromium/base/jank_tracker/JankMetrics;JJI)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/jank_tracker/JankMetricUMARecorderJni;->get()Lorg/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->missedVsyncs:[I

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;->recordJankMetrics([J[IJJI)V

    return-void
.end method
