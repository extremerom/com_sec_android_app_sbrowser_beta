.class public abstract LN0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, LN0/o;->a:[Z

    return-void
.end method

.method public static a(LN0/i;LM0/c;Ljava/util/ArrayList;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    if-nez p3, :cond_0

    iget v1, v0, LN0/i;->s0:I

    iget-object v2, v0, LN0/i;->v0:[LN0/b;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, LN0/i;->t0:I

    iget-object v2, v0, LN0/i;->u0:[LN0/b;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_6e

    aget-object v1, v15, v9

    iget-boolean v2, v1, LN0/b;->q:Z

    iget-object v8, v1, LN0/b;->a:LN0/h;

    const/4 v3, 0x1

    const/16 v7, 0x8

    const/16 v17, 0x0

    if-nez v2, :cond_19

    iget v2, v1, LN0/b;->l:I

    mul-int/lit8 v5, v2, 0x2

    move-object v13, v8

    move-object/from16 v19, v13

    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_14

    iget v4, v1, LN0/b;->i:I

    add-int/2addr v4, v3

    iput v4, v1, LN0/b;->i:I

    iget-object v4, v13, LN0/h;->h0:[LN0/h;

    aput-object v17, v4, v2

    iget-object v4, v13, LN0/h;->g0:[LN0/h;

    aput-object v17, v4, v2

    iget v4, v13, LN0/h;->b0:I

    iget-object v3, v13, LN0/h;->K:[LN0/e;

    if-eq v4, v7, :cond_f

    invoke-virtual {v13, v2}, LN0/h;->j(I)LN0/g;

    sget-object v4, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    aget-object v22, v3, v5

    invoke-virtual/range {v22 .. v22}, LN0/e;->e()I

    add-int/lit8 v22, v5, 0x1

    aget-object v23, v3, v22

    invoke-virtual/range {v23 .. v23}, LN0/e;->e()I

    aget-object v23, v3, v5

    invoke-virtual/range {v23 .. v23}, LN0/e;->e()I

    aget-object v22, v3, v22

    invoke-virtual/range {v22 .. v22}, LN0/e;->e()I

    iget-object v7, v1, LN0/b;->b:LN0/h;

    if-nez v7, :cond_1

    iput-object v13, v1, LN0/b;->b:LN0/h;

    :cond_1
    iput-object v13, v1, LN0/b;->d:LN0/h;

    iget-object v7, v13, LN0/h;->N:[LN0/g;

    aget-object v7, v7, v2

    if-ne v7, v4, :cond_f

    iget-object v12, v13, LN0/h;->n:[I

    aget v12, v12, v2

    move/from16 v24, v6

    const/4 v6, 0x3

    if-eqz v12, :cond_3

    if-eq v12, v6, :cond_3

    const/4 v6, 0x2

    if-ne v12, v6, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v26, v9

    move/from16 v27, v14

    goto :goto_6

    :cond_3
    :goto_3
    iget v6, v1, LN0/b;->j:I

    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, LN0/b;->j:I

    iget-object v6, v13, LN0/h;->f0:[F

    aget v6, v6, v2

    const/16 v20, 0x0

    cmpl-float v26, v6, v20

    if-lez v26, :cond_4

    move/from16 v26, v9

    iget v9, v1, LN0/b;->k:F

    add-float/2addr v9, v6

    iput v9, v1, LN0/b;->k:F

    goto :goto_4

    :cond_4
    move/from16 v26, v9

    :goto_4
    iget v9, v13, LN0/h;->b0:I

    move/from16 v27, v14

    const/16 v14, 0x8

    if-eq v9, v14, :cond_8

    if-ne v7, v4, :cond_8

    if-eqz v12, :cond_5

    const/4 v4, 0x3

    if-ne v12, v4, :cond_8

    :cond_5
    const/4 v4, 0x0

    cmpg-float v6, v6, v4

    if-gez v6, :cond_6

    const/4 v4, 0x1

    iput-boolean v4, v1, LN0/b;->n:Z

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, v1, LN0/b;->o:Z

    :goto_5
    iget-object v4, v1, LN0/b;->h:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, LN0/b;->h:Ljava/util/ArrayList;

    :cond_7
    iget-object v4, v1, LN0/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v4, v1, LN0/b;->f:LN0/h;

    if-nez v4, :cond_9

    iput-object v13, v1, LN0/b;->f:LN0/h;

    :cond_9
    iget-object v4, v1, LN0/b;->g:LN0/h;

    if-eqz v4, :cond_a

    iget-object v4, v4, LN0/h;->g0:[LN0/h;

    aput-object v13, v4, v2

    :cond_a
    iput-object v13, v1, LN0/b;->g:LN0/h;

    :goto_6
    if-nez v2, :cond_c

    iget v4, v13, LN0/h;->l:I

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    iget v4, v13, LN0/h;->o:I

    if-nez v4, :cond_e

    iget v4, v13, LN0/h;->p:I

    goto :goto_7

    :cond_c
    iget v4, v13, LN0/h;->m:I

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_d
    iget v4, v13, LN0/h;->r:I

    if-nez v4, :cond_e

    iget v4, v13, LN0/h;->s:I

    :cond_e
    :goto_7
    move-object/from16 v4, v19

    goto :goto_8

    :cond_f
    move/from16 v24, v6

    move/from16 v26, v9

    move/from16 v27, v14

    goto :goto_7

    :goto_8
    if-eq v4, v13, :cond_10

    iget-object v4, v4, LN0/h;->h0:[LN0/h;

    aput-object v13, v4, v2

    :cond_10
    add-int/lit8 v4, v5, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, LN0/e;->f:LN0/e;

    if-eqz v3, :cond_11

    iget-object v3, v3, LN0/e;->d:LN0/h;

    iget-object v4, v3, LN0/h;->K:[LN0/e;

    aget-object v4, v4, v5

    iget-object v4, v4, LN0/e;->f:LN0/e;

    if-eqz v4, :cond_11

    iget-object v4, v4, LN0/e;->d:LN0/h;

    if-eq v4, v13, :cond_12

    :cond_11
    move-object/from16 v3, v17

    :cond_12
    if-eqz v3, :cond_13

    move/from16 v6, v24

    goto :goto_9

    :cond_13
    move-object v3, v13

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v19, v13

    move/from16 v9, v26

    move/from16 v14, v27

    const/16 v7, 0x8

    move-object v13, v3

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_14
    move/from16 v26, v9

    move/from16 v27, v14

    iget-object v3, v1, LN0/b;->b:LN0/h;

    if-eqz v3, :cond_15

    iget-object v3, v3, LN0/h;->K:[LN0/e;

    aget-object v3, v3, v5

    invoke-virtual {v3}, LN0/e;->e()I

    :cond_15
    iget-object v3, v1, LN0/b;->d:LN0/h;

    if-eqz v3, :cond_16

    add-int/lit8 v5, v5, 0x1

    iget-object v3, v3, LN0/h;->K:[LN0/e;

    aget-object v3, v3, v5

    invoke-virtual {v3}, LN0/e;->e()I

    :cond_16
    iput-object v13, v1, LN0/b;->c:LN0/h;

    if-nez v2, :cond_17

    iget-boolean v2, v1, LN0/b;->m:Z

    if-eqz v2, :cond_17

    iput-object v13, v1, LN0/b;->e:LN0/h;

    goto :goto_a

    :cond_17
    iput-object v8, v1, LN0/b;->e:LN0/h;

    :goto_a
    iget-boolean v2, v1, LN0/b;->o:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, LN0/b;->n:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, v1, LN0/b;->p:Z

    const/4 v2, 0x1

    goto :goto_c

    :cond_19
    move/from16 v26, v9

    move/from16 v27, v14

    move v2, v3

    :goto_c
    iput-boolean v2, v1, LN0/b;->q:Z

    if-eqz v11, :cond_1b

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    :cond_1a
    move-object/from16 v32, v15

    move/from16 v15, v26

    const/16 v18, 0x0

    goto/16 :goto_4c

    :cond_1b
    :goto_d
    iget-object v12, v1, LN0/b;->c:LN0/h;

    iget-object v13, v1, LN0/b;->b:LN0/h;

    iget-object v14, v1, LN0/b;->d:LN0/h;

    iget-object v2, v1, LN0/b;->e:LN0/h;

    iget v3, v1, LN0/b;->k:F

    iget-object v4, v0, LN0/h;->N:[LN0/g;

    aget-object v4, v4, p3

    sget-object v5, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x1

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    :goto_e
    if-nez p3, :cond_20

    iget v5, v2, LN0/h;->d0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1d

    const/16 v21, 0x1

    goto :goto_f

    :cond_1d
    const/16 v21, 0x0

    :goto_f
    if-ne v5, v6, :cond_1e

    move v7, v6

    :goto_10
    const/4 v9, 0x2

    goto :goto_11

    :cond_1e
    const/4 v7, 0x0

    goto :goto_10

    :goto_11
    if-ne v5, v9, :cond_1f

    move v5, v6

    goto :goto_12

    :cond_1f
    const/4 v5, 0x0

    :goto_12
    move/from16 v19, v7

    move-object v7, v8

    move/from16 v23, v21

    :goto_13
    const/4 v6, 0x0

    goto :goto_17

    :cond_20
    const/4 v6, 0x1

    const/4 v9, 0x2

    iget v5, v2, LN0/h;->e0:I

    if-nez v5, :cond_21

    move v7, v6

    goto :goto_14

    :cond_21
    const/4 v7, 0x0

    :goto_14
    if-ne v5, v6, :cond_22

    const/4 v6, 0x1

    goto :goto_15

    :cond_22
    const/4 v6, 0x0

    :goto_15
    if-ne v5, v9, :cond_23

    const/4 v5, 0x1

    goto :goto_16

    :cond_23
    const/4 v5, 0x0

    :goto_16
    move/from16 v19, v6

    move/from16 v23, v7

    move-object v7, v8

    goto :goto_13

    :goto_17
    iget-object v9, v0, LN0/h;->K:[LN0/e;

    move/from16 v25, v3

    if-nez v6, :cond_30

    iget-object v3, v7, LN0/h;->K:[LN0/e;

    aget-object v3, v3, v16

    if-eqz v5, :cond_24

    const/16 v29, 0x1

    goto :goto_18

    :cond_24
    const/16 v29, 0x4

    :goto_18
    invoke-virtual {v3}, LN0/e;->e()I

    move-result v30

    move/from16 v31, v6

    iget-object v6, v7, LN0/h;->N:[LN0/g;

    aget-object v11, v6, p3

    move-object/from16 v32, v15

    sget-object v15, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v11, v15, :cond_25

    iget-object v11, v7, LN0/h;->n:[I

    aget v11, v11, p3

    if-nez v11, :cond_25

    move-object/from16 v33, v2

    const/4 v11, 0x1

    goto :goto_19

    :cond_25
    move-object/from16 v33, v2

    const/4 v11, 0x0

    :goto_19
    iget-object v2, v3, LN0/e;->f:LN0/e;

    if-eqz v2, :cond_26

    if-eq v7, v8, :cond_26

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    add-int v30, v2, v30

    :cond_26
    move/from16 v2, v30

    if-eqz v5, :cond_27

    if-eq v7, v8, :cond_27

    if-eq v7, v13, :cond_27

    move-object/from16 v30, v8

    const/16 v29, 0x8

    goto :goto_1a

    :cond_27
    move-object/from16 v30, v8

    :goto_1a
    iget-object v8, v3, LN0/e;->f:LN0/e;

    if-eqz v8, :cond_2a

    if-ne v7, v13, :cond_28

    move-object/from16 v34, v13

    iget-object v13, v3, LN0/e;->i:LM0/i;

    iget-object v8, v8, LN0/e;->i:LM0/i;

    move-object/from16 v35, v1

    const/4 v1, 0x6

    invoke-virtual {v10, v13, v8, v2, v1}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_1b

    :cond_28
    move-object/from16 v35, v1

    move-object/from16 v34, v13

    iget-object v1, v3, LN0/e;->i:LM0/i;

    iget-object v8, v8, LN0/e;->i:LM0/i;

    const/16 v13, 0x8

    invoke-virtual {v10, v1, v8, v2, v13}, LM0/c;->f(LM0/i;LM0/i;II)V

    :goto_1b
    if-eqz v11, :cond_29

    if-nez v5, :cond_29

    const/4 v1, 0x5

    goto :goto_1c

    :cond_29
    move/from16 v1, v29

    :goto_1c
    iget-object v8, v3, LN0/e;->i:LM0/i;

    iget-object v3, v3, LN0/e;->f:LN0/e;

    iget-object v3, v3, LN0/e;->i:LM0/i;

    invoke-virtual {v10, v8, v3, v2, v1}, LM0/c;->e(LM0/i;LM0/i;II)V

    goto :goto_1d

    :cond_2a
    move-object/from16 v35, v1

    move-object/from16 v34, v13

    :goto_1d
    iget-object v1, v7, LN0/h;->K:[LN0/e;

    if-eqz v4, :cond_2c

    iget v2, v7, LN0/h;->b0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2b

    aget-object v2, v6, p3

    if-ne v2, v15, :cond_2b

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v1, v2

    iget-object v2, v2, LN0/e;->i:LM0/i;

    aget-object v3, v1, v16

    iget-object v3, v3, LN0/e;->i:LM0/i;

    const/4 v6, 0x0

    const/4 v8, 0x5

    invoke-virtual {v10, v2, v3, v6, v8}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_1e

    :cond_2b
    const/4 v6, 0x0

    :goto_1e
    aget-object v2, v1, v16

    iget-object v2, v2, LN0/e;->i:LM0/i;

    aget-object v3, v9, v16

    iget-object v3, v3, LN0/e;->i:LM0/i;

    const/16 v8, 0x8

    invoke-virtual {v10, v2, v3, v6, v8}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_2c
    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, LN0/e;->f:LN0/e;

    if-eqz v1, :cond_2d

    iget-object v1, v1, LN0/e;->d:LN0/h;

    iget-object v2, v1, LN0/h;->K:[LN0/e;

    aget-object v2, v2, v16

    iget-object v2, v2, LN0/e;->f:LN0/e;

    if-eqz v2, :cond_2d

    iget-object v2, v2, LN0/e;->d:LN0/h;

    if-eq v2, v7, :cond_2e

    :cond_2d
    move-object/from16 v1, v17

    :cond_2e
    if-eqz v1, :cond_2f

    move-object v7, v1

    move/from16 v6, v31

    goto :goto_1f

    :cond_2f
    const/4 v6, 0x1

    :goto_1f
    move-object/from16 v11, p2

    move/from16 v3, v25

    move-object/from16 v8, v30

    move-object/from16 v15, v32

    move-object/from16 v2, v33

    move-object/from16 v13, v34

    move-object/from16 v1, v35

    goto/16 :goto_17

    :cond_30
    move-object/from16 v35, v1

    move-object/from16 v33, v2

    move-object/from16 v30, v8

    move-object/from16 v34, v13

    move-object/from16 v32, v15

    if-eqz v14, :cond_33

    iget-object v1, v12, LN0/h;->K:[LN0/e;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, LN0/e;->f:LN0/e;

    if-eqz v1, :cond_33

    iget-object v1, v14, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v2

    iget-object v3, v14, LN0/h;->N:[LN0/g;

    aget-object v3, v3, p3

    sget-object v6, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v3, v6, :cond_31

    iget-object v3, v14, LN0/h;->n:[I

    aget v3, v3, p3

    if-nez v3, :cond_31

    if-nez v5, :cond_31

    iget-object v3, v1, LN0/e;->f:LN0/e;

    iget-object v6, v3, LN0/e;->d:LN0/h;

    if-ne v6, v0, :cond_31

    iget-object v6, v1, LN0/e;->i:LM0/i;

    iget-object v3, v3, LN0/e;->i:LM0/i;

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v7

    neg-int v7, v7

    const/4 v8, 0x5

    invoke-virtual {v10, v6, v3, v7, v8}, LM0/c;->e(LM0/i;LM0/i;II)V

    goto :goto_20

    :cond_31
    const/4 v8, 0x5

    if-eqz v5, :cond_32

    iget-object v3, v1, LN0/e;->f:LN0/e;

    iget-object v6, v3, LN0/e;->d:LN0/h;

    if-ne v6, v0, :cond_32

    iget-object v6, v1, LN0/e;->i:LM0/i;

    iget-object v3, v3, LN0/e;->i:LM0/i;

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v7

    neg-int v7, v7

    const/4 v11, 0x4

    invoke-virtual {v10, v6, v3, v7, v11}, LM0/c;->e(LM0/i;LM0/i;II)V

    :cond_32
    :goto_20
    iget-object v3, v1, LN0/e;->i:LM0/i;

    iget-object v6, v12, LN0/h;->K:[LN0/e;

    aget-object v2, v6, v2

    iget-object v2, v2, LN0/e;->f:LN0/e;

    iget-object v2, v2, LN0/e;->i:LM0/i;

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    neg-int v1, v1

    const/4 v6, 0x6

    invoke-virtual {v10, v3, v2, v1, v6}, LM0/c;->g(LM0/i;LM0/i;II)V

    goto :goto_21

    :cond_33
    const/4 v8, 0x5

    :goto_21
    if-eqz v4, :cond_34

    add-int/lit8 v1, v16, 0x1

    aget-object v2, v9, v1

    iget-object v2, v2, LN0/e;->i:LM0/i;

    iget-object v3, v12, LN0/h;->K:[LN0/e;

    aget-object v1, v3, v1

    iget-object v3, v1, LN0/e;->i:LM0/i;

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {v10, v2, v3, v1, v4}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_34
    move-object/from16 v1, v35

    iget-object v2, v1, LN0/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3e

    iget-boolean v6, v1, LN0/b;->n:Z

    if-eqz v6, :cond_35

    iget-boolean v6, v1, LN0/b;->p:Z

    if-nez v6, :cond_35

    iget v6, v1, LN0/b;->j:I

    int-to-float v6, v6

    goto :goto_22

    :cond_35
    move/from16 v6, v25

    :goto_22
    move-object/from16 v11, v17

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_23
    if-ge v7, v3, :cond_3e

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LN0/h;

    iget-object v15, v13, LN0/h;->f0:[F

    aget v15, v15, p3

    const/16 v20, 0x0

    cmpg-float v21, v15, v20

    iget-object v4, v13, LN0/h;->K:[LN0/e;

    if-gez v21, :cond_37

    iget-boolean v15, v1, LN0/b;->p:Z

    if-eqz v15, :cond_36

    add-int/lit8 v8, v16, 0x1

    aget-object v8, v4, v8

    iget-object v8, v8, LN0/e;->i:LM0/i;

    aget-object v4, v4, v16

    iget-object v4, v4, LN0/e;->i:LM0/i;

    const/4 v13, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v8, v4, v13, v15}, LM0/c;->e(LM0/i;LM0/i;II)V

    move/from16 v21, v15

    goto :goto_25

    :cond_36
    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x4

    goto :goto_24

    :cond_37
    const/16 v21, 0x4

    const/16 v20, 0x0

    :goto_24
    cmpl-float v28, v15, v20

    if-nez v28, :cond_38

    add-int/lit8 v8, v16, 0x1

    aget-object v8, v4, v8

    iget-object v8, v8, LN0/e;->i:LM0/i;

    aget-object v4, v4, v16

    iget-object v4, v4, LN0/e;->i:LM0/i;

    const/4 v13, 0x0

    const/16 v15, 0x8

    invoke-virtual {v10, v8, v4, v13, v15}, LM0/c;->e(LM0/i;LM0/i;II)V

    :goto_25
    move-object/from16 v31, v2

    move/from16 v35, v3

    move/from16 v28, v6

    move/from16 v18, v13

    const/16 v20, 0x0

    goto/16 :goto_2a

    :cond_38
    const/16 v18, 0x0

    if-eqz v11, :cond_3d

    iget-object v11, v11, LN0/h;->K:[LN0/e;

    aget-object v8, v11, v16

    iget-object v8, v8, LN0/e;->i:LM0/i;

    add-int/lit8 v31, v16, 0x1

    aget-object v11, v11, v31

    iget-object v11, v11, LN0/e;->i:LM0/i;

    aget-object v0, v4, v16

    iget-object v0, v0, LN0/e;->i:LM0/i;

    aget-object v4, v4, v31

    iget-object v4, v4, LN0/e;->i:LM0/i;

    move-object/from16 v31, v2

    invoke-virtual/range {p1 .. p1}, LM0/c;->l()LM0/b;

    move-result-object v2

    move/from16 v35, v3

    const/4 v3, 0x0

    iput v3, v2, LM0/b;->b:F

    cmpl-float v20, v6, v3

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v20, :cond_39

    cmpl-float v20, v9, v15

    if-nez v20, :cond_3a

    :cond_39
    move/from16 v28, v6

    const/16 v20, 0x0

    move v6, v3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_27

    :cond_3a
    const/16 v20, 0x0

    cmpl-float v36, v9, v20

    if-nez v36, :cond_3b

    iget-object v0, v2, LM0/b;->d:LM0/a;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v8, v4}, LM0/a;->g(LM0/i;F)V

    iget-object v0, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v0, v11, v3}, LM0/a;->g(LM0/i;F)V

    :goto_26
    move/from16 v28, v6

    goto :goto_28

    :cond_3b
    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v28, :cond_3c

    iget-object v8, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v8, v0, v3}, LM0/a;->g(LM0/i;F)V

    iget-object v0, v2, LM0/b;->d:LM0/a;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v4, v3}, LM0/a;->g(LM0/i;F)V

    goto :goto_26

    :cond_3c
    div-float/2addr v9, v6

    div-float v28, v15, v6

    div-float v9, v9, v28

    move/from16 v28, v6

    iget-object v6, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v6, v8, v3}, LM0/a;->g(LM0/i;F)V

    iget-object v3, v2, LM0/b;->d:LM0/a;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v11, v6}, LM0/a;->g(LM0/i;F)V

    iget-object v3, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v3, v4, v9}, LM0/a;->g(LM0/i;F)V

    iget-object v3, v2, LM0/b;->d:LM0/a;

    neg-float v4, v9

    invoke-virtual {v3, v0, v4}, LM0/a;->g(LM0/i;F)V

    goto :goto_28

    :goto_27
    iget-object v9, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v9, v8, v3}, LM0/a;->g(LM0/i;F)V

    iget-object v8, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v8, v11, v6}, LM0/a;->g(LM0/i;F)V

    iget-object v8, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v8, v4, v3}, LM0/a;->g(LM0/i;F)V

    iget-object v3, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v3, v0, v6}, LM0/a;->g(LM0/i;F)V

    :goto_28
    invoke-virtual {v10, v2}, LM0/c;->c(LM0/b;)V

    goto :goto_29

    :cond_3d
    move-object/from16 v31, v2

    move/from16 v35, v3

    move/from16 v28, v6

    const/16 v20, 0x0

    :goto_29
    move-object v11, v13

    move v9, v15

    :goto_2a
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v28

    move-object/from16 v2, v31

    move/from16 v3, v35

    const/4 v4, 0x1

    const/4 v8, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_23

    :cond_3e
    const/16 v18, 0x0

    const/16 v21, 0x4

    if-eqz v34, :cond_45

    move-object/from16 v0, v34

    if-eq v0, v14, :cond_3f

    if-eqz v5, :cond_40

    :cond_3f
    move-object/from16 v8, v30

    goto :goto_2c

    :cond_40
    move/from16 v15, v26

    move-object/from16 v8, v30

    :goto_2b
    const/4 v13, 0x2

    goto/16 :goto_31

    :goto_2c
    iget-object v1, v8, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v16

    iget-object v2, v12, LN0/h;->K:[LN0/e;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v1, v1, LN0/e;->f:LN0/e;

    if-eqz v1, :cond_41

    iget-object v1, v1, LN0/e;->i:LM0/i;

    move-object v4, v1

    goto :goto_2d

    :cond_41
    move-object/from16 v4, v17

    :goto_2d
    iget-object v1, v2, LN0/e;->f:LN0/e;

    if-eqz v1, :cond_42

    iget-object v1, v1, LN0/e;->i:LM0/i;

    move-object v6, v1

    goto :goto_2e

    :cond_42
    move-object/from16 v6, v17

    :goto_2e
    iget-object v1, v0, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v16

    iget-object v2, v14, LN0/h;->K:[LN0/e;

    aget-object v2, v2, v3

    if-eqz v4, :cond_44

    if-eqz v6, :cond_44

    if-nez p3, :cond_43

    move-object/from16 v3, v33

    iget v3, v3, LN0/h;->Y:F

    :goto_2f
    move v5, v3

    goto :goto_30

    :cond_43
    move-object/from16 v3, v33

    iget v3, v3, LN0/h;->Z:F

    goto :goto_2f

    :goto_30
    invoke-virtual {v1}, LN0/e;->e()I

    move-result v7

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v8

    iget-object v3, v1, LN0/e;->i:LM0/i;

    iget-object v9, v2, LN0/e;->i:LM0/i;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v7

    move-object v7, v9

    move/from16 v15, v26

    const/4 v13, 0x2

    move v9, v11

    invoke-virtual/range {v1 .. v9}, LM0/c;->b(LM0/i;LM0/i;IFLM0/i;LM0/i;II)V

    goto/16 :goto_49

    :cond_44
    move/from16 v15, v26

    const/4 v13, 0x2

    goto/16 :goto_49

    :cond_45
    move/from16 v15, v26

    move-object/from16 v8, v30

    move-object/from16 v0, v34

    goto :goto_2b

    :goto_31
    if-eqz v23, :cond_57

    if-eqz v0, :cond_57

    iget v2, v1, LN0/b;->j:I

    if-lez v2, :cond_46

    iget v1, v1, LN0/b;->i:I

    if-ne v1, v2, :cond_46

    const/16 v25, 0x1

    goto :goto_32

    :cond_46
    move/from16 v25, v18

    :goto_32
    move-object v9, v0

    move-object v11, v9

    :goto_33
    if-eqz v11, :cond_66

    iget-object v1, v11, LN0/h;->h0:[LN0/h;

    aget-object v1, v1, p3

    move-object v7, v1

    :goto_34
    if-eqz v7, :cond_47

    iget v1, v7, LN0/h;->b0:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_48

    iget-object v1, v7, LN0/h;->h0:[LN0/h;

    aget-object v7, v1, p3

    goto :goto_34

    :cond_47
    const/16 v6, 0x8

    :cond_48
    if-nez v7, :cond_4a

    if-ne v11, v14, :cond_49

    goto :goto_35

    :cond_49
    move-object v13, v7

    move-object/from16 v37, v8

    move-object/from16 v20, v9

    const/16 v28, 0x5

    goto/16 :goto_3d

    :cond_4a
    :goto_35
    iget-object v1, v11, LN0/h;->K:[LN0/e;

    aget-object v2, v1, v16

    iget-object v3, v2, LN0/e;->i:LM0/i;

    iget-object v4, v2, LN0/e;->f:LN0/e;

    if-eqz v4, :cond_4b

    iget-object v4, v4, LN0/e;->i:LM0/i;

    goto :goto_36

    :cond_4b
    move-object/from16 v4, v17

    :goto_36
    if-eq v9, v11, :cond_4c

    iget-object v4, v9, LN0/h;->K:[LN0/e;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, LN0/e;->i:LM0/i;

    goto :goto_37

    :cond_4c
    if-ne v11, v0, :cond_4e

    if-ne v9, v11, :cond_4e

    iget-object v4, v8, LN0/h;->K:[LN0/e;

    aget-object v4, v4, v16

    iget-object v4, v4, LN0/e;->f:LN0/e;

    if-eqz v4, :cond_4d

    iget-object v4, v4, LN0/e;->i:LM0/i;

    goto :goto_37

    :cond_4d
    move-object/from16 v4, v17

    :cond_4e
    :goto_37
    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    add-int/lit8 v5, v16, 0x1

    aget-object v20, v1, v5

    invoke-virtual/range {v20 .. v20}, LN0/e;->e()I

    move-result v20

    if-eqz v7, :cond_4f

    iget-object v6, v7, LN0/h;->K:[LN0/e;

    aget-object v6, v6, v16

    iget-object v13, v6, LN0/e;->i:LM0/i;

    aget-object v1, v1, v5

    iget-object v1, v1, LN0/e;->i:LM0/i;

    :goto_38
    move-object/from16 v21, v1

    goto :goto_3a

    :cond_4f
    iget-object v6, v12, LN0/h;->K:[LN0/e;

    aget-object v6, v6, v5

    iget-object v6, v6, LN0/e;->f:LN0/e;

    if-eqz v6, :cond_50

    iget-object v13, v6, LN0/e;->i:LM0/i;

    goto :goto_39

    :cond_50
    move-object/from16 v13, v17

    :goto_39
    aget-object v1, v1, v5

    iget-object v1, v1, LN0/e;->i:LM0/i;

    goto :goto_38

    :goto_3a
    if-eqz v6, :cond_51

    invoke-virtual {v6}, LN0/e;->e()I

    move-result v1

    add-int v20, v1, v20

    :cond_51
    if-eqz v9, :cond_52

    iget-object v1, v9, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v5

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    add-int/2addr v2, v1

    :cond_52
    if-eqz v3, :cond_49

    if-eqz v4, :cond_49

    if-eqz v13, :cond_49

    if-eqz v21, :cond_49

    if-ne v11, v0, :cond_53

    iget-object v1, v0, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v16

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    move v6, v1

    goto :goto_3b

    :cond_53
    move v6, v2

    :goto_3b
    if-ne v11, v14, :cond_54

    iget-object v1, v14, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v5

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    move/from16 v20, v1

    :cond_54
    if-eqz v25, :cond_55

    const/16 v26, 0x8

    goto :goto_3c

    :cond_55
    const/16 v26, 0x5

    :goto_3c
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    const/16 v28, 0x5

    move-object v3, v4

    move v4, v6

    const/16 v22, 0x8

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move-object/from16 v37, v8

    move/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v9, v26

    invoke-virtual/range {v1 .. v9}, LM0/c;->b(LM0/i;LM0/i;IFLM0/i;LM0/i;II)V

    :goto_3d
    iget v1, v11, LN0/h;->b0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_56

    move-object/from16 v20, v11

    :cond_56
    move-object v11, v13

    move-object/from16 v9, v20

    move-object/from16 v8, v37

    const/4 v13, 0x2

    goto/16 :goto_33

    :cond_57
    move-object/from16 v37, v8

    const/16 v9, 0x8

    if-eqz v19, :cond_66

    if-eqz v0, :cond_66

    iget v2, v1, LN0/b;->j:I

    if-lez v2, :cond_58

    iget v1, v1, LN0/b;->i:I

    if-ne v1, v2, :cond_58

    const/16 v25, 0x1

    goto :goto_3e

    :cond_58
    move/from16 v25, v18

    :goto_3e
    move-object v11, v0

    move-object v13, v11

    :goto_3f
    if-eqz v11, :cond_63

    iget-object v1, v11, LN0/h;->h0:[LN0/h;

    aget-object v1, v1, p3

    :goto_40
    if-eqz v1, :cond_59

    iget v2, v1, LN0/h;->b0:I

    if-ne v2, v9, :cond_59

    iget-object v1, v1, LN0/h;->h0:[LN0/h;

    aget-object v1, v1, p3

    goto :goto_40

    :cond_59
    if-eq v11, v0, :cond_61

    if-eq v11, v14, :cond_61

    if-eqz v1, :cond_61

    if-ne v1, v14, :cond_5a

    move-object/from16 v8, v17

    goto :goto_41

    :cond_5a
    move-object v8, v1

    :goto_41
    iget-object v1, v11, LN0/h;->K:[LN0/e;

    aget-object v2, v1, v16

    iget-object v3, v2, LN0/e;->i:LM0/i;

    iget-object v4, v13, LN0/h;->K:[LN0/e;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, LN0/e;->i:LM0/i;

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    aget-object v6, v1, v5

    invoke-virtual {v6}, LN0/e;->e()I

    move-result v6

    if-eqz v8, :cond_5c

    iget-object v1, v8, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v16

    iget-object v7, v1, LN0/e;->i:LM0/i;

    iget-object v9, v1, LN0/e;->f:LN0/e;

    if-eqz v9, :cond_5b

    iget-object v9, v9, LN0/e;->i:LM0/i;

    goto :goto_43

    :cond_5b
    move-object/from16 v9, v17

    goto :goto_43

    :cond_5c
    iget-object v7, v14, LN0/h;->K:[LN0/e;

    aget-object v7, v7, v16

    if-eqz v7, :cond_5d

    iget-object v9, v7, LN0/e;->i:LM0/i;

    goto :goto_42

    :cond_5d
    move-object/from16 v9, v17

    :goto_42
    aget-object v1, v1, v5

    iget-object v1, v1, LN0/e;->i:LM0/i;

    move-object/from16 v38, v9

    move-object v9, v1

    move-object v1, v7

    move-object/from16 v7, v38

    :goto_43
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    add-int/2addr v1, v6

    move/from16 v20, v1

    goto :goto_44

    :cond_5e
    move/from16 v20, v6

    :goto_44
    iget-object v1, v13, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v5

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    add-int v5, v1, v2

    if-eqz v25, :cond_5f

    const/16 v22, 0x8

    goto :goto_45

    :cond_5f
    move/from16 v22, v21

    :goto_45
    if-eqz v3, :cond_60

    if-eqz v4, :cond_60

    if-eqz v7, :cond_60

    if-eqz v9, :cond_60

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v26, v8

    move/from16 v8, v20

    move-object/from16 v20, v13

    const/16 v13, 0x8

    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, LM0/c;->b(LM0/i;LM0/i;IFLM0/i;LM0/i;II)V

    goto :goto_46

    :cond_60
    move-object/from16 v26, v8

    move-object/from16 v20, v13

    const/16 v13, 0x8

    :goto_46
    move-object/from16 v1, v26

    goto :goto_47

    :cond_61
    move-object/from16 v20, v13

    move v13, v9

    :goto_47
    iget v2, v11, LN0/h;->b0:I

    if-eq v2, v13, :cond_62

    move-object/from16 v20, v11

    :cond_62
    move-object v11, v1

    move v9, v13

    move-object/from16 v13, v20

    goto/16 :goto_3f

    :cond_63
    iget-object v1, v0, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v16

    move-object/from16 v2, v37

    iget-object v2, v2, LN0/h;->K:[LN0/e;

    aget-object v2, v2, v16

    iget-object v2, v2, LN0/e;->f:LN0/e;

    iget-object v3, v14, LN0/h;->K:[LN0/e;

    add-int/lit8 v4, v16, 0x1

    aget-object v11, v3, v4

    iget-object v3, v12, LN0/h;->K:[LN0/e;

    aget-object v3, v3, v4

    iget-object v13, v3, LN0/e;->f:LN0/e;

    const/4 v9, 0x5

    if-eqz v2, :cond_64

    if-eq v0, v14, :cond_65

    iget-object v3, v1, LN0/e;->i:LM0/i;

    iget-object v2, v2, LN0/e;->i:LM0/i;

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v1

    invoke-virtual {v10, v3, v2, v1, v9}, LM0/c;->e(LM0/i;LM0/i;II)V

    :cond_64
    move/from16 v20, v9

    goto :goto_48

    :cond_65
    if-eqz v13, :cond_64

    iget-object v3, v1, LN0/e;->i:LM0/i;

    iget-object v4, v2, LN0/e;->i:LM0/i;

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v5

    iget-object v6, v11, LN0/e;->i:LM0/i;

    iget-object v7, v13, LN0/e;->i:LM0/i;

    invoke-virtual {v11}, LN0/e;->e()I

    move-result v8

    const/high16 v20, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move/from16 v5, v20

    move/from16 v20, v9

    invoke-virtual/range {v1 .. v9}, LM0/c;->b(LM0/i;LM0/i;IFLM0/i;LM0/i;II)V

    :goto_48
    if-eqz v13, :cond_66

    if-eq v0, v14, :cond_66

    iget-object v1, v11, LN0/e;->i:LM0/i;

    iget-object v2, v13, LN0/e;->i:LM0/i;

    invoke-virtual {v11}, LN0/e;->e()I

    move-result v3

    neg-int v3, v3

    move/from16 v4, v20

    invoke-virtual {v10, v1, v2, v3, v4}, LM0/c;->e(LM0/i;LM0/i;II)V

    :cond_66
    :goto_49
    if-nez v23, :cond_67

    if-eqz v19, :cond_6d

    :cond_67
    if-eqz v0, :cond_6d

    if-eq v0, v14, :cond_6d

    iget-object v1, v0, LN0/h;->K:[LN0/e;

    aget-object v2, v1, v16

    iget-object v3, v14, LN0/h;->K:[LN0/e;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v5, v2, LN0/e;->f:LN0/e;

    if-eqz v5, :cond_68

    iget-object v5, v5, LN0/e;->i:LM0/i;

    goto :goto_4a

    :cond_68
    move-object/from16 v5, v17

    :goto_4a
    iget-object v6, v3, LN0/e;->f:LN0/e;

    if-eqz v6, :cond_69

    iget-object v6, v6, LN0/e;->i:LM0/i;

    goto :goto_4b

    :cond_69
    move-object/from16 v6, v17

    :goto_4b
    if-eq v12, v14, :cond_6b

    iget-object v6, v12, LN0/h;->K:[LN0/e;

    aget-object v6, v6, v4

    iget-object v6, v6, LN0/e;->f:LN0/e;

    if-eqz v6, :cond_6a

    iget-object v6, v6, LN0/e;->i:LM0/i;

    move-object/from16 v17, v6

    :cond_6a
    move-object/from16 v6, v17

    :cond_6b
    if-ne v0, v14, :cond_6c

    aget-object v3, v1, v4

    :cond_6c
    if-eqz v5, :cond_6d

    if-eqz v6, :cond_6d

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v0

    iget-object v1, v14, LN0/h;->K:[LN0/e;

    aget-object v1, v1, v4

    invoke-virtual {v1}, LN0/e;->e()I

    move-result v8

    iget-object v2, v2, LN0/e;->i:LM0/i;

    iget-object v7, v3, LN0/e;->i:LM0/i;

    const/4 v9, 0x5

    const/high16 v11, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v9}, LM0/c;->b(LM0/i;LM0/i;IFLM0/i;LM0/i;II)V

    :cond_6d
    :goto_4c
    add-int/lit8 v9, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v27

    move-object/from16 v15, v32

    goto/16 :goto_1

    :cond_6e
    return-void
.end method

.method public static b(LN0/i;LM0/c;LN0/h;)V
    .locals 8

    const/4 v0, -0x1

    iput v0, p2, LN0/h;->j:I

    iput v0, p2, LN0/h;->k:I

    iget-object v0, p0, LN0/h;->N:[LN0/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, LN0/g;->WRAP_CONTENT:LN0/g;

    const/4 v3, 0x2

    iget-object v4, p2, LN0/h;->N:[LN0/g;

    if-eq v0, v2, :cond_0

    aget-object v0, v4, v1

    sget-object v1, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, LN0/h;->C:LN0/e;

    iget v1, v0, LN0/e;->g:I

    invoke-virtual {p0}, LN0/h;->n()I

    move-result v5

    iget-object v6, p2, LN0/h;->E:LN0/e;

    iget v7, v6, LN0/e;->g:I

    sub-int/2addr v5, v7

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v7

    iput-object v7, v0, LN0/e;->i:LM0/i;

    invoke-virtual {p1, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v7

    iput-object v7, v6, LN0/e;->i:LM0/i;

    iget-object v0, v0, LN0/e;->i:LM0/i;

    invoke-virtual {p1, v0, v1}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v6, LN0/e;->i:LM0/i;

    invoke-virtual {p1, v0, v5}, LM0/c;->d(LM0/i;I)V

    iput v3, p2, LN0/h;->j:I

    iput v1, p2, LN0/h;->T:I

    sub-int/2addr v5, v1

    iput v5, p2, LN0/h;->P:I

    iget v0, p2, LN0/h;->W:I

    if-ge v5, v0, :cond_0

    iput v0, p2, LN0/h;->P:I

    :cond_0
    iget-object v0, p0, LN0/h;->N:[LN0/g;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eq v0, v2, :cond_3

    aget-object v0, v4, v1

    sget-object v1, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne v0, v1, :cond_3

    iget-object v0, p2, LN0/h;->D:LN0/e;

    iget v1, v0, LN0/e;->g:I

    invoke-virtual {p0}, LN0/h;->k()I

    move-result p0

    iget-object v2, p2, LN0/h;->F:LN0/e;

    iget v4, v2, LN0/e;->g:I

    sub-int/2addr p0, v4

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v4

    iput-object v4, v0, LN0/e;->i:LM0/i;

    invoke-virtual {p1, v2}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v4

    iput-object v4, v2, LN0/e;->i:LM0/i;

    iget-object v0, v0, LN0/e;->i:LM0/i;

    invoke-virtual {p1, v0, v1}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v2, LN0/e;->i:LM0/i;

    invoke-virtual {p1, v0, p0}, LM0/c;->d(LM0/i;I)V

    iget v0, p2, LN0/h;->V:I

    if-gtz v0, :cond_1

    iget v0, p2, LN0/h;->b0:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p2, LN0/h;->G:LN0/e;

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v2

    iput-object v2, v0, LN0/e;->i:LM0/i;

    iget-object v0, v0, LN0/e;->i:LM0/i;

    iget v2, p2, LN0/h;->V:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, LM0/c;->d(LM0/i;I)V

    :cond_2
    iput v3, p2, LN0/h;->k:I

    iput v1, p2, LN0/h;->U:I

    sub-int/2addr p0, v1

    iput p0, p2, LN0/h;->Q:I

    iget p1, p2, LN0/h;->X:I

    if-ge p0, p1, :cond_3

    iput p1, p2, LN0/h;->Q:I

    :cond_3
    return-void
.end method

.method public static final c(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
