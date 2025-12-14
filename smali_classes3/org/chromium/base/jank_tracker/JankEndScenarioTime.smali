.class public final Lorg/chromium/base/jank_tracker/JankEndScenarioTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field public final endScenarioTimeNs:J

.field public final timeoutDelayMs:J


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/chromium/base/jank_tracker/JankEndScenarioTime;->timeoutDelayMs:J

    iput-wide p1, p0, Lorg/chromium/base/jank_tracker/JankEndScenarioTime;->endScenarioTimeNs:J

    return-void
.end method

.method public static endAt(J)Lorg/chromium/base/jank_tracker/JankEndScenarioTime;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

    invoke-direct {v0, p0, p1}, Lorg/chromium/base/jank_tracker/JankEndScenarioTime;-><init>(J)V

    return-object v0
.end method
