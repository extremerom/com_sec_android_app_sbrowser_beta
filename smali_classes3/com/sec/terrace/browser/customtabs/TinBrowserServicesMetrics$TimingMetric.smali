.class public Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics$TimingMetric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimingMetric"
.end annotation


# instance fields
.field private final mMetric:Ljava/lang/String;

.field private final mStart:J


# direct methods
.method private static now()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics$TimingMetric;->mMetric:Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics$TimingMetric;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics$TimingMetric;->mStart:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;J)V

    return-void
.end method
