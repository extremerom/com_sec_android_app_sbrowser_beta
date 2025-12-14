.class public abstract LO0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LO0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LO0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LO0/i;->a:LO0/b;

    return-void
.end method

.method public static a(LN0/h;)Z
    .locals 7

    iget-object v0, p0, LN0/h;->N:[LN0/g;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v4, p0, LN0/h;->O:LN0/h;

    if-eqz v4, :cond_0

    check-cast v4, LN0/i;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, v4, LN0/h;->N:[LN0/g;

    aget-object v5, v5, v1

    sget-object v6, LN0/g;->FIXED:LN0/g;

    :cond_1
    if-eqz v4, :cond_2

    iget-object v4, v4, LN0/h;->N:[LN0/g;

    aget-object v4, v4, v3

    sget-object v5, LN0/g;->FIXED:LN0/g;

    :cond_2
    sget-object v4, LN0/g;->FIXED:LN0/g;

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5

    sget-object v6, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v2, v6, :cond_5

    sget-object v6, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v2, v6, :cond_3

    iget v2, p0, LN0/h;->l:I

    if-nez v2, :cond_3

    iget v2, p0, LN0/h;->R:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, LN0/h;->q(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    invoke-virtual {p0}, LN0/h;->w()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    if-eq v0, v4, :cond_8

    sget-object v4, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v0, v4, :cond_8

    sget-object v4, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v0, v4, :cond_6

    iget v0, p0, LN0/h;->m:I

    if-nez v0, :cond_6

    iget v0, p0, LN0/h;->R:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_6

    invoke-virtual {p0, v3}, LN0/h;->q(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-virtual {p0}, LN0/h;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v3

    :goto_4
    iget p0, p0, LN0/h;->R:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_a

    if-nez v2, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public static b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;
    .locals 7

    if-nez p1, :cond_0

    iget v0, p0, LN0/h;->i0:I

    goto :goto_0

    :cond_0
    iget v0, p0, LN0/h;->j0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, LO0/q;->b:I

    if-eq v0, v3, :cond_4

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO0/q;

    iget v5, v4, LO0/q;->b:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, v4}, LO0/q;->c(ILO0/q;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    instance-of v3, p0, LN0/n;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, LN0/n;

    move v4, v1

    :goto_3
    iget v5, v3, LN0/n;->l0:I

    if-ge v4, v5, :cond_8

    iget-object v5, v3, LN0/n;->k0:[LN0/h;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    iget v6, v5, LN0/h;->i0:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    iget v6, v5, LN0/h;->j0:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_4
    if-eq v6, v2, :cond_a

    move v3, v1

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO0/q;

    iget v5, v4, LO0/q;->b:I

    if-ne v5, v6, :cond_9

    move-object p3, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    new-instance p3, LO0/q;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p3, LO0/q;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-object v3, p3, LO0/q;->d:Ljava/util/ArrayList;

    iput v2, p3, LO0/q;->e:I

    sget v2, LO0/q;->f:I

    add-int/lit8 v3, v2, 0x1

    sput v3, LO0/q;->f:I

    iput v2, p3, LO0/q;->b:I

    iput p1, p3, LO0/q;->c:I

    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v2, p3, LO0/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v2, p0, LN0/m;

    if-eqz v2, :cond_f

    move-object v2, p0

    check-cast v2, LN0/m;

    iget-object v3, v2, LN0/m;->n0:LN0/e;

    iget v2, v2, LN0/m;->o0:I

    if-nez v2, :cond_e

    move v1, v0

    :cond_e
    invoke-virtual {v3, v1, p3, p2}, LN0/e;->c(ILO0/q;Ljava/util/ArrayList;)V

    :cond_f
    iget v0, p3, LO0/q;->b:I

    if-nez p1, :cond_10

    iput v0, p0, LN0/h;->i0:I

    iget-object v0, p0, LN0/h;->C:LN0/e;

    invoke-virtual {v0, p1, p3, p2}, LN0/e;->c(ILO0/q;Ljava/util/ArrayList;)V

    iget-object v0, p0, LN0/h;->E:LN0/e;

    invoke-virtual {v0, p1, p3, p2}, LN0/e;->c(ILO0/q;Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_10
    iput v0, p0, LN0/h;->j0:I

    iget-object v0, p0, LN0/h;->D:LN0/e;

    invoke-virtual {v0, p1, p3, p2}, LN0/e;->c(ILO0/q;Ljava/util/ArrayList;)V

    iget-object v0, p0, LN0/h;->G:LN0/e;

    invoke-virtual {v0, p1, p3, p2}, LN0/e;->c(ILO0/q;Ljava/util/ArrayList;)V

    iget-object v0, p0, LN0/h;->F:LN0/e;

    invoke-virtual {v0, p1, p3, p2}, LN0/e;->c(ILO0/q;Ljava/util/ArrayList;)V

    :goto_7
    iget-object p0, p0, LN0/h;->J:LN0/e;

    invoke-virtual {p0, p1, p3, p2}, LN0/e;->c(ILO0/q;Ljava/util/ArrayList;)V

    :goto_8
    return-object p3
.end method

.method public static c(LN0/h;LP0/i;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v0, LN0/i;

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, LN0/h;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p0 .. p0}, LO0/i;->a(LN0/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, LO0/b;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1, v3}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_0
    sget-object v3, LN0/d;->LEFT:LN0/d;

    invoke-virtual {v0, v3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v3

    sget-object v4, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v0, v4}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v4

    invoke-virtual {v3}, LN0/e;->d()I

    move-result v5

    invoke-virtual {v4}, LN0/e;->d()I

    move-result v6

    iget-object v7, v3, LN0/e;->a:Ljava/util/HashSet;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v7, :cond_b

    iget-boolean v3, v3, LN0/e;->c:Z

    if-eqz v3, :cond_b

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LN0/e;

    iget-object v11, v7, LN0/e;->d:LN0/h;

    invoke-static {v11}, LO0/i;->a(LN0/h;)Z

    move-result v12

    invoke-virtual {v11}, LN0/h;->v()Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v12, :cond_1

    new-instance v13, LO0/b;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-static {v11, v1, v13}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_1
    iget-object v13, v11, LN0/h;->N:[LN0/g;

    aget-object v13, v13, v8

    sget-object v14, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    iget-object v15, v11, LN0/h;->C:LN0/e;

    iget-object v8, v11, LN0/h;->E:LN0/e;

    if-ne v13, v14, :cond_6

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    if-ne v13, v14, :cond_7

    iget v12, v11, LN0/h;->p:I

    if-ltz v12, :cond_7

    iget v12, v11, LN0/h;->o:I

    if-ltz v12, :cond_7

    iget v12, v11, LN0/h;->b0:I

    if-eq v12, v10, :cond_3

    iget v12, v11, LN0/h;->l:I

    if-nez v12, :cond_7

    iget v12, v11, LN0/h;->R:F

    cmpl-float v12, v12, v9

    if-nez v12, :cond_7

    :cond_3
    invoke-virtual {v11}, LN0/h;->t()Z

    move-result v12

    if-nez v12, :cond_7

    iget-boolean v12, v11, LN0/h;->z:Z

    if-nez v12, :cond_7

    if-ne v7, v15, :cond_4

    iget-object v12, v8, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_4

    iget-boolean v12, v12, LN0/e;->c:Z

    if-nez v12, :cond_5

    :cond_4
    if-ne v7, v8, :cond_7

    iget-object v7, v15, LN0/e;->f:LN0/e;

    if-eqz v7, :cond_7

    iget-boolean v7, v7, LN0/e;->c:Z

    if-eqz v7, :cond_7

    :cond_5
    invoke-virtual {v11}, LN0/h;->t()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v0, v1, v11, v2}, LO0/i;->e(LN0/h;LP0/i;LN0/h;Z)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {v11}, LN0/h;->v()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    :goto_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    if-ne v7, v15, :cond_9

    iget-object v12, v8, LN0/e;->f:LN0/e;

    if-nez v12, :cond_9

    invoke-virtual {v15}, LN0/e;->e()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v11}, LN0/h;->n()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v11, v7, v8}, LN0/h;->C(II)V

    invoke-static {v11, v1, v2}, LO0/i;->c(LN0/h;LP0/i;Z)V

    goto :goto_2

    :cond_9
    if-ne v7, v8, :cond_a

    iget-object v12, v15, LN0/e;->f:LN0/e;

    if-nez v12, :cond_a

    invoke-virtual {v8}, LN0/e;->e()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v11}, LN0/h;->n()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v11, v8, v7}, LN0/h;->C(II)V

    invoke-static {v11, v1, v2}, LO0/i;->c(LN0/h;LP0/i;Z)V

    goto :goto_2

    :cond_a
    if-ne v7, v15, :cond_7

    iget-object v7, v8, LN0/e;->f:LN0/e;

    if-eqz v7, :cond_7

    iget-boolean v7, v7, LN0/e;->c:Z

    if-eqz v7, :cond_7

    invoke-virtual {v11}, LN0/h;->t()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v11, v1, v2}, LO0/i;->d(LN0/h;LP0/i;Z)V

    goto :goto_2

    :cond_b
    instance-of v3, v0, LN0/m;

    if-eqz v3, :cond_c

    return-void

    :cond_c
    iget-object v3, v4, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_18

    iget-boolean v4, v4, LN0/e;->c:Z

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/e;

    iget-object v5, v4, LN0/e;->d:LN0/h;

    invoke-static {v5}, LO0/i;->a(LN0/h;)Z

    move-result v7

    invoke-virtual {v5}, LN0/h;->v()Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz v7, :cond_e

    new-instance v8, LO0/b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v1, v8}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_e
    iget-object v8, v5, LN0/h;->C:LN0/e;

    iget-object v11, v5, LN0/h;->E:LN0/e;

    if-ne v4, v8, :cond_f

    iget-object v12, v11, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_f

    iget-boolean v12, v12, LN0/e;->c:Z

    if-nez v12, :cond_10

    :cond_f
    if-ne v4, v11, :cond_11

    iget-object v12, v8, LN0/e;->f:LN0/e;

    if-eqz v12, :cond_11

    iget-boolean v12, v12, LN0/e;->c:Z

    if-eqz v12, :cond_11

    :cond_10
    const/4 v12, 0x1

    goto :goto_4

    :cond_11
    const/4 v12, 0x0

    :goto_4
    iget-object v13, v5, LN0/h;->N:[LN0/g;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    sget-object v15, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v13, v15, :cond_14

    if-eqz v7, :cond_12

    goto :goto_5

    :cond_12
    if-ne v13, v15, :cond_d

    iget v4, v5, LN0/h;->p:I

    if-ltz v4, :cond_d

    iget v4, v5, LN0/h;->o:I

    if-ltz v4, :cond_d

    iget v4, v5, LN0/h;->b0:I

    if-eq v4, v10, :cond_13

    iget v4, v5, LN0/h;->l:I

    if-nez v4, :cond_d

    iget v4, v5, LN0/h;->R:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_d

    :cond_13
    invoke-virtual {v5}, LN0/h;->t()Z

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, v5, LN0/h;->z:Z

    if-nez v4, :cond_d

    if-eqz v12, :cond_d

    invoke-virtual {v5}, LN0/h;->t()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v0, v1, v5, v2}, LO0/i;->e(LN0/h;LP0/i;LN0/h;Z)V

    goto :goto_3

    :cond_14
    :goto_5
    invoke-virtual {v5}, LN0/h;->v()Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_3

    :cond_15
    if-ne v4, v8, :cond_16

    iget-object v7, v11, LN0/e;->f:LN0/e;

    if-nez v7, :cond_16

    invoke-virtual {v8}, LN0/e;->e()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, LN0/h;->n()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v4, v7}, LN0/h;->C(II)V

    invoke-static {v5, v1, v2}, LO0/i;->c(LN0/h;LP0/i;Z)V

    goto/16 :goto_3

    :cond_16
    if-ne v4, v11, :cond_17

    iget-object v4, v8, LN0/e;->f:LN0/e;

    if-nez v4, :cond_17

    invoke-virtual {v11}, LN0/e;->e()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, LN0/h;->n()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v5, v7, v4}, LN0/h;->C(II)V

    invoke-static {v5, v1, v2}, LO0/i;->c(LN0/h;LP0/i;Z)V

    goto/16 :goto_3

    :cond_17
    if-eqz v12, :cond_d

    invoke-virtual {v5}, LN0/h;->t()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v5, v1, v2}, LO0/i;->d(LN0/h;LP0/i;Z)V

    goto/16 :goto_3

    :cond_18
    return-void
.end method

.method public static d(LN0/h;LP0/i;Z)V
    .locals 6

    iget v0, p0, LN0/h;->Y:F

    iget-object v1, p0, LN0/h;->C:LN0/e;

    iget-object v2, v1, LN0/e;->f:LN0/e;

    invoke-virtual {v2}, LN0/e;->d()I

    move-result v2

    iget-object v3, p0, LN0/h;->E:LN0/e;

    iget-object v4, v3, LN0/e;->f:LN0/e;

    invoke-virtual {v4}, LN0/e;->d()I

    move-result v4

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, LN0/e;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p0}, LN0/h;->n()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v2

    add-int v3, v0, v1

    if-le v2, v4, :cond_2

    sub-int v3, v0, v1

    :cond_2
    invoke-virtual {p0, v0, v3}, LN0/h;->C(II)V

    invoke-static {p0, p1, p2}, LO0/i;->c(LN0/h;LP0/i;Z)V

    return-void
.end method

.method public static e(LN0/h;LP0/i;LN0/h;Z)V
    .locals 7

    iget v0, p2, LN0/h;->Y:F

    iget-object v1, p2, LN0/h;->C:LN0/e;

    iget-object v2, v1, LN0/e;->f:LN0/e;

    invoke-virtual {v2}, LN0/e;->d()I

    move-result v2

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p2, LN0/h;->E:LN0/e;

    iget-object v3, v2, LN0/e;->f:LN0/e;

    invoke-virtual {v3}, LN0/e;->d()I

    move-result v3

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p2}, LN0/h;->n()I

    move-result v2

    iget v4, p2, LN0/h;->b0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p2, LN0/h;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p0, LN0/i;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, LN0/h;->n()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LN0/h;->O:LN0/h;

    invoke-virtual {p0}, LN0/h;->n()I

    move-result p0

    :goto_0
    iget v2, p2, LN0/h;->Y:F

    mul-float/2addr v2, v6

    int-to-float p0, p0

    mul-float/2addr v2, p0

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p0, p2, LN0/h;->o:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p2, LN0/h;->p:I

    if-lez p0, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p0, v3

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    invoke-virtual {p2, v1, v2}, LN0/h;->C(II)V

    invoke-static {p2, p1, p3}, LO0/i;->c(LN0/h;LP0/i;Z)V

    :cond_4
    return-void
.end method

.method public static f(LN0/h;LP0/i;)V
    .locals 6

    iget v0, p0, LN0/h;->Z:F

    iget-object v1, p0, LN0/h;->D:LN0/e;

    iget-object v2, v1, LN0/e;->f:LN0/e;

    invoke-virtual {v2}, LN0/e;->d()I

    move-result v2

    iget-object v3, p0, LN0/h;->F:LN0/e;

    iget-object v4, v3, LN0/e;->f:LN0/e;

    invoke-virtual {v4}, LN0/e;->d()I

    move-result v4

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, LN0/e;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p0}, LN0/h;->k()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v3, v2, v0

    add-int v5, v3, v1

    if-le v2, v4, :cond_2

    sub-int v3, v2, v0

    sub-int v5, v3, v1

    :cond_2
    invoke-virtual {p0, v3, v5}, LN0/h;->D(II)V

    invoke-static {p0, p1}, LO0/i;->i(LN0/h;LP0/i;)V

    return-void
.end method

.method public static g(LN0/h;LP0/i;LN0/h;)V
    .locals 7

    iget v0, p2, LN0/h;->Z:F

    iget-object v1, p2, LN0/h;->D:LN0/e;

    iget-object v2, v1, LN0/e;->f:LN0/e;

    invoke-virtual {v2}, LN0/e;->d()I

    move-result v2

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p2, LN0/h;->F:LN0/e;

    iget-object v3, v2, LN0/e;->f:LN0/e;

    invoke-virtual {v3}, LN0/e;->d()I

    move-result v3

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p2}, LN0/h;->k()I

    move-result v2

    iget v4, p2, LN0/h;->b0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p2, LN0/h;->m:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p0, LN0/i;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, LN0/h;->k()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LN0/h;->O:LN0/h;

    invoke-virtual {p0}, LN0/h;->k()I

    move-result p0

    :goto_0
    mul-float v2, v0, v6

    int-to-float p0, p0

    mul-float/2addr v2, p0

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p0, p2, LN0/h;->r:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p2, LN0/h;->s:I

    if-lez p0, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p0, v3

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    invoke-virtual {p2, v1, v2}, LN0/h;->D(II)V

    invoke-static {p2, p1}, LO0/i;->i(LN0/h;LP0/i;)V

    :cond_4
    return-void
.end method

.method public static h(LN0/g;LN0/g;LN0/g;LN0/g;)Z
    .locals 5

    sget-object v0, LN0/g;->FIXED:LN0/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    sget-object v3, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq p2, v3, :cond_1

    sget-object v4, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne p2, v4, :cond_0

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eq p3, v0, :cond_3

    sget-object p2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq p3, p2, :cond_3

    sget-object v0, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne p3, v0, :cond_2

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v1

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v1
.end method

.method public static i(LN0/h;LP0/i;)V
    .locals 14

    instance-of v0, p0, LN0/i;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LN0/h;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LO0/i;->a(LN0/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LO0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, p1, v0}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_0
    sget-object v0, LN0/d;->TOP:LN0/d;

    invoke-virtual {p0, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v0

    sget-object v1, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {p0, v1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    invoke-virtual {v0}, LN0/e;->d()I

    move-result v2

    invoke-virtual {v1}, LN0/e;->d()I

    move-result v3

    iget-object v4, v0, LN0/e;->a:Ljava/util/HashSet;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eqz v4, :cond_b

    iget-boolean v0, v0, LN0/e;->c:Z

    if-eqz v0, :cond_b

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/e;

    iget-object v8, v4, LN0/e;->d:LN0/h;

    invoke-static {v8}, LO0/i;->a(LN0/h;)Z

    move-result v9

    invoke-virtual {v8}, LN0/h;->v()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    new-instance v10, LO0/b;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v8, p1, v10}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_2
    iget-object v10, v8, LN0/h;->N:[LN0/g;

    aget-object v10, v10, v7

    sget-object v11, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    iget-object v12, v8, LN0/h;->D:LN0/e;

    iget-object v13, v8, LN0/h;->F:LN0/e;

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    if-ne v10, v11, :cond_1

    iget v9, v8, LN0/h;->s:I

    if-ltz v9, :cond_1

    iget v9, v8, LN0/h;->r:I

    if-ltz v9, :cond_1

    iget v9, v8, LN0/h;->b0:I

    if-eq v9, v6, :cond_4

    iget v9, v8, LN0/h;->m:I

    if-nez v9, :cond_1

    iget v9, v8, LN0/h;->R:F

    cmpl-float v9, v9, v5

    if-nez v9, :cond_1

    :cond_4
    invoke-virtual {v8}, LN0/h;->u()Z

    move-result v9

    if-nez v9, :cond_1

    iget-boolean v9, v8, LN0/h;->z:Z

    if-nez v9, :cond_1

    if-ne v4, v12, :cond_5

    iget-object v9, v13, LN0/e;->f:LN0/e;

    if-eqz v9, :cond_5

    iget-boolean v9, v9, LN0/e;->c:Z

    if-nez v9, :cond_6

    :cond_5
    if-ne v4, v13, :cond_1

    iget-object v4, v12, LN0/e;->f:LN0/e;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, LN0/e;->c:Z

    if-eqz v4, :cond_1

    :cond_6
    invoke-virtual {v8}, LN0/h;->u()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, p1, v8}, LO0/i;->g(LN0/h;LP0/i;LN0/h;)V

    goto :goto_0

    :cond_7
    :goto_1
    invoke-virtual {v8}, LN0/h;->v()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_0

    :cond_8
    if-ne v4, v12, :cond_9

    iget-object v9, v13, LN0/e;->f:LN0/e;

    if-nez v9, :cond_9

    invoke-virtual {v12}, LN0/e;->e()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v8}, LN0/h;->k()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v4, v9}, LN0/h;->D(II)V

    invoke-static {v8, p1}, LO0/i;->i(LN0/h;LP0/i;)V

    goto/16 :goto_0

    :cond_9
    if-ne v4, v13, :cond_a

    iget-object v9, v13, LN0/e;->f:LN0/e;

    if-nez v9, :cond_a

    invoke-virtual {v13}, LN0/e;->e()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v8}, LN0/h;->k()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {v8, v9, v4}, LN0/h;->D(II)V

    invoke-static {v8, p1}, LO0/i;->i(LN0/h;LP0/i;)V

    goto/16 :goto_0

    :cond_a
    if-ne v4, v12, :cond_1

    iget-object v4, v13, LN0/e;->f:LN0/e;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, LN0/e;->c:Z

    if-eqz v4, :cond_1

    invoke-static {v8, p1}, LO0/i;->f(LN0/h;LP0/i;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p0, LN0/m;

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, v1, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_18

    iget-boolean v1, v1, LN0/e;->c:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/e;

    iget-object v2, v1, LN0/e;->d:LN0/h;

    invoke-static {v2}, LO0/i;->a(LN0/h;)Z

    move-result v4

    invoke-virtual {v2}, LN0/h;->v()Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz v4, :cond_e

    new-instance v8, LO0/b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, p1, v8}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_e
    iget-object v8, v2, LN0/h;->D:LN0/e;

    iget-object v9, v2, LN0/h;->F:LN0/e;

    if-ne v1, v8, :cond_f

    iget-object v10, v9, LN0/e;->f:LN0/e;

    if-eqz v10, :cond_f

    iget-boolean v10, v10, LN0/e;->c:Z

    if-nez v10, :cond_10

    :cond_f
    if-ne v1, v9, :cond_11

    iget-object v10, v8, LN0/e;->f:LN0/e;

    if-eqz v10, :cond_11

    iget-boolean v10, v10, LN0/e;->c:Z

    if-eqz v10, :cond_11

    :cond_10
    move v10, v7

    goto :goto_3

    :cond_11
    const/4 v10, 0x0

    :goto_3
    iget-object v11, v2, LN0/h;->N:[LN0/g;

    aget-object v11, v11, v7

    sget-object v12, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v11, v12, :cond_14

    if-eqz v4, :cond_12

    goto :goto_4

    :cond_12
    if-ne v11, v12, :cond_d

    iget v1, v2, LN0/h;->s:I

    if-ltz v1, :cond_d

    iget v1, v2, LN0/h;->r:I

    if-ltz v1, :cond_d

    iget v1, v2, LN0/h;->b0:I

    if-eq v1, v6, :cond_13

    iget v1, v2, LN0/h;->m:I

    if-nez v1, :cond_d

    iget v1, v2, LN0/h;->R:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_d

    :cond_13
    invoke-virtual {v2}, LN0/h;->u()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, v2, LN0/h;->z:Z

    if-nez v1, :cond_d

    if-eqz v10, :cond_d

    invoke-virtual {v2}, LN0/h;->u()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p0, p1, v2}, LO0/i;->g(LN0/h;LP0/i;LN0/h;)V

    goto :goto_2

    :cond_14
    :goto_4
    invoke-virtual {v2}, LN0/h;->v()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_2

    :cond_15
    if-ne v1, v8, :cond_16

    iget-object v4, v9, LN0/e;->f:LN0/e;

    if-nez v4, :cond_16

    invoke-virtual {v8}, LN0/e;->e()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v1, v4}, LN0/h;->D(II)V

    invoke-static {v2, p1}, LO0/i;->i(LN0/h;LP0/i;)V

    goto/16 :goto_2

    :cond_16
    if-ne v1, v9, :cond_17

    iget-object v1, v8, LN0/e;->f:LN0/e;

    if-nez v1, :cond_17

    invoke-virtual {v9}, LN0/e;->e()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v2, v4, v1}, LN0/h;->D(II)V

    invoke-static {v2, p1}, LO0/i;->i(LN0/h;LP0/i;)V

    goto/16 :goto_2

    :cond_17
    if-eqz v10, :cond_d

    invoke-virtual {v2}, LN0/h;->u()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v2, p1}, LO0/i;->f(LN0/h;LP0/i;)V

    goto/16 :goto_2

    :cond_18
    sget-object v0, LN0/d;->BASELINE:LN0/d;

    invoke-virtual {p0, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    iget-object v0, p0, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, LN0/e;->c:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, LN0/e;->d()I

    move-result v0

    iget-object p0, p0, LN0/e;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/e;

    iget-object v2, v1, LN0/e;->d:LN0/h;

    invoke-static {v2}, LO0/i;->a(LN0/h;)Z

    move-result v3

    invoke-virtual {v2}, LN0/h;->v()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v3, :cond_1a

    new-instance v4, LO0/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, p1, v4}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_1a
    iget-object v4, v2, LN0/h;->N:[LN0/g;

    aget-object v4, v4, v7

    sget-object v5, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v4, v5, :cond_1b

    if-eqz v3, :cond_19

    :cond_1b
    invoke-virtual {v2}, LN0/h;->v()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_5

    :cond_1c
    iget-object v3, v2, LN0/h;->G:LN0/e;

    if-ne v1, v3, :cond_19

    iget-boolean v1, v2, LN0/h;->y:Z

    if-nez v1, :cond_1d

    goto :goto_6

    :cond_1d
    iget v1, v2, LN0/h;->V:I

    sub-int v1, v0, v1

    iget v4, v2, LN0/h;->Q:I

    add-int/2addr v4, v1

    iput v1, v2, LN0/h;->U:I

    iget-object v5, v2, LN0/h;->D:LN0/e;

    invoke-virtual {v5, v1}, LN0/e;->l(I)V

    iget-object v1, v2, LN0/h;->F:LN0/e;

    invoke-virtual {v1, v4}, LN0/e;->l(I)V

    invoke-virtual {v3, v0}, LN0/e;->l(I)V

    iput-boolean v7, v2, LN0/h;->i:Z

    :goto_6
    invoke-static {v2, p1}, LO0/i;->i(LN0/h;LP0/i;)V

    goto :goto_5

    :cond_1e
    return-void
.end method
