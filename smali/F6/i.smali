.class public final LF6/i;
.super LG5/z2;
.source "SourceFile"


# virtual methods
.method public final b(LF6/t;FF)V
    .locals 5

    mul-float p0, p3, p2

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, p0, v0, v1}, LF6/t;->d(FFF)V

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p3, p0

    mul-float/2addr p3, p2

    new-instance p2, LF6/p;

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, p3, p3}, LF6/p;-><init>(FFFF)V

    iput v0, p2, LF6/p;->f:F

    iput v1, p2, LF6/p;->g:F

    iget-object v1, p1, LF6/t;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LF6/n;

    invoke-direct {v1, p2}, LF6/n;-><init>(LF6/p;)V

    invoke-virtual {p1, v0}, LF6/t;->a(F)V

    iget-object p2, p1, LF6/t;->g:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x43870000    # 270.0f

    iput p2, p1, LF6/t;->d:F

    add-float v0, v2, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float/2addr p3, v2

    div-float/2addr p3, p0

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p0, v3

    mul-float/2addr p0, p3

    add-float/2addr p0, v0

    iput p0, p1, LF6/t;->b:F

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr p3, p0

    add-float/2addr p3, v0

    iput p3, p1, LF6/t;->c:F

    return-void
.end method
