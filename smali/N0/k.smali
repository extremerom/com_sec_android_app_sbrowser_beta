.class public final LN0/k;
.super LN0/n;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:F

.field public E0:F

.field public F0:F

.field public G0:F

.field public H0:F

.field public I0:F

.field public J0:I

.field public K0:I

.field public L0:I

.field public M0:I

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:Ljava/util/ArrayList;

.field public R0:[LN0/h;

.field public S0:[LN0/h;

.field public T0:[I

.field public U0:[LN0/h;

.field public V0:I

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:Z

.field public t0:I

.field public u0:I

.field public v0:LO0/b;

.field public w0:LP0/i;

.field public x0:I

.field public y0:I

.field public z0:I


# virtual methods
.method public final L()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LN0/n;->l0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LN0/n;->k0:[LN0/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, LN0/h;->z:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final M(LN0/h;I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, LN0/h;->N:[LN0/g;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    sget-object v4, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v3, v4, :cond_5

    iget v3, p1, LN0/h;->m:I

    if-nez v3, :cond_1

    return v0

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget v3, p1, LN0/h;->t:F

    int-to-float p2, p2

    mul-float/2addr v3, p2

    float-to-int p2, v3

    invoke-virtual {p1}, LN0/h;->k()I

    move-result v3

    if-eq p2, v3, :cond_2

    iput-boolean v2, p1, LN0/h;->g:Z

    aget-object v6, v1, v0

    invoke-virtual {p1}, LN0/h;->n()I

    move-result v7

    sget-object v8, LN0/g;->FIXED:LN0/g;

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, LN0/k;->O(LN0/h;LN0/g;ILN0/g;I)V

    :cond_2
    return p2

    :cond_3
    if-ne v3, v2, :cond_4

    invoke-virtual {p1}, LN0/h;->k()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x3

    if-ne v3, p0, :cond_5

    invoke-virtual {p1}, LN0/h;->n()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, LN0/h;->R:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_5
    invoke-virtual {p1}, LN0/h;->k()I

    move-result p0

    return p0
.end method

.method public final N(LN0/h;I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, LN0/h;->N:[LN0/g;

    aget-object v2, v1, v0

    sget-object v3, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v2, v3, :cond_5

    iget v2, p1, LN0/h;->l:I

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v0, :cond_3

    iget v0, p1, LN0/h;->q:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1}, LN0/h;->n()I

    move-result v0

    if-eq p2, v0, :cond_2

    iput-boolean v3, p1, LN0/h;->g:Z

    sget-object v6, LN0/g;->FIXED:LN0/g;

    aget-object v8, v1, v3

    invoke-virtual {p1}, LN0/h;->k()I

    move-result v9

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-virtual/range {v4 .. v9}, LN0/k;->O(LN0/h;LN0/g;ILN0/g;I)V

    :cond_2
    return p2

    :cond_3
    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, LN0/h;->n()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x3

    if-ne v2, p0, :cond_5

    invoke-virtual {p1}, LN0/h;->k()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, LN0/h;->R:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_5
    invoke-virtual {p1}, LN0/h;->n()I

    move-result p0

    return p0
.end method

.method public final O(LN0/h;LN0/g;ILN0/g;I)V
    .locals 2

    :goto_0
    iget-object v0, p0, LN0/k;->w0:LP0/i;

    if-nez v0, :cond_0

    iget-object v1, p0, LN0/h;->O:LN0/h;

    if-eqz v1, :cond_0

    check-cast v1, LN0/i;

    iget-object v0, v1, LN0/i;->n0:LP0/i;

    iput-object v0, p0, LN0/k;->w0:LP0/i;

    goto :goto_0

    :cond_0
    iget-object p0, p0, LN0/k;->v0:LO0/b;

    iput-object p2, p0, LO0/b;->a:LN0/g;

    iput-object p4, p0, LO0/b;->b:LN0/g;

    iput p3, p0, LO0/b;->c:I

    iput p5, p0, LO0/b;->d:I

    invoke-virtual {v0, p1, p0}, LP0/i;->b(LN0/h;LO0/b;)V

    iget p2, p0, LO0/b;->e:I

    invoke-virtual {p1, p2}, LN0/h;->H(I)V

    iget p2, p0, LO0/b;->f:I

    invoke-virtual {p1, p2}, LN0/h;->E(I)V

    iget-boolean p2, p0, LO0/b;->h:Z

    iput-boolean p2, p1, LN0/h;->y:Z

    iget p0, p0, LO0/b;->g:I

    invoke-virtual {p1, p0}, LN0/h;->B(I)V

    return-void
.end method

.method public final b(LM0/c;Z)V
    .locals 10

    invoke-super {p0, p1, p2}, LN0/h;->b(LM0/c;Z)V

    iget-object p1, p0, LN0/h;->O:LN0/h;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    check-cast p1, LN0/i;

    iget-boolean p1, p1, LN0/i;->o0:Z

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget v0, p0, LN0/k;->N0:I

    iget-object v1, p0, LN0/k;->Q0:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    if-eq v0, v2, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object v0, p0, LN0/k;->T0:[I

    if-eqz v0, :cond_1a

    iget-object v0, p0, LN0/k;->S0:[LN0/h;

    if-eqz v0, :cond_1a

    iget-object v0, p0, LN0/k;->R0:[LN0/h;

    if-nez v0, :cond_2

    goto/16 :goto_c

    :cond_2
    move v0, p2

    :goto_1
    iget v1, p0, LN0/k;->V0:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LN0/k;->U0:[LN0/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LN0/h;->z()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, LN0/k;->T0:[I

    aget v1, v0, p2

    aget v0, v0, v2

    const/4 v3, 0x0

    move v4, p2

    :goto_2
    const/16 v5, 0x8

    if-ge v4, v1, :cond_a

    if-eqz p1, :cond_4

    sub-int v6, v1, v4

    sub-int/2addr v6, v2

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    iget-object v7, p0, LN0/k;->S0:[LN0/h;

    aget-object v6, v7, v6

    if-eqz v6, :cond_9

    iget v7, v6, LN0/h;->b0:I

    if-ne v7, v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, v6, LN0/h;->C:LN0/e;

    if-nez v4, :cond_6

    iget v7, p0, LN0/k;->q0:I

    iget-object v8, p0, LN0/h;->C:LN0/e;

    invoke-virtual {v6, v5, v8, v7}, LN0/h;->f(LN0/e;LN0/e;I)V

    iget v7, p0, LN0/k;->x0:I

    iput v7, v6, LN0/h;->d0:I

    iget v7, p0, LN0/k;->D0:F

    iput v7, v6, LN0/h;->Y:F

    :cond_6
    add-int/lit8 v7, v1, -0x1

    if-ne v4, v7, :cond_7

    iget v7, p0, LN0/k;->r0:I

    iget-object v8, v6, LN0/h;->E:LN0/e;

    iget-object v9, p0, LN0/h;->E:LN0/e;

    invoke-virtual {v6, v8, v9, v7}, LN0/h;->f(LN0/e;LN0/e;I)V

    :cond_7
    if-lez v4, :cond_8

    iget-object v7, v3, LN0/h;->E:LN0/e;

    iget v8, p0, LN0/k;->J0:I

    invoke-virtual {v6, v5, v7, v8}, LN0/h;->f(LN0/e;LN0/e;I)V

    iget-object v7, v3, LN0/h;->E:LN0/e;

    invoke-virtual {v3, v7, v5, p2}, LN0/h;->f(LN0/e;LN0/e;I)V

    :cond_8
    move-object v3, v6

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    move p1, p2

    :goto_5
    if-ge p1, v0, :cond_10

    iget-object v4, p0, LN0/k;->R0:[LN0/h;

    aget-object v4, v4, p1

    if-eqz v4, :cond_f

    iget v6, v4, LN0/h;->b0:I

    if-ne v6, v5, :cond_b

    goto :goto_6

    :cond_b
    iget-object v6, v4, LN0/h;->D:LN0/e;

    if-nez p1, :cond_c

    iget v7, p0, LN0/k;->m0:I

    iget-object v8, p0, LN0/h;->D:LN0/e;

    invoke-virtual {v4, v6, v8, v7}, LN0/h;->f(LN0/e;LN0/e;I)V

    iget v7, p0, LN0/k;->y0:I

    iput v7, v4, LN0/h;->e0:I

    iget v7, p0, LN0/k;->E0:F

    iput v7, v4, LN0/h;->Z:F

    :cond_c
    add-int/lit8 v7, v0, -0x1

    if-ne p1, v7, :cond_d

    iget v7, p0, LN0/k;->n0:I

    iget-object v8, v4, LN0/h;->F:LN0/e;

    iget-object v9, p0, LN0/h;->F:LN0/e;

    invoke-virtual {v4, v8, v9, v7}, LN0/h;->f(LN0/e;LN0/e;I)V

    :cond_d
    if-lez p1, :cond_e

    iget-object v7, v3, LN0/h;->F:LN0/e;

    iget v8, p0, LN0/k;->K0:I

    invoke-virtual {v4, v6, v7, v8}, LN0/h;->f(LN0/e;LN0/e;I)V

    iget-object v7, v3, LN0/h;->F:LN0/e;

    invoke-virtual {v3, v7, v6, p2}, LN0/h;->f(LN0/e;LN0/e;I)V

    :cond_e
    move-object v3, v4

    :cond_f
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    move p1, p2

    :goto_7
    if-ge p1, v1, :cond_1a

    move v3, p2

    :goto_8
    if-ge v3, v0, :cond_16

    mul-int v4, v3, v1

    add-int/2addr v4, p1

    iget v6, p0, LN0/k;->P0:I

    if-ne v6, v2, :cond_11

    mul-int v4, p1, v0

    add-int/2addr v4, v3

    :cond_11
    iget-object v6, p0, LN0/k;->U0:[LN0/h;

    array-length v7, v6

    if-lt v4, v7, :cond_12

    goto :goto_9

    :cond_12
    aget-object v4, v6, v4

    if-eqz v4, :cond_15

    iget v6, v4, LN0/h;->b0:I

    if-ne v6, v5, :cond_13

    goto :goto_9

    :cond_13
    iget-object v6, p0, LN0/k;->S0:[LN0/h;

    aget-object v6, v6, p1

    iget-object v7, p0, LN0/k;->R0:[LN0/h;

    aget-object v7, v7, v3

    if-eq v4, v6, :cond_14

    iget-object v8, v6, LN0/h;->C:LN0/e;

    iget-object v9, v4, LN0/h;->C:LN0/e;

    invoke-virtual {v4, v9, v8, p2}, LN0/h;->f(LN0/e;LN0/e;I)V

    iget-object v8, v4, LN0/h;->E:LN0/e;

    iget-object v6, v6, LN0/h;->E:LN0/e;

    invoke-virtual {v4, v8, v6, p2}, LN0/h;->f(LN0/e;LN0/e;I)V

    :cond_14
    if-eq v4, v7, :cond_15

    iget-object v6, v7, LN0/h;->D:LN0/e;

    iget-object v8, v4, LN0/h;->D:LN0/e;

    invoke-virtual {v4, v8, v6, p2}, LN0/h;->f(LN0/e;LN0/e;I)V

    iget-object v6, v4, LN0/h;->F:LN0/e;

    iget-object v7, v7, LN0/h;->F:LN0/e;

    invoke-virtual {v4, v6, v7, p2}, LN0/h;->f(LN0/e;LN0/e;I)V

    :cond_15
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, p2

    :goto_a
    if-ge v3, v0, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/j;

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_18

    move v5, v2

    goto :goto_b

    :cond_18
    move v5, p2

    :goto_b
    invoke-virtual {v4, v3, p1, v5}, LN0/j;->b(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/j;

    invoke-virtual {v0, p2, p1, v2}, LN0/j;->b(IZZ)V

    :cond_1a
    :goto_c
    iput-boolean p2, p0, LN0/k;->s0:Z

    return-void
.end method
