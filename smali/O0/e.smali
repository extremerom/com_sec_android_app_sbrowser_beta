.class public final LO0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LN0/i;

.field public b:Z

.field public c:Z

.field public d:LN0/i;

.field public e:Ljava/util/ArrayList;

.field public f:LP0/i;

.field public g:LO0/b;

.field public h:Ljava/util/ArrayList;


# virtual methods
.method public final a(LO0/g;ILjava/util/ArrayList;LO0/n;)V
    .locals 6

    iget-object p1, p1, LO0/g;->d:LO0/t;

    iget-object v0, p1, LO0/t;->c:LO0/n;

    if-nez v0, :cond_a

    iget-object v0, p0, LO0/e;->a:LN0/i;

    iget-object v1, v0, LN0/h;->d:LO0/m;

    if-eq p1, v1, :cond_a

    iget-object v0, v0, LN0/h;->e:LO0/p;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p4, :cond_1

    new-instance p4, LO0/n;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p4, LO0/n;->a:LO0/t;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p4, LO0/n;->b:Ljava/util/ArrayList;

    iput-object p1, p4, LO0/n;->a:LO0/t;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p4, p1, LO0/t;->c:LO0/n;

    iget-object v0, p4, LO0/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, LO0/t;->h:LO0/g;

    iget-object v1, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO0/d;

    instance-of v3, v2, LO0/g;

    if-eqz v3, :cond_2

    check-cast v2, LO0/g;

    invoke-virtual {p0, v2, p2, p3, p4}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_0

    :cond_3
    iget-object v1, p1, LO0/t;->i:LO0/g;

    iget-object v2, v1, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LO0/d;

    instance-of v4, v3, LO0/g;

    if-eqz v4, :cond_4

    check-cast v3, LO0/g;

    invoke-virtual {p0, v3, p2, p3, p4}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    if-ne p2, v2, :cond_7

    instance-of v3, p1, LO0/p;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, LO0/p;

    iget-object v3, v3, LO0/p;->k:LO0/g;

    iget-object v3, v3, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO0/d;

    instance-of v5, v4, LO0/g;

    if-eqz v5, :cond_6

    check-cast v4, LO0/g;

    invoke-virtual {p0, v4, p2, p3, p4}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_2

    :cond_7
    iget-object v0, v0, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LO0/g;

    invoke-virtual {p0, v3, p2, p3, p4}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_3

    :cond_8
    iget-object v0, v1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO0/g;

    invoke-virtual {p0, v1, p2, p3, p4}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_4

    :cond_9
    if-ne p2, v2, :cond_a

    instance-of v0, p1, LO0/p;

    if-eqz v0, :cond_a

    check-cast p1, LO0/p;

    iget-object p1, p1, LO0/p;->k:LO0/g;

    iget-object p1, p1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO0/g;

    invoke-virtual {p0, v0, p2, p3, p4}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public final b(LN0/i;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v1, v0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/h;

    iget-object v3, v2, LN0/h;->N:[LN0/g;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    const/4 v9, 0x1

    aget-object v3, v3, v9

    iget v6, v2, LN0/h;->b0:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    iput-boolean v9, v2, LN0/h;->a:Z

    goto :goto_0

    :cond_1
    iget v6, v2, LN0/h;->q:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v10

    const/4 v8, 0x2

    if-gez v7, :cond_2

    sget-object v7, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v5, v7, :cond_2

    iput v8, v2, LN0/h;->l:I

    :cond_2
    iget v7, v2, LN0/h;->t:F

    cmpg-float v11, v7, v10

    if-gez v11, :cond_3

    sget-object v11, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v3, v11, :cond_3

    iput v8, v2, LN0/h;->m:I

    :cond_3
    iget v11, v2, LN0/h;->R:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    const/4 v12, 0x3

    if-lez v11, :cond_9

    sget-object v11, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v5, v11, :cond_5

    sget-object v13, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v3, v13, :cond_4

    sget-object v13, LN0/g;->FIXED:LN0/g;

    if-ne v3, v13, :cond_5

    :cond_4
    iput v12, v2, LN0/h;->l:I

    goto :goto_1

    :cond_5
    if-ne v3, v11, :cond_7

    sget-object v13, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v5, v13, :cond_6

    sget-object v13, LN0/g;->FIXED:LN0/g;

    if-ne v5, v13, :cond_7

    :cond_6
    iput v12, v2, LN0/h;->m:I

    goto :goto_1

    :cond_7
    if-ne v5, v11, :cond_9

    if-ne v3, v11, :cond_9

    iget v11, v2, LN0/h;->l:I

    if-nez v11, :cond_8

    iput v12, v2, LN0/h;->l:I

    :cond_8
    iget v11, v2, LN0/h;->m:I

    if-nez v11, :cond_9

    iput v12, v2, LN0/h;->m:I

    :cond_9
    :goto_1
    sget-object v11, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    iget-object v13, v2, LN0/h;->E:LN0/e;

    iget-object v14, v2, LN0/h;->C:LN0/e;

    if-ne v5, v11, :cond_b

    iget v15, v2, LN0/h;->l:I

    if-ne v15, v9, :cond_b

    iget-object v15, v14, LN0/e;->f:LN0/e;

    if-eqz v15, :cond_a

    iget-object v15, v13, LN0/e;->f:LN0/e;

    if-nez v15, :cond_b

    :cond_a
    sget-object v5, LN0/g;->WRAP_CONTENT:LN0/g;

    :cond_b
    iget-object v15, v2, LN0/h;->F:LN0/e;

    iget-object v10, v2, LN0/h;->D:LN0/e;

    if-ne v3, v11, :cond_d

    iget v4, v2, LN0/h;->m:I

    if-ne v4, v9, :cond_d

    iget-object v4, v10, LN0/e;->f:LN0/e;

    if-eqz v4, :cond_c

    iget-object v4, v15, LN0/e;->f:LN0/e;

    if-nez v4, :cond_d

    :cond_c
    sget-object v3, LN0/g;->WRAP_CONTENT:LN0/g;

    :cond_d
    move-object v4, v3

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iput-object v5, v3, LO0/t;->d:LN0/g;

    iget v8, v2, LN0/h;->l:I

    iput v8, v3, LO0/t;->a:I

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iput-object v4, v3, LO0/t;->d:LN0/g;

    iget v9, v2, LN0/h;->m:I

    iput v9, v3, LO0/t;->a:I

    sget-object v3, LN0/g;->MATCH_PARENT:LN0/g;

    if-eq v5, v3, :cond_e

    sget-object v12, LN0/g;->FIXED:LN0/g;

    if-eq v5, v12, :cond_e

    sget-object v12, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v5, v12, :cond_f

    :cond_e
    if-eq v4, v3, :cond_26

    sget-object v12, LN0/g;->FIXED:LN0/g;

    if-eq v4, v12, :cond_26

    sget-object v12, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v4, v12, :cond_f

    goto/16 :goto_7

    :cond_f
    iget-object v10, v0, LN0/h;->N:[LN0/g;

    iget-object v12, v2, LN0/h;->K:[LN0/e;

    const/high16 v13, 0x3f000000    # 0.5f

    if-ne v5, v11, :cond_11

    sget-object v14, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v4, v14, :cond_10

    sget-object v15, LN0/g;->FIXED:LN0/g;

    if-ne v4, v15, :cond_11

    :cond_10
    const/4 v15, 0x3

    goto :goto_2

    :cond_11
    move-object v15, v4

    goto/16 :goto_3

    :goto_2
    if-ne v8, v15, :cond_13

    if-ne v4, v14, :cond_12

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v14

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    :cond_12
    invoke-virtual {v2}, LN0/h;->k()I

    move-result v8

    int-to-float v3, v8

    iget v4, v2, LN0/h;->R:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v13

    float-to-int v6, v3

    sget-object v7, LN0/g;->FIXED:LN0/g;

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    const/4 v15, 0x1

    iput-boolean v15, v2, LN0/h;->a:Z

    goto/16 :goto_0

    :cond_13
    const/4 v15, 0x1

    if-ne v8, v15, :cond_14

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v15, v4

    move-object v4, v2

    move-object v5, v14

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v2

    iput v2, v3, LO0/h;->m:I

    goto/16 :goto_0

    :cond_14
    move-object v15, v4

    const/4 v4, 0x2

    if-ne v8, v4, :cond_16

    const/4 v4, 0x0

    aget-object v14, v10, v4

    sget-object v4, LN0/g;->FIXED:LN0/g;

    if-eq v14, v4, :cond_15

    if-ne v14, v3, :cond_18

    :cond_15
    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v13

    float-to-int v6, v6

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v8

    move-object/from16 v3, p0

    move-object v5, v4

    move-object v4, v2

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    const/4 v4, 0x1

    iput-boolean v4, v2, LN0/h;->a:Z

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x1

    const/16 v16, 0x0

    aget-object v13, v12, v16

    iget-object v13, v13, LN0/e;->f:LN0/e;

    if-eqz v13, :cond_17

    aget-object v13, v12, v4

    iget-object v4, v13, LN0/e;->f:LN0/e;

    if-nez v4, :cond_18

    :cond_17
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v14

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, LN0/h;->a:Z

    goto/16 :goto_0

    :cond_18
    :goto_3
    if-ne v15, v11, :cond_1a

    sget-object v13, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v5, v13, :cond_19

    sget-object v4, LN0/g;->FIXED:LN0/g;

    if-ne v5, v4, :cond_1a

    :cond_19
    const/4 v4, 0x3

    goto :goto_4

    :cond_1a
    const/4 v3, 0x1

    goto/16 :goto_5

    :goto_4
    if-ne v9, v4, :cond_1d

    if-ne v5, v13, :cond_1b

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    :cond_1b
    invoke-virtual {v2}, LN0/h;->n()I

    move-result v6

    iget v3, v2, LN0/h;->R:F

    iget v4, v2, LN0/h;->S:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1c

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1c
    int-to-float v4, v6

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v4, v3

    float-to-int v8, v4

    sget-object v7, LN0/g;->FIXED:LN0/g;

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    const/4 v4, 0x1

    iput-boolean v4, v2, LN0/h;->a:Z

    goto/16 :goto_0

    :cond_1d
    const/4 v4, 0x1

    if-ne v9, v4, :cond_1e

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v2

    iput v2, v3, LO0/h;->m:I

    goto/16 :goto_0

    :cond_1e
    const/4 v4, 0x2

    if-ne v9, v4, :cond_20

    const/4 v4, 0x1

    aget-object v12, v10, v4

    sget-object v13, LN0/g;->FIXED:LN0/g;

    if-eq v12, v13, :cond_1f

    if-ne v12, v3, :cond_1a

    :cond_1f
    invoke-virtual {v2}, LN0/h;->n()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v7, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v7, v3

    float-to-int v8, v7

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, LN0/h;->a:Z

    goto/16 :goto_0

    :cond_20
    move v3, v4

    aget-object v4, v12, v3

    iget-object v3, v4, LN0/e;->f:LN0/e;

    if-eqz v3, :cond_21

    const/4 v3, 0x3

    aget-object v3, v12, v3

    iget-object v3, v3, LN0/e;->f:LN0/e;

    if-nez v3, :cond_1a

    :cond_21
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, LN0/h;->a:Z

    goto/16 :goto_0

    :goto_5
    if-ne v5, v11, :cond_0

    if-ne v15, v11, :cond_0

    if-eq v8, v3, :cond_25

    if-ne v9, v3, :cond_22

    goto :goto_6

    :cond_22
    const/4 v4, 0x2

    if-ne v9, v4, :cond_0

    if-ne v8, v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v10, v4

    sget-object v8, LN0/g;->FIXED:LN0/g;

    if-eq v4, v8, :cond_23

    if-ne v4, v8, :cond_0

    :cond_23
    aget-object v4, v10, v3

    if-eq v4, v8, :cond_24

    if-ne v4, v8, :cond_0

    :cond_24
    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v7, v4

    add-float/2addr v7, v3

    float-to-int v9, v7

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v8

    move-object v7, v8

    move v8, v9

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, LN0/h;->a:Z

    goto/16 :goto_0

    :cond_25
    :goto_6
    sget-object v7, LN0/g;->WRAP_CONTENT:LN0/g;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    iput v4, v3, LO0/h;->m:I

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v2

    iput v2, v3, LO0/h;->m:I

    goto/16 :goto_0

    :cond_26
    :goto_7
    invoke-virtual {v2}, LN0/h;->n()I

    move-result v6

    if-ne v5, v3, :cond_27

    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v5

    iget v6, v14, LN0/e;->g:I

    sub-int/2addr v5, v6

    iget v6, v13, LN0/e;->g:I

    sub-int/2addr v5, v6

    sget-object v6, LN0/g;->FIXED:LN0/g;

    move-object/from16 v17, v6

    move v6, v5

    move-object/from16 v5, v17

    :cond_27
    invoke-virtual {v2}, LN0/h;->k()I

    move-result v7

    if-ne v4, v3, :cond_28

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v3

    iget v4, v10, LN0/e;->g:I

    sub-int/2addr v3, v4

    iget v4, v15, LN0/e;->g:I

    sub-int/2addr v3, v4

    sget-object v4, LN0/g;->FIXED:LN0/g;

    move v8, v3

    :goto_8
    move-object v7, v4

    goto :goto_9

    :cond_28
    move v8, v7

    goto :goto_8

    :goto_9
    move-object/from16 v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iget-object v3, v2, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->n()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    iget-object v3, v2, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v2}, LN0/h;->k()I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, LN0/h;->a:Z

    goto/16 :goto_0

    :cond_29
    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, LO0/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, LO0/e;->d:LN0/i;

    iget-object v2, v1, LN0/h;->d:LO0/m;

    invoke-virtual {v2}, LO0/m;->f()V

    iget-object v2, v1, LN0/h;->e:LO0/p;

    invoke-virtual {v2}, LO0/p;->f()V

    iget-object v2, v1, LN0/h;->d:LO0/m;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LN0/h;->e:LO0/p;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    instance-of v7, v4, LN0/m;

    if-eqz v7, :cond_1

    new-instance v5, LO0/j;

    invoke-direct {v5, v4}, LO0/t;-><init>(LN0/h;)V

    iget-object v6, v4, LN0/h;->d:LO0/m;

    invoke-virtual {v6}, LO0/m;->f()V

    iget-object v6, v4, LN0/h;->e:LO0/p;

    invoke-virtual {v6}, LO0/p;->f()V

    check-cast v4, LN0/m;

    iget v4, v4, LN0/m;->o0:I

    iput v4, v5, LO0/t;->f:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, LN0/h;->t()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, LN0/h;->b:LO0/c;

    if-nez v7, :cond_2

    new-instance v7, LO0/c;

    invoke-direct {v7, v4, v6}, LO0/c;-><init>(LN0/h;I)V

    iput-object v7, v4, LN0/h;->b:LO0/c;

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v6, v4, LN0/h;->b:LO0/c;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, v4, LN0/h;->d:LO0/m;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4}, LN0/h;->u()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v4, LN0/h;->c:LO0/c;

    if-nez v6, :cond_5

    new-instance v6, LO0/c;

    invoke-direct {v6, v4, v5}, LO0/c;-><init>(LN0/h;I)V

    iput-object v6, v4, LN0/h;->c:LO0/c;

    :cond_5
    if-nez v3, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v5, v4, LN0/h;->c:LO0/c;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v5, v4, LN0/h;->e:LO0/p;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v5, v4, LN0/n;

    if-eqz v5, :cond_0

    new-instance v5, LO0/k;

    invoke-direct {v5, v4}, LO0/t;-><init>(LN0/h;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LO0/t;

    invoke-virtual {v3}, LO0/t;->f()V

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO0/t;

    iget-object v3, v2, LO0/t;->b:LN0/h;

    if-ne v3, v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, LO0/t;->d()V

    goto :goto_4

    :cond_c
    iget-object v0, p0, LO0/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, LO0/e;->a:LN0/i;

    iget-object v2, v1, LN0/h;->d:LO0/m;

    invoke-virtual {p0, v2, v6, v0}, LO0/e;->e(LO0/t;ILjava/util/ArrayList;)V

    iget-object v1, v1, LN0/h;->e:LO0/p;

    invoke-virtual {p0, v1, v5, v0}, LO0/e;->e(LO0/t;ILjava/util/ArrayList;)V

    iput-boolean v6, p0, LO0/e;->b:Z

    return-void
.end method

.method public final d(LN0/i;I)I
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v1, v1, LO0/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v3, :cond_d

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LO0/n;

    iget-object v9, v9, LO0/n;->a:LO0/t;

    instance-of v10, v9, LO0/c;

    if-eqz v10, :cond_0

    move-object v10, v9

    check-cast v10, LO0/c;

    iget v10, v10, LO0/t;->f:I

    if-eq v10, v2, :cond_2

    :goto_1
    move-object/from16 p0, v1

    move-wide v0, v4

    move/from16 v16, v6

    goto/16 :goto_8

    :cond_0
    if-nez v2, :cond_1

    instance-of v10, v9, LO0/m;

    if-nez v10, :cond_2

    goto :goto_1

    :cond_1
    instance-of v10, v9, LO0/p;

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget-object v10, v0, LN0/h;->d:LO0/m;

    :goto_2
    iget-object v10, v10, LO0/t;->h:LO0/g;

    goto :goto_3

    :cond_3
    iget-object v10, v0, LN0/h;->e:LO0/p;

    goto :goto_2

    :goto_3
    if-nez v2, :cond_4

    iget-object v11, v0, LN0/h;->d:LO0/m;

    :goto_4
    iget-object v11, v11, LO0/t;->i:LO0/g;

    goto :goto_5

    :cond_4
    iget-object v11, v0, LN0/h;->e:LO0/p;

    goto :goto_4

    :goto_5
    iget-object v12, v9, LO0/t;->h:LO0/g;

    iget-object v12, v12, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v12, v9, LO0/t;->i:LO0/g;

    iget-object v13, v12, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9}, LO0/t;->j()J

    move-result-wide v13

    iget-object v15, v9, LO0/t;->h:LO0/g;

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    invoke-static {v15, v4, v5}, LO0/n;->b(LO0/g;J)J

    move-result-wide v10

    move-object/from16 p0, v1

    invoke-static {v12, v4, v5}, LO0/n;->a(LO0/g;J)J

    move-result-wide v0

    sub-long/2addr v10, v13

    iget v4, v12, LO0/g;->f:I

    neg-int v5, v4

    move/from16 v16, v6

    int-to-long v5, v5

    cmp-long v5, v10, v5

    if-ltz v5, :cond_5

    int-to-long v4, v4

    add-long/2addr v10, v4

    :cond_5
    neg-long v0, v0

    sub-long/2addr v0, v13

    iget v4, v15, LO0/g;->f:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_6

    sub-long/2addr v0, v4

    :cond_6
    iget-object v4, v9, LO0/t;->b:LN0/h;

    if-nez v2, :cond_7

    iget v4, v4, LN0/h;->Y:F

    goto :goto_6

    :cond_7
    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    iget v4, v4, LN0/h;->Z:F

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, -0x40800000    # -1.0f

    :goto_6
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_9

    long-to-float v0, v0

    div-float/2addr v0, v4

    long-to-float v1, v10

    sub-float v5, v6, v4

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_7

    :cond_9
    const-wide/16 v0, 0x0

    :goto_7
    long-to-float v0, v0

    mul-float v1, v0, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-long v9, v1

    invoke-static {v6, v4, v0, v5}, LB/e;->a(FFFF)F

    move-result v0

    float-to-long v0, v0

    add-long/2addr v9, v13

    add-long/2addr v9, v0

    iget v0, v15, LO0/g;->f:I

    int-to-long v0, v0

    add-long/2addr v0, v9

    iget v4, v12, LO0/g;->f:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_8

    :cond_a
    move-object/from16 p0, v1

    move/from16 v16, v6

    if-eqz v10, :cond_b

    iget v0, v15, LO0/g;->f:I

    int-to-long v0, v0

    invoke-static {v15, v0, v1}, LO0/n;->b(LO0/g;J)J

    move-result-wide v0

    iget v4, v15, LO0/g;->f:I

    int-to-long v4, v4

    add-long/2addr v4, v13

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8

    :cond_b
    if-eqz v11, :cond_c

    iget v0, v12, LO0/g;->f:I

    int-to-long v0, v0

    invoke-static {v12, v0, v1}, LO0/n;->a(LO0/g;J)J

    move-result-wide v0

    iget v4, v12, LO0/g;->f:I

    neg-int v4, v4

    int-to-long v4, v4

    add-long/2addr v4, v13

    neg-long v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8

    :cond_c
    iget v0, v15, LO0/g;->f:I

    int-to-long v0, v0

    invoke-virtual {v9}, LO0/t;->j()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget v0, v12, LO0/g;->f:I

    int-to-long v0, v0

    sub-long v0, v4, v0

    :goto_8
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-int/lit8 v6, v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v7

    return v0
.end method

.method public final e(LO0/t;ILjava/util/ArrayList;)V
    .locals 4

    iget-object v0, p1, LO0/t;->h:LO0/g;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p1, LO0/t;->i:LO0/g;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO0/d;

    instance-of v2, v1, LO0/g;

    if-eqz v2, :cond_1

    check-cast v1, LO0/g;

    invoke-virtual {p0, v1, p2, p3, v3}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, LO0/t;

    if-eqz v2, :cond_0

    check-cast v1, LO0/t;

    iget-object v1, v1, LO0/t;->h:LO0/g;

    invoke-virtual {p0, v1, p2, p3, v3}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO0/d;

    instance-of v2, v1, LO0/g;

    if-eqz v2, :cond_4

    check-cast v1, LO0/g;

    invoke-virtual {p0, v1, p2, p3, v3}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, LO0/t;

    if-eqz v2, :cond_3

    check-cast v1, LO0/t;

    iget-object v1, v1, LO0/t;->i:LO0/g;

    invoke-virtual {p0, v1, p2, p3, v3}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, LO0/p;

    iget-object p1, p1, LO0/p;->k:LO0/g;

    iget-object p1, p1, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO0/d;

    instance-of v1, v0, LO0/g;

    if-eqz v1, :cond_6

    check-cast v0, LO0/g;

    invoke-virtual {p0, v0, p2, p3, v3}, LO0/e;->a(LO0/g;ILjava/util/ArrayList;LO0/n;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final f(LN0/h;LN0/g;ILN0/g;I)V
    .locals 1

    iget-object v0, p0, LO0/e;->g:LO0/b;

    iput-object p2, v0, LO0/b;->a:LN0/g;

    iput-object p4, v0, LO0/b;->b:LN0/g;

    iput p3, v0, LO0/b;->c:I

    iput p5, v0, LO0/b;->d:I

    iget-object p0, p0, LO0/e;->f:LP0/i;

    invoke-virtual {p0, p1, v0}, LP0/i;->b(LN0/h;LO0/b;)V

    iget p0, v0, LO0/b;->e:I

    invoke-virtual {p1, p0}, LN0/h;->H(I)V

    iget p0, v0, LO0/b;->f:I

    invoke-virtual {p1, p0}, LN0/h;->E(I)V

    iget-boolean p0, v0, LO0/b;->h:Z

    iput-boolean p0, p1, LN0/h;->y:Z

    iget p0, v0, LO0/b;->g:I

    invoke-virtual {p1, p0}, LN0/h;->B(I)V

    return-void
.end method

.method public final g()V
    .locals 12

    iget-object v0, p0, LO0/e;->a:LN0/i;

    iget-object v0, v0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/h;

    iget-boolean v2, v1, LN0/h;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, LN0/h;->N:[LN0/g;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget-object v10, v2, v9

    iget v2, v1, LN0/h;->l:I

    iget v4, v1, LN0/h;->m:I

    sget-object v6, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v8, v6, :cond_3

    sget-object v5, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    if-eq v10, v6, :cond_4

    sget-object v5, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, LN0/h;->d:LO0/m;

    iget-object v4, v4, LO0/t;->e:LO0/h;

    iget-boolean v5, v4, LO0/g;->j:Z

    iget-object v7, v1, LN0/h;->e:LO0/p;

    iget-object v7, v7, LO0/t;->e:LO0/h;

    iget-boolean v11, v7, LO0/g;->j:Z

    if-eqz v5, :cond_6

    if-eqz v11, :cond_6

    sget-object v6, LN0/g;->FIXED:LN0/g;

    iget v5, v4, LO0/g;->g:I

    iget v7, v7, LO0/g;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    invoke-virtual/range {v2 .. v7}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    iput-boolean v9, v1, LN0/h;->a:Z

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    sget-object v5, LN0/g;->FIXED:LN0/g;

    iget v8, v4, LO0/g;->g:I

    iget v7, v7, LO0/g;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v5

    move v5, v8

    invoke-virtual/range {v2 .. v7}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    sget-object v2, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v10, v2, :cond_7

    iget-object v2, v1, LN0/h;->e:LO0/p;

    iget-object v2, v2, LO0/t;->e:LO0/h;

    invoke-virtual {v1}, LN0/h;->k()I

    move-result v3

    iput v3, v2, LO0/h;->m:I

    goto :goto_3

    :cond_7
    iget-object v2, v1, LN0/h;->e:LO0/p;

    iget-object v2, v2, LO0/t;->e:LO0/h;

    invoke-virtual {v1}, LN0/h;->k()I

    move-result v3

    invoke-virtual {v2, v3}, LO0/h;->d(I)V

    iput-boolean v9, v1, LN0/h;->a:Z

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_a

    if-eqz v2, :cond_a

    iget v5, v4, LO0/g;->g:I

    sget-object v10, LN0/g;->FIXED:LN0/g;

    iget v7, v7, LO0/g;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, LO0/e;->f(LN0/h;LN0/g;ILN0/g;I)V

    sget-object v2, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v8, v2, :cond_9

    iget-object v2, v1, LN0/h;->d:LO0/m;

    iget-object v2, v2, LO0/t;->e:LO0/h;

    invoke-virtual {v1}, LN0/h;->n()I

    move-result v3

    iput v3, v2, LO0/h;->m:I

    goto :goto_3

    :cond_9
    iget-object v2, v1, LN0/h;->d:LO0/m;

    iget-object v2, v2, LO0/t;->e:LO0/h;

    invoke-virtual {v1}, LN0/h;->n()I

    move-result v3

    invoke-virtual {v2, v3}, LO0/h;->d(I)V

    iput-boolean v9, v1, LN0/h;->a:Z

    :cond_a
    :goto_3
    iget-boolean v2, v1, LN0/h;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, LN0/h;->e:LO0/p;

    iget-object v2, v2, LO0/p;->l:LO0/a;

    if-eqz v2, :cond_0

    iget v1, v1, LN0/h;->V:I

    invoke-virtual {v2, v1}, LO0/h;->d(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
