.class public final Lt4/a;
.super Lt4/b;
.source "SourceFile"


# virtual methods
.method public final a(FF)Lt4/c;
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lt4/b;->a(FF)Lt4/c;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v3, Lq4/p;->LEFT:Lq4/p;

    iget-object v4, v0, Lt4/b;->a:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v3}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ly4/b;->d:Ly4/e;

    invoke-virtual {v4}, Ly4/e;->b()Ly4/d;

    move-result-object v4

    check-cast v4, Ly4/b;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Ly4/b;->b:D

    iput-wide v5, v4, Ly4/b;->c:D

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual {v3, v5, v6, v4}, Ly4/f;->b(FFLy4/b;)V

    iget-object v0, v0, Lt4/b;->a:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-interface {v0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v3

    iget v5, v1, Lt4/c;->e:I

    invoke-virtual {v3, v5}, Lr4/d;->b(I)Lv4/c;

    move-result-object v3

    check-cast v3, Lv4/a;

    check-cast v3, Lr4/b;

    iget v5, v3, Lr4/b;->u:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    iget-wide v7, v4, Ly4/b;->b:D

    double-to-float v5, v7

    iget-wide v7, v4, Ly4/b;->c:D

    double-to-float v4, v7

    sget-object v7, Lr4/e;->CLOSEST:Lr4/e;

    invoke-virtual {v3, v5, v4, v7}, Lr4/b;->b(FFLr4/e;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    move-object v1, v2

    goto/16 :goto_4

    :cond_2
    iget-object v7, v5, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    iget-object v7, v5, Lcom/github/mikephil/charting/data/BarEntry;->e:[LP/d;

    array-length v8, v7

    if-lez v8, :cond_1

    array-length v2, v7

    const/4 v8, 0x0

    if-nez v2, :cond_5

    :cond_4
    :goto_1
    move v15, v8

    goto :goto_3

    :cond_5
    array-length v2, v7

    move v9, v8

    move v10, v9

    :goto_2
    if-ge v9, v2, :cond_7

    aget-object v11, v7, v9

    iget v12, v11, LP/d;->a:F

    cmpl-float v12, v4, v12

    if-lez v12, :cond_6

    iget v11, v11, LP/d;->b:F

    cmpg-float v11, v4, v11

    if-gtz v11, :cond_6

    move v15, v10

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    array-length v2, v7

    sub-int/2addr v2, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget-object v6, v7, v2

    iget v6, v6, LP/d;->b:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    move v8, v2

    goto :goto_1

    :goto_3
    iget-object v2, v3, Lr4/b;->d:Lq4/p;

    invoke-virtual {v0, v2}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v0

    aget-object v2, v7, v15

    iget v2, v2, LP/d;->b:F

    iget v3, v1, Lt4/c;->a:F

    invoke-virtual {v0, v3, v2}, Ly4/f;->a(FF)Ly4/b;

    move-result-object v0

    new-instance v2, Lt4/c;

    iget v10, v5, Lcom/github/mikephil/charting/data/Entry;->c:F

    iget v11, v5, Lcom/github/mikephil/charting/data/Entry;->a:F

    iget-wide v3, v0, Ly4/b;->b:D

    double-to-float v12, v3

    iget-wide v3, v0, Ly4/b;->c:D

    double-to-float v13, v3

    iget v14, v1, Lt4/c;->e:I

    iget-object v1, v1, Lt4/c;->g:Lq4/p;

    move-object v9, v2

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v16}, Lt4/c;-><init>(FFFFIILq4/p;)V

    invoke-static {v0}, Ly4/b;->b(Ly4/b;)V

    goto :goto_0

    :goto_4
    return-object v1

    :cond_8
    invoke-static {v4}, Ly4/b;->b(Ly4/b;)V

    return-object v1
.end method

.method public final b()Lr4/c;
    .locals 0

    iget-object p0, p0, Lt4/b;->a:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-interface {p0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object p0

    return-object p0
.end method

.method public final c(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method
