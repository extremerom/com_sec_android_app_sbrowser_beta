.class public Lorg/chromium/base/metrics/TimingMetric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/metrics/TimingMetric$TimerType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mMetricName:Ljava/lang/String;

.field private mStartTime:J

.field private final mTimerType:I


# virtual methods
.method public close()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/base/metrics/TimingMetric;->mMetricName:Ljava/lang/String;

    iget-wide v1, p0, Lorg/chromium/base/metrics/TimingMetric;->mStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    :cond_0
    iput-wide v3, p0, Lorg/chromium/base/metrics/TimingMetric;->mStartTime:J

    iget p0, p0, Lorg/chromium/base/metrics/TimingMetric;->mTimerType:I

    if-eqz p0, :cond_3

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/base/TimeUtils;->currentThreadTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/chromium/base/TimeUtils;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/chromium/base/TimeUtils;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method
