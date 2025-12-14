.class public Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final CONSECUTIVE_SINGLE_TAP_COUNT:I = 0x3

.field static final CONSECUTIVE_SINGLE_TAP_WINDOW_MS:I = 0x7d0


# instance fields
.field private mFrustrationDetectionCallback:Ljava/lang/Runnable;

.field private mTapsTimeMs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public recordUnconsumedLongPress()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mFrustrationDetectionCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public recordUnconsumedTap()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->recordUnconsumedTap(J)V

    return-void
.end method

.method public recordUnconsumedTap(J)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mTapsTimeMs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mTapsTimeMs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-lez p1, :cond_1

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mTapsTimeMs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mTapsTimeMs:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mTapsTimeMs:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mTapsTimeMs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mFrustrationDetectionCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->mTapsTimeMs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method
