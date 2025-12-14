.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\u0003J\u0006\u0010\r\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;",
        "",
        "baseStartTime",
        "",
        "<init>",
        "(F)V",
        "lastTime",
        "",
        "value",
        "elapsedTime",
        "getElapsedTime",
        "()F",
        "stepDeltaTime",
        "step",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private elapsedTime:F

.field private lastTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;-><init>(FILtb/f;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;->elapsedTime:F

    return-void
.end method

.method public synthetic constructor <init>(FILtb/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final getElapsedTime()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;->elapsedTime:F

    return p0
.end method

.method public final step()F
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;->lastTime:J

    sub-long v4, v0, v2

    long-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    long-to-float v2, v4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v3, v2, v3

    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;->lastTime:J

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;->elapsedTime:F

    const v1, 0x3cac0831    # 0.021f

    invoke-static {v3, v1}, LG5/d3;->c(FF)F

    move-result v1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;->elapsedTime:F

    return v1
.end method

.method public final stepDeltaTime()F
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;->lastTime:J

    sub-long v4, v0, v2

    long-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    long-to-float v2, v4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v3, v2, v3

    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/FrameRateStepper;->lastTime:J

    const p0, 0x3cac0831    # 0.021f

    invoke-static {v3, p0}, LG5/d3;->c(FF)F

    move-result p0

    return p0
.end method
