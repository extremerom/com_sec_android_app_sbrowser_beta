.class public Lorg/chromium/base/metrics/HistogramBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field public final mCount:I

.field public final mMax:J

.field public final mMin:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/base/metrics/HistogramBucket;->mMin:I

    iput-wide p2, p0, Lorg/chromium/base/metrics/HistogramBucket;->mMax:J

    iput p4, p0, Lorg/chromium/base/metrics/HistogramBucket;->mCount:I

    return-void
.end method
