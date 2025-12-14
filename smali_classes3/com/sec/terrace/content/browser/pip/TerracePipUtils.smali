.class public Lcom/sec/terrace/content/browser/pip/TerracePipUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static clampAndStoreAspectRatio(FF)Landroid/util/Rational;
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/pip/TerracePipUtils;->clampAspectRatioAndRecomputeWidth(FF)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/util/Rational;

    float-to-int p0, p0

    float-to-int p1, p1

    invoke-direct {v0, p0, p1}, Landroid/util/Rational;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static clampAspectRatioAndRecomputeWidth(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    div-float/2addr p0, p1

    const v0, 0x3ed639d7

    const v1, 0x4018f5c3    # 2.39f

    invoke-static {p0, v0, v1}, LG5/L3;->d(FFF)F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method
