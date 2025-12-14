.class Lorg/chromium/base/jank_tracker/JankMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field public final durationsNs:[J

.field public final isJanky:[Z

.field public final missedVsyncs:[I

.field public final timestampsNs:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->missedVsyncs:[I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->isJanky:[Z

    return-void
.end method

.method public constructor <init>([J[J[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    iput-object p2, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    iput-object p3, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->missedVsyncs:[I

    const/4 p1, 0x0

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankMetrics;->isJanky:[Z

    return-void
.end method
