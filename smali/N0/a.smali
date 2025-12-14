.class public final LN0/a;
.super LN0/n;
.source "SourceFile"


# instance fields
.field public m0:I

.field public n0:Z

.field public o0:I

.field public p0:Z


# virtual methods
.method public final M()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, LN0/n;->l0:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    iget-object v4, p0, LN0/n;->k0:[LN0/h;

    aget-object v4, v4, v2

    iget-boolean v7, p0, LN0/a;->n0:Z

    if-nez v7, :cond_0

    invoke-virtual {v4}, LN0/h;->c()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    iget v7, p0, LN0/a;->m0:I

    if-eqz v7, :cond_1

    if-ne v7, v0, :cond_2

    :cond_1
    invoke-virtual {v4}, LN0/h;->w()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_2
    iget v7, p0, LN0/a;->m0:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, LN0/h;->x()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_13

    if-lez v4, :cond_13

    move v2, v1

    move v3, v2

    :goto_3
    iget v4, p0, LN0/n;->l0:I

    if-ge v1, v4, :cond_10

    iget-object v4, p0, LN0/n;->k0:[LN0/h;

    aget-object v4, v4, v1

    iget-boolean v7, p0, LN0/a;->n0:Z

    if-nez v7, :cond_6

    invoke-virtual {v4}, LN0/h;->c()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    if-nez v3, :cond_b

    iget v3, p0, LN0/a;->m0:I

    if-nez v3, :cond_7

    sget-object v2, LN0/d;->LEFT:LN0/d;

    invoke-virtual {v4, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    invoke-virtual {v2}, LN0/e;->d()I

    move-result v2

    goto :goto_4

    :cond_7
    if-ne v3, v0, :cond_8

    sget-object v2, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v4, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    invoke-virtual {v2}, LN0/e;->d()I

    move-result v2

    goto :goto_4

    :cond_8
    if-ne v3, v6, :cond_9

    sget-object v2, LN0/d;->TOP:LN0/d;

    invoke-virtual {v4, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    invoke-virtual {v2}, LN0/e;->d()I

    move-result v2

    goto :goto_4

    :cond_9
    if-ne v3, v5, :cond_a

    sget-object v2, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v4, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    invoke-virtual {v2}, LN0/e;->d()I

    move-result v2

    :cond_a
    :goto_4
    move v3, v0

    :cond_b
    iget v7, p0, LN0/a;->m0:I

    if-nez v7, :cond_c

    sget-object v7, LN0/d;->LEFT:LN0/d;

    invoke-virtual {v4, v7}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v4

    invoke-virtual {v4}, LN0/e;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_c
    if-ne v7, v0, :cond_d

    sget-object v7, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v4, v7}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v4

    invoke-virtual {v4}, LN0/e;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_d
    if-ne v7, v6, :cond_e

    sget-object v7, LN0/d;->TOP:LN0/d;

    invoke-virtual {v4, v7}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v4

    invoke-virtual {v4}, LN0/e;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_e
    if-ne v7, v5, :cond_f

    sget-object v7, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v4, v7}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v4

    invoke-virtual {v4}, LN0/e;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_10
    iget v1, p0, LN0/a;->o0:I

    add-int/2addr v2, v1

    iget v1, p0, LN0/a;->m0:I

    if-eqz v1, :cond_12

    if-ne v1, v0, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v2, v2}, LN0/h;->D(II)V

    goto :goto_7

    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, LN0/h;->C(II)V

    :goto_7
    iput-boolean v0, p0, LN0/a;->p0:Z

    return v0

    :cond_13
    return v1
.end method

.method public final N()I
    .locals 2

    iget p0, p0, LN0/a;->m0:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b(LM0/c;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LN0/h;->K:[LN0/e;

    iget-object v3, v0, LN0/h;->C:LN0/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v5, v0, LN0/h;->D:LN0/e;

    const/4 v6, 0x2

    aput-object v5, v2, v6

    iget-object v7, v0, LN0/h;->E:LN0/e;

    const/4 v8, 0x1

    aput-object v7, v2, v8

    iget-object v9, v0, LN0/h;->F:LN0/e;

    const/4 v10, 0x3

    aput-object v9, v2, v10

    move v11, v4

    :goto_0
    array-length v12, v2

    if-ge v11, v12, :cond_0

    aget-object v12, v2, v11

    invoke-virtual {v1, v12}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v13

    iput-object v13, v12, LN0/e;->i:LM0/i;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    iget v11, v0, LN0/a;->m0:I

    if-ltz v11, :cond_1e

    const/4 v12, 0x4

    if-ge v11, v12, :cond_1e

    aget-object v2, v2, v11

    iget-boolean v11, v0, LN0/a;->p0:Z

    if-nez v11, :cond_1

    invoke-virtual/range {p0 .. p0}, LN0/a;->M()Z

    :cond_1
    iget-boolean v11, v0, LN0/a;->p0:Z

    if-eqz v11, :cond_6

    iput-boolean v4, v0, LN0/a;->p0:Z

    iget v2, v0, LN0/a;->m0:I

    if-eqz v2, :cond_4

    if-ne v2, v8, :cond_2

    goto :goto_1

    :cond_2
    if-eq v2, v6, :cond_3

    if-ne v2, v10, :cond_5

    :cond_3
    iget-object v2, v5, LN0/e;->i:LM0/i;

    iget v3, v0, LN0/h;->U:I

    invoke-virtual {v1, v2, v3}, LM0/c;->d(LM0/i;I)V

    iget-object v2, v9, LN0/e;->i:LM0/i;

    iget v0, v0, LN0/h;->U:I

    invoke-virtual {v1, v2, v0}, LM0/c;->d(LM0/i;I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, v3, LN0/e;->i:LM0/i;

    iget v3, v0, LN0/h;->T:I

    invoke-virtual {v1, v2, v3}, LM0/c;->d(LM0/i;I)V

    iget-object v2, v7, LN0/e;->i:LM0/i;

    iget v0, v0, LN0/h;->T:I

    invoke-virtual {v1, v2, v0}, LM0/c;->d(LM0/i;I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    move v11, v4

    :goto_3
    iget v13, v0, LN0/n;->l0:I

    if-ge v11, v13, :cond_c

    iget-object v13, v0, LN0/n;->k0:[LN0/h;

    aget-object v13, v13, v11

    iget-boolean v14, v0, LN0/a;->n0:Z

    if-nez v14, :cond_7

    invoke-virtual {v13}, LN0/h;->c()Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_5

    :cond_7
    iget v14, v0, LN0/a;->m0:I

    if-eqz v14, :cond_8

    if-ne v14, v8, :cond_9

    :cond_8
    iget-object v15, v13, LN0/h;->N:[LN0/g;

    aget-object v15, v15, v4

    sget-object v12, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v15, v12, :cond_9

    iget-object v12, v13, LN0/h;->C:LN0/e;

    iget-object v12, v12, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_9

    iget-object v12, v13, LN0/h;->E:LN0/e;

    iget-object v12, v12, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_9

    :goto_4
    move v11, v8

    goto :goto_6

    :cond_9
    if-eq v14, v6, :cond_a

    if-ne v14, v10, :cond_b

    :cond_a
    iget-object v12, v13, LN0/h;->N:[LN0/g;

    aget-object v12, v12, v8

    sget-object v14, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v12, v14, :cond_b

    iget-object v12, v13, LN0/h;->D:LN0/e;

    iget-object v12, v12, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_b

    iget-object v12, v13, LN0/h;->F:LN0/e;

    iget-object v12, v12, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_b

    goto :goto_4

    :cond_b
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x4

    goto :goto_3

    :cond_c
    move v11, v4

    :goto_6
    invoke-virtual {v3}, LN0/e;->g()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v7}, LN0/e;->g()Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_7

    :cond_d
    move v12, v4

    goto :goto_8

    :cond_e
    :goto_7
    move v12, v8

    :goto_8
    invoke-virtual {v5}, LN0/e;->g()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v9}, LN0/e;->g()Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_9

    :cond_f
    move v13, v4

    goto :goto_a

    :cond_10
    :goto_9
    move v13, v8

    :goto_a
    if-nez v11, :cond_15

    iget v11, v0, LN0/a;->m0:I

    if-nez v11, :cond_11

    if-nez v12, :cond_14

    :cond_11
    if-ne v11, v6, :cond_12

    if-nez v13, :cond_14

    :cond_12
    if-ne v11, v8, :cond_13

    if-nez v12, :cond_14

    :cond_13
    if-ne v11, v10, :cond_15

    if-eqz v13, :cond_15

    :cond_14
    const/4 v11, 0x5

    goto :goto_b

    :cond_15
    const/4 v11, 0x4

    :goto_b
    move v12, v4

    :goto_c
    iget v13, v0, LN0/n;->l0:I

    if-ge v12, v13, :cond_1a

    iget-object v13, v0, LN0/n;->k0:[LN0/h;

    aget-object v13, v13, v12

    iget-boolean v14, v0, LN0/a;->n0:Z

    if-nez v14, :cond_16

    invoke-virtual {v13}, LN0/h;->c()Z

    move-result v14

    if-nez v14, :cond_16

    goto :goto_10

    :cond_16
    iget-object v14, v13, LN0/h;->K:[LN0/e;

    iget v15, v0, LN0/a;->m0:I

    aget-object v14, v14, v15

    invoke-virtual {v1, v14}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v14

    iget v15, v0, LN0/a;->m0:I

    iget-object v13, v13, LN0/h;->K:[LN0/e;

    aget-object v13, v13, v15

    iput-object v14, v13, LN0/e;->i:LM0/i;

    iget-object v10, v13, LN0/e;->f:LN0/e;

    if-eqz v10, :cond_17

    iget-object v10, v10, LN0/e;->d:LN0/h;

    if-ne v10, v0, :cond_17

    iget v10, v13, LN0/e;->g:I

    goto :goto_d

    :cond_17
    move v10, v4

    :goto_d
    if-eqz v15, :cond_19

    if-ne v15, v6, :cond_18

    goto :goto_e

    :cond_18
    iget-object v13, v2, LN0/e;->i:LM0/i;

    iget v15, v0, LN0/a;->o0:I

    add-int/2addr v15, v10

    invoke-virtual/range {p1 .. p1}, LM0/c;->l()LM0/b;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, LM0/c;->m()LM0/i;

    move-result-object v8

    iput v4, v8, LM0/i;->d:I

    invoke-virtual {v6, v13, v14, v8, v15}, LM0/b;->b(LM0/i;LM0/i;LM0/i;I)V

    invoke-virtual {v1, v6}, LM0/c;->c(LM0/b;)V

    goto :goto_f

    :cond_19
    :goto_e
    iget-object v6, v2, LN0/e;->i:LM0/i;

    iget v8, v0, LN0/a;->o0:I

    sub-int/2addr v8, v10

    invoke-virtual/range {p1 .. p1}, LM0/c;->l()LM0/b;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, LM0/c;->m()LM0/i;

    move-result-object v15

    iput v4, v15, LM0/i;->d:I

    invoke-virtual {v13, v6, v14, v15, v8}, LM0/b;->c(LM0/i;LM0/i;LM0/i;I)V

    invoke-virtual {v1, v13}, LM0/c;->c(LM0/b;)V

    :goto_f
    iget-object v6, v2, LN0/e;->i:LM0/i;

    iget v8, v0, LN0/a;->o0:I

    add-int/2addr v8, v10

    invoke-virtual {v1, v6, v14, v8, v11}, LM0/c;->e(LM0/i;LM0/i;II)V

    :goto_10
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x3

    goto :goto_c

    :cond_1a
    iget v2, v0, LN0/a;->m0:I

    const/16 v6, 0x8

    if-nez v2, :cond_1b

    iget-object v2, v7, LN0/e;->i:LM0/i;

    iget-object v5, v3, LN0/e;->i:LM0/i;

    invoke-virtual {v1, v2, v5, v4, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v2, v3, LN0/e;->i:LM0/i;

    iget-object v5, v0, LN0/h;->O:LN0/h;

    iget-object v5, v5, LN0/h;->E:LN0/e;

    iget-object v5, v5, LN0/e;->i:LM0/i;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v5, v4, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v2, v3, LN0/e;->i:LM0/i;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->C:LN0/e;

    iget-object v0, v0, LN0/e;->i:LM0/i;

    invoke-virtual {v1, v2, v0, v4, v4}, LM0/c;->e(LM0/i;LM0/i;II)V

    goto :goto_11

    :cond_1b
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1c

    iget-object v2, v3, LN0/e;->i:LM0/i;

    iget-object v5, v7, LN0/e;->i:LM0/i;

    invoke-virtual {v1, v2, v5, v4, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v2, v3, LN0/e;->i:LM0/i;

    iget-object v5, v0, LN0/h;->O:LN0/h;

    iget-object v5, v5, LN0/h;->C:LN0/e;

    iget-object v5, v5, LN0/e;->i:LM0/i;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v5, v4, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v2, v3, LN0/e;->i:LM0/i;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->E:LN0/e;

    iget-object v0, v0, LN0/e;->i:LM0/i;

    invoke-virtual {v1, v2, v0, v4, v4}, LM0/c;->e(LM0/i;LM0/i;II)V

    goto :goto_11

    :cond_1c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    iget-object v2, v9, LN0/e;->i:LM0/i;

    iget-object v3, v5, LN0/e;->i:LM0/i;

    invoke-virtual {v1, v2, v3, v4, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v2, v5, LN0/e;->i:LM0/i;

    iget-object v3, v0, LN0/h;->O:LN0/h;

    iget-object v3, v3, LN0/h;->F:LN0/e;

    iget-object v3, v3, LN0/e;->i:LM0/i;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v3, v4, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v2, v5, LN0/e;->i:LM0/i;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->D:LN0/e;

    iget-object v0, v0, LN0/e;->i:LM0/i;

    invoke-virtual {v1, v2, v0, v4, v4}, LM0/c;->e(LM0/i;LM0/i;II)V

    goto :goto_11

    :cond_1d
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    iget-object v2, v5, LN0/e;->i:LM0/i;

    iget-object v3, v9, LN0/e;->i:LM0/i;

    invoke-virtual {v1, v2, v3, v4, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v2, v5, LN0/e;->i:LM0/i;

    iget-object v3, v0, LN0/h;->O:LN0/h;

    iget-object v3, v3, LN0/h;->D:LN0/e;

    iget-object v3, v3, LN0/e;->i:LM0/i;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v3, v4, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v2, v5, LN0/e;->i:LM0/i;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->F:LN0/e;

    iget-object v0, v0, LN0/e;->i:LM0/i;

    invoke-virtual {v1, v2, v0, v4, v4}, LM0/c;->e(LM0/i;LM0/i;II)V

    :cond_1e
    :goto_11
    return-void
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Barrier] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LN0/h;->c0:Ljava/lang/String;

    const-string v2, " {"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LN0/n;->l0:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LN0/n;->k0:[LN0/h;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-static {v0, v3}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, LN0/h;->c0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "}"

    invoke-static {v0, p0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w()Z
    .locals 0

    iget-boolean p0, p0, LN0/a;->p0:Z

    return p0
.end method

.method public final x()Z
    .locals 0

    iget-boolean p0, p0, LN0/a;->p0:Z

    return p0
.end method
