.class public interface abstract LH0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFontScale()F
.end method

.method public j(F)I
    .locals 0

    invoke-interface {p0, p1}, LH0/b;->p(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-static {p0}, LG5/p2;->e(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract m()F
.end method

.method public p(F)F
    .locals 0

    invoke-interface {p0}, LH0/b;->m()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method
