.class public final LC3/i;
.super LC3/k;
.source "SourceFile"


# virtual methods
.method public final g(LM3/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LC3/i;->m(LM3/a;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final l()F
    .locals 2

    invoke-virtual {p0}, LC3/e;->b()LM3/a;

    move-result-object v0

    invoke-virtual {p0}, LC3/e;->d()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LC3/i;->m(LM3/a;F)F

    move-result p0

    return p0
.end method

.method public final m(LM3/a;F)F
    .locals 9

    iget-object v0, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, LM3/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v1, p0, LC3/e;->e:Lo3/e;

    iget-object v0, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p1, LM3/a;->h:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    iget-object v2, p1, LM3/a;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {p0}, LC3/e;->e()F

    move-result v7

    iget v8, p0, LC3/e;->d:F

    iget v2, p1, LM3/a;->g:F

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lo3/e;->k(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    iget p0, p1, LM3/a;->i:F

    const v1, -0x358c9d09

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, LM3/a;->i:F

    :cond_1
    iget p0, p1, LM3/a;->i:F

    iget v0, p1, LM3/a;->j:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p1, LM3/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, LM3/a;->j:F

    :cond_2
    iget p1, p1, LM3/a;->j:F

    invoke-static {p0, p1, p2}, LL3/e;->d(FFF)F

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
