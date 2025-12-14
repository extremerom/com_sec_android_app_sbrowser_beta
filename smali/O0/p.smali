.class public final LO0/p;
.super LO0/t;
.source "SourceFile"


# instance fields
.field public k:LO0/g;

.field public l:LO0/a;


# virtual methods
.method public final a(LO0/d;)V
    .locals 9

    sget-object p1, LO0/o;->a:[I

    iget-object v0, p0, LO0/t;->j:LO0/s;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    iget-object p1, p0, LO0/t;->e:LO0/h;

    iget-boolean v2, p1, LO0/g;->c:Z

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, p1, LO0/g;->j:Z

    if-nez v2, :cond_5

    iget-object v2, p0, LO0/t;->d:LN0/g;

    sget-object v5, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v2, v5, :cond_5

    iget-object v2, p0, LO0/t;->b:LN0/h;

    iget v5, v2, LN0/h;->m:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    if-eq v5, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, v2, LN0/h;->d:LO0/m;

    iget-object v1, v1, LO0/t;->e:LO0/h;

    iget-boolean v5, v1, LO0/g;->j:Z

    if-eqz v5, :cond_5

    iget v5, v2, LN0/h;->S:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-eqz v5, :cond_2

    if-eq v5, v0, :cond_1

    move v1, v4

    goto :goto_2

    :cond_1
    iget v1, v1, LO0/g;->g:I

    int-to-float v1, v1

    iget v2, v2, LN0/h;->R:F

    :goto_0
    div-float/2addr v1, v2

    :goto_1
    add-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_2

    :cond_2
    iget v1, v1, LO0/g;->g:I

    int-to-float v1, v1

    iget v2, v2, LN0/h;->R:F

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_3
    iget v1, v1, LO0/g;->g:I

    int-to-float v1, v1

    iget v2, v2, LN0/h;->R:F

    goto :goto_0

    :goto_2
    invoke-virtual {p1, v1}, LO0/h;->d(I)V

    goto :goto_3

    :cond_4
    iget-object v1, v2, LN0/h;->O:LN0/h;

    if-eqz v1, :cond_5

    iget-object v1, v1, LN0/h;->e:LO0/p;

    iget-object v1, v1, LO0/t;->e:LO0/h;

    iget-boolean v5, v1, LO0/g;->j:Z

    if-eqz v5, :cond_5

    iget v2, v2, LN0/h;->t:F

    iget v1, v1, LO0/g;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v1}, LO0/h;->d(I)V

    :cond_5
    :goto_3
    iget-object v1, p0, LO0/t;->h:LO0/g;

    iget-boolean v2, v1, LO0/g;->c:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, LO0/t;->i:LO0/g;

    iget-boolean v5, v2, LO0/g;->c:Z

    if-nez v5, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-boolean v5, v1, LO0/g;->j:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v2, LO0/g;->j:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p1, LO0/g;->j:Z

    if-eqz v5, :cond_7

    return-void

    :cond_7
    iget-boolean v5, p1, LO0/g;->j:Z

    if-nez v5, :cond_8

    iget-object v5, p0, LO0/t;->d:LN0/g;

    sget-object v6, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, LO0/t;->b:LN0/h;

    iget v6, v5, LN0/h;->l:I

    if-nez v6, :cond_8

    invoke-virtual {v5}, LN0/h;->u()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object p0, v1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO0/g;

    iget-object v0, v2, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO0/g;

    iget p0, p0, LO0/g;->g:I

    iget v3, v1, LO0/g;->f:I

    add-int/2addr p0, v3

    iget v0, v0, LO0/g;->g:I

    iget v3, v2, LO0/g;->f:I

    add-int/2addr v0, v3

    sub-int v3, v0, p0

    invoke-virtual {v1, p0}, LO0/g;->d(I)V

    invoke-virtual {v2, v0}, LO0/g;->d(I)V

    invoke-virtual {p1, v3}, LO0/h;->d(I)V

    return-void

    :cond_8
    iget-boolean v5, p1, LO0/g;->j:Z

    if-nez v5, :cond_a

    iget-object v5, p0, LO0/t;->d:LN0/g;

    sget-object v6, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v5, v6, :cond_a

    iget v5, p0, LO0/t;->a:I

    if-ne v5, v0, :cond_a

    iget-object v0, v1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, v2, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, v1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO0/g;

    iget-object v5, v2, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO0/g;

    iget v0, v0, LO0/g;->g:I

    iget v6, v1, LO0/g;->f:I

    add-int/2addr v0, v6

    iget v5, v5, LO0/g;->g:I

    iget v6, v2, LO0/g;->f:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v0, p1, LO0/h;->m:I

    if-ge v5, v0, :cond_9

    invoke-virtual {p1, v5}, LO0/h;->d(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v0}, LO0/h;->d(I)V

    :cond_a
    :goto_4
    iget-boolean v0, p1, LO0/g;->j:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, v1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, v2, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, v1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO0/g;

    iget-object v5, v2, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO0/g;

    iget v5, v0, LO0/g;->g:I

    iget v6, v1, LO0/g;->f:I

    add-int/2addr v6, v5

    iget v7, v4, LO0/g;->g:I

    iget v8, v2, LO0/g;->f:I

    add-int/2addr v8, v7

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget p0, p0, LN0/h;->Z:F

    if-ne v0, v4, :cond_c

    move p0, v3

    goto :goto_5

    :cond_c
    move v5, v6

    move v7, v8

    :goto_5
    sub-int/2addr v7, v5

    iget v0, p1, LO0/g;->g:I

    sub-int/2addr v7, v0

    int-to-float v0, v5

    add-float/2addr v0, v3

    int-to-float v3, v7

    mul-float/2addr v3, p0

    add-float/2addr v3, v0

    float-to-int p0, v3

    invoke-virtual {v1, p0}, LO0/g;->d(I)V

    iget p0, v1, LO0/g;->g:I

    iget p1, p1, LO0/g;->g:I

    add-int/2addr p0, p1

    invoke-virtual {v2, p0}, LO0/g;->d(I)V

    :cond_d
    :goto_6
    return-void

    :cond_e
    iget-object p1, p0, LO0/t;->b:LN0/h;

    iget-object v1, p1, LN0/h;->D:LN0/e;

    iget-object p1, p1, LN0/h;->F:LN0/e;

    invoke-virtual {p0, v1, p1, v0}, LO0/t;->l(LN0/e;LN0/e;I)V

    return-void
.end method

.method public final d()V
    .locals 14

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-boolean v1, v0, LN0/h;->a:Z

    iget-object v2, p0, LO0/t;->e:LO0/h;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LN0/h;->k()I

    move-result v0

    invoke-virtual {v2, v0}, LO0/h;->d(I)V

    :cond_0
    iget-boolean v0, v2, LO0/g;->j:Z

    iget-object v1, p0, LO0/t;->i:LO0/g;

    iget-object v3, p0, LO0/t;->h:LO0/g;

    const/4 v4, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v5, v0, LN0/h;->N:[LN0/g;

    aget-object v5, v5, v4

    iput-object v5, p0, LO0/t;->d:LN0/g;

    iget-boolean v0, v0, LN0/h;->y:Z

    if-eqz v0, :cond_1

    new-instance v0, LO0/a;

    invoke-direct {v0, p0}, LO0/h;-><init>(LO0/t;)V

    iput-object v0, p0, LO0/p;->l:LO0/a;

    :cond_1
    iget-object v0, p0, LO0/t;->d:LN0/g;

    sget-object v5, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-eq v0, v5, :cond_4

    sget-object v5, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne v0, v5, :cond_2

    iget-object v5, p0, LO0/t;->b:LN0/h;

    iget-object v5, v5, LN0/h;->O:LN0/h;

    if-eqz v5, :cond_2

    iget-object v6, v5, LN0/h;->N:[LN0/g;

    aget-object v6, v6, v4

    sget-object v7, LN0/g;->FIXED:LN0/g;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, LN0/h;->k()I

    move-result v0

    iget-object v4, p0, LO0/t;->b:LN0/h;

    iget-object v4, v4, LN0/h;->D:LN0/e;

    invoke-virtual {v4}, LN0/e;->e()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, LO0/t;->b:LN0/h;

    iget-object v4, v4, LN0/h;->F:LN0/e;

    invoke-virtual {v4}, LN0/e;->e()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, v5, LN0/h;->e:LO0/p;

    iget-object v4, v4, LO0/t;->h:LO0/g;

    iget-object v6, p0, LO0/t;->b:LN0/h;

    iget-object v6, v6, LN0/h;->D:LN0/e;

    invoke-virtual {v6}, LN0/e;->e()I

    move-result v6

    invoke-static {v3, v4, v6}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget-object v3, v5, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->i:LO0/g;

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget-object p0, p0, LN0/h;->F:LN0/e;

    invoke-virtual {p0}, LN0/e;->e()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, v3, p0}, LO0/t;->b(LO0/g;LO0/g;I)V

    invoke-virtual {v2, v0}, LO0/h;->d(I)V

    return-void

    :cond_2
    sget-object v5, LN0/g;->FIXED:LN0/g;

    if-ne v0, v5, :cond_4

    iget-object v0, p0, LO0/t;->b:LN0/h;

    invoke-virtual {v0}, LN0/h;->k()I

    move-result v0

    invoke-virtual {v2, v0}, LO0/h;->d(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LO0/t;->d:LN0/g;

    sget-object v5, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne v0, v5, :cond_4

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v5, v0, LN0/h;->O:LN0/h;

    if-eqz v5, :cond_4

    iget-object v6, v5, LN0/h;->N:[LN0/g;

    aget-object v6, v6, v4

    sget-object v7, LN0/g;->FIXED:LN0/g;

    if-ne v6, v7, :cond_4

    iget-object v2, v5, LN0/h;->e:LO0/p;

    iget-object v2, v2, LO0/t;->h:LO0/g;

    iget-object v0, v0, LN0/h;->D:LN0/e;

    invoke-virtual {v0}, LN0/e;->e()I

    move-result v0

    invoke-static {v3, v2, v0}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget-object v0, v5, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget-object p0, p0, LN0/h;->F:LN0/e;

    invoke-virtual {p0}, LN0/e;->e()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, v0, p0}, LO0/t;->b(LO0/g;LO0/g;I)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v0, v2, LO0/g;->j:Z

    iget-object v5, p0, LO0/p;->k:LO0/g;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v0, :cond_d

    iget-object v10, p0, LO0/t;->b:LN0/h;

    iget-boolean v11, v10, LN0/h;->a:Z

    if-eqz v11, :cond_d

    iget-object v0, v10, LN0/h;->K:[LN0/e;

    aget-object v11, v0, v8

    iget-object v12, v11, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_8

    aget-object v13, v0, v9

    iget-object v13, v13, LN0/e;->f:LN0/e;

    if-eqz v13, :cond_8

    invoke-virtual {v10}, LN0/h;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->K:[LN0/e;

    aget-object v0, v0, v8

    invoke-virtual {v0}, LN0/e;->e()I

    move-result v0

    iput v0, v3, LO0/g;->f:I

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->K:[LN0/e;

    aget-object v0, v0, v9

    invoke-virtual {v0}, LN0/e;->e()I

    move-result v0

    neg-int v0, v0

    iput v0, v1, LO0/g;->f:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->K:[LN0/e;

    aget-object v0, v0, v8

    invoke-static {v0}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, LO0/t;->b:LN0/h;

    iget-object v2, v2, LN0/h;->K:[LN0/e;

    aget-object v2, v2, v8

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    invoke-static {v3, v0, v2}, LO0/t;->b(LO0/g;LO0/g;I)V

    :cond_6
    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->K:[LN0/e;

    aget-object v0, v0, v9

    invoke-static {v0}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, LO0/t;->b:LN0/h;

    iget-object v2, v2, LN0/h;->K:[LN0/e;

    aget-object v2, v2, v9

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, LO0/t;->b(LO0/g;LO0/g;I)V

    :cond_7
    iput-boolean v4, v3, LO0/g;->b:Z

    iput-boolean v4, v1, LO0/g;->b:Z

    :goto_1
    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget-boolean v0, p0, LN0/h;->y:Z

    if-eqz v0, :cond_1c

    iget p0, p0, LN0/h;->V:I

    invoke-static {v5, v3, p0}, LO0/t;->b(LO0/g;LO0/g;I)V

    goto/16 :goto_5

    :cond_8
    if-eqz v12, :cond_9

    invoke-static {v11}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v4, p0, LO0/t;->b:LN0/h;

    iget-object v4, v4, LN0/h;->K:[LN0/e;

    aget-object v4, v4, v8

    invoke-virtual {v4}, LN0/e;->e()I

    move-result v4

    invoke-static {v3, v0, v4}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget v0, v2, LO0/g;->g:I

    invoke-static {v1, v3, v0}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget-boolean v0, p0, LN0/h;->y:Z

    if-eqz v0, :cond_1c

    iget p0, p0, LN0/h;->V:I

    invoke-static {v5, v3, p0}, LO0/t;->b(LO0/g;LO0/g;I)V

    goto/16 :goto_5

    :cond_9
    aget-object v4, v0, v9

    iget-object v8, v4, LN0/e;->f:LN0/e;

    if-eqz v8, :cond_b

    invoke-static {v4}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v4, p0, LO0/t;->b:LN0/h;

    iget-object v4, v4, LN0/h;->K:[LN0/e;

    aget-object v4, v4, v9

    invoke-virtual {v4}, LN0/e;->e()I

    move-result v4

    neg-int v4, v4

    invoke-static {v1, v0, v4}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget v0, v2, LO0/g;->g:I

    neg-int v0, v0

    invoke-static {v3, v1, v0}, LO0/t;->b(LO0/g;LO0/g;I)V

    :cond_a
    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget-boolean v0, p0, LN0/h;->y:Z

    if-eqz v0, :cond_1c

    iget p0, p0, LN0/h;->V:I

    invoke-static {v5, v3, p0}, LO0/t;->b(LO0/g;LO0/g;I)V

    goto/16 :goto_5

    :cond_b
    aget-object v0, v0, v7

    iget-object v4, v0, LN0/e;->f:LN0/e;

    if-eqz v4, :cond_c

    invoke-static {v0}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v5, v0, v6}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget p0, p0, LN0/h;->V:I

    neg-int p0, p0

    invoke-static {v3, v5, p0}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget p0, v2, LO0/g;->g:I

    invoke-static {v1, v3, p0}, LO0/t;->b(LO0/g;LO0/g;I)V

    goto/16 :goto_5

    :cond_c
    instance-of v0, v10, LN0/n;

    if-nez v0, :cond_1c

    iget-object v0, v10, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_1c

    sget-object v0, LN0/d;->CENTER:LN0/d;

    invoke-virtual {v10, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v0

    iget-object v0, v0, LN0/e;->f:LN0/e;

    if-nez v0, :cond_1c

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v4, v0, LN0/h;->O:LN0/h;

    iget-object v4, v4, LN0/h;->e:LO0/p;

    iget-object v4, v4, LO0/t;->h:LO0/g;

    invoke-virtual {v0}, LN0/h;->p()I

    move-result v0

    invoke-static {v3, v4, v0}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget v0, v2, LO0/g;->g:I

    invoke-static {v1, v3, v0}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget-boolean v0, p0, LN0/h;->y:Z

    if-eqz v0, :cond_1c

    iget p0, p0, LN0/h;->V:I

    invoke-static {v5, v3, p0}, LO0/t;->b(LO0/g;LO0/g;I)V

    goto/16 :goto_5

    :cond_d
    if-nez v0, :cond_12

    iget-object v0, p0, LO0/t;->d:LN0/g;

    sget-object v10, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v0, v10, :cond_12

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget v10, v0, LN0/h;->m:I

    if-eq v10, v8, :cond_10

    if-eq v10, v9, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, LN0/h;->u()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget v10, v0, LN0/h;->l:I

    if-ne v10, v9, :cond_f

    goto :goto_2

    :cond_f
    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->e:LO0/h;

    iget-object v10, v2, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, v2, LO0/g;->b:Z

    iget-object v0, v2, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    iget-object v0, v0, LN0/h;->O:LN0/h;

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->e:LO0/h;

    iget-object v10, v2, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, v2, LO0/g;->b:Z

    iget-object v0, v2, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v2, p0}, LO0/g;->b(LO0/t;)V

    :cond_13
    :goto_2
    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v10, v0, LN0/h;->K:[LN0/e;

    aget-object v11, v10, v8

    iget-object v12, v11, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_15

    aget-object v13, v10, v9

    iget-object v13, v13, LN0/e;->f:LN0/e;

    if-eqz v13, :cond_15

    invoke-virtual {v0}, LN0/h;->u()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->K:[LN0/e;

    aget-object v0, v0, v8

    invoke-virtual {v0}, LN0/e;->e()I

    move-result v0

    iput v0, v3, LO0/g;->f:I

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->K:[LN0/e;

    aget-object v0, v0, v9

    invoke-virtual {v0}, LN0/e;->e()I

    move-result v0

    neg-int v0, v0

    iput v0, v1, LO0/g;->f:I

    goto :goto_3

    :cond_14
    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->K:[LN0/e;

    aget-object v0, v0, v8

    invoke-static {v0}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    iget-object v1, p0, LO0/t;->b:LN0/h;

    iget-object v1, v1, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v9

    invoke-static {v1}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v1

    invoke-virtual {v0, p0}, LO0/g;->b(LO0/t;)V

    invoke-virtual {v1, p0}, LO0/g;->b(LO0/t;)V

    sget-object v0, LO0/s;->CENTER:LO0/s;

    iput-object v0, p0, LO0/t;->j:LO0/s;

    :goto_3
    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-boolean v0, v0, LN0/h;->y:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, LO0/p;->l:LO0/a;

    invoke-virtual {p0, v5, v3, v4, v0}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    goto/16 :goto_4

    :cond_15
    const/4 v13, 0x0

    if-eqz v12, :cond_17

    invoke-static {v11}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v6, p0, LO0/t;->b:LN0/h;

    iget-object v6, v6, LN0/h;->K:[LN0/e;

    aget-object v6, v6, v8

    invoke-virtual {v6}, LN0/e;->e()I

    move-result v6

    invoke-static {v3, v0, v6}, LO0/t;->b(LO0/g;LO0/g;I)V

    invoke-virtual {p0, v1, v3, v4, v2}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-boolean v0, v0, LN0/h;->y:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, LO0/p;->l:LO0/a;

    invoke-virtual {p0, v5, v3, v4, v0}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    :cond_16
    iget-object v0, p0, LO0/t;->d:LN0/g;

    sget-object v1, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget v3, v0, LN0/h;->R:F

    cmpl-float v3, v3, v13

    if-lez v3, :cond_1b

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v3, v0, LO0/t;->d:LN0/g;

    if-ne v3, v1, :cond_1b

    iget-object v0, v0, LO0/t;->e:LO0/h;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, LO0/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, LO0/t;->b:LN0/h;

    iget-object v1, v1, LN0/h;->d:LO0/m;

    iget-object v1, v1, LO0/t;->e:LO0/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v2, LO0/g;->a:LO0/t;

    goto/16 :goto_4

    :cond_17
    aget-object v8, v10, v9

    iget-object v11, v8, LN0/e;->f:LN0/e;

    const/4 v12, -0x1

    if-eqz v11, :cond_18

    invoke-static {v8}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v6, p0, LO0/t;->b:LN0/h;

    iget-object v6, v6, LN0/h;->K:[LN0/e;

    aget-object v6, v6, v9

    invoke-virtual {v6}, LN0/e;->e()I

    move-result v6

    neg-int v6, v6

    invoke-static {v1, v0, v6}, LO0/t;->b(LO0/g;LO0/g;I)V

    invoke-virtual {p0, v3, v1, v12, v2}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-boolean v0, v0, LN0/h;->y:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, LO0/p;->l:LO0/a;

    invoke-virtual {p0, v5, v3, v4, v0}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    goto :goto_4

    :cond_18
    aget-object v7, v10, v7

    iget-object v8, v7, LN0/e;->f:LN0/e;

    if-eqz v8, :cond_19

    invoke-static {v7}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v5, v0, v6}, LO0/t;->b(LO0/g;LO0/g;I)V

    iget-object v0, p0, LO0/p;->l:LO0/a;

    invoke-virtual {p0, v3, v5, v12, v0}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    invoke-virtual {p0, v1, v3, v4, v2}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    goto :goto_4

    :cond_19
    instance-of v6, v0, LN0/n;

    if-nez v6, :cond_1b

    iget-object v6, v0, LN0/h;->O:LN0/h;

    if-eqz v6, :cond_1b

    iget-object v6, v6, LN0/h;->e:LO0/p;

    iget-object v6, v6, LO0/t;->h:LO0/g;

    invoke-virtual {v0}, LN0/h;->p()I

    move-result v0

    invoke-static {v3, v6, v0}, LO0/t;->b(LO0/g;LO0/g;I)V

    invoke-virtual {p0, v1, v3, v4, v2}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-boolean v0, v0, LN0/h;->y:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, LO0/p;->l:LO0/a;

    invoke-virtual {p0, v5, v3, v4, v0}, LO0/t;->c(LO0/g;LO0/g;ILO0/h;)V

    :cond_1a
    iget-object v0, p0, LO0/t;->d:LN0/g;

    sget-object v1, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget v3, v0, LN0/h;->R:F

    cmpl-float v3, v3, v13

    if-lez v3, :cond_1b

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v3, v0, LO0/t;->d:LN0/g;

    if-ne v3, v1, :cond_1b

    iget-object v0, v0, LO0/t;->e:LO0/h;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, LO0/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, LO0/t;->b:LN0/h;

    iget-object v1, v1, LN0/h;->d:LO0/m;

    iget-object v1, v1, LO0/t;->e:LO0/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v2, LO0/g;->a:LO0/t;

    :cond_1b
    :goto_4
    iget-object p0, v2, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_1c

    iput-boolean v4, v2, LO0/g;->c:Z

    :cond_1c
    :goto_5
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, LO0/t;->h:LO0/g;

    iget-boolean v1, v0, LO0/g;->j:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget v0, v0, LO0/g;->g:I

    iput v0, p0, LN0/h;->U:I

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LO0/t;->c:LO0/n;

    iget-object v0, p0, LO0/t;->h:LO0/g;

    invoke-virtual {v0}, LO0/g;->c()V

    iget-object v0, p0, LO0/t;->i:LO0/g;

    invoke-virtual {v0}, LO0/g;->c()V

    iget-object v0, p0, LO0/p;->k:LO0/g;

    invoke-virtual {v0}, LO0/g;->c()V

    iget-object v0, p0, LO0/t;->e:LO0/h;

    invoke-virtual {v0}, LO0/g;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LO0/t;->g:Z

    return-void
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, LO0/t;->d:LN0/g;

    sget-object v1, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget p0, p0, LN0/h;->m:I

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LO0/t;->g:Z

    iget-object v1, p0, LO0/t;->h:LO0/g;

    invoke-virtual {v1}, LO0/g;->c()V

    iput-boolean v0, v1, LO0/g;->j:Z

    iget-object v1, p0, LO0/t;->i:LO0/g;

    invoke-virtual {v1}, LO0/g;->c()V

    iput-boolean v0, v1, LO0/g;->j:Z

    iget-object v1, p0, LO0/p;->k:LO0/g;

    invoke-virtual {v1}, LO0/g;->c()V

    iput-boolean v0, v1, LO0/g;->j:Z

    iget-object p0, p0, LO0/t;->e:LO0/h;

    iput-boolean v0, p0, LO0/g;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerticalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget-object p0, p0, LN0/h;->c0:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
