.class public abstract LG5/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LR1/r;IILm0/c;Lm0/m;ZZLf2/a;La0/m;I)V
    .locals 51

    move-object/from16 v1, p0

    move/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v0, 0x0

    const/4 v12, 0x1

    move-object/from16 v13, p8

    check-cast v13, La0/q;

    const v2, 0x64dcb7a2

    invoke-virtual {v13, v2}, La0/q;->S(I)La0/q;

    sget-object v2, LR1/d;->d:La0/L0;

    invoke-virtual {v13, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM1/b;

    iget v2, v2, LM1/b;->a:I

    if-le v10, v12, :cond_0

    add-int/lit8 v3, v10, -0x1

    move/from16 v14, p1

    if-ge v14, v3, :cond_1

    move v15, v12

    goto :goto_0

    :cond_0
    move/from16 v14, p1

    :cond_1
    move v15, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, LR1/r;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<this>"

    invoke-static {v11, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    new-instance v4, La2/a;

    invoke-direct {v4, v3, v0}, La2/a;-><init>(Ljava/lang/String;I)V

    sget-object v3, LC0/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    invoke-direct {v3, v4, v0}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lsb/k;Z)V

    invoke-interface {v11, v3}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v11

    :goto_1
    sget-object v4, Landroidx/compose/ui/platform/h;->a:La0/L0;

    invoke-virtual {v13, v4}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    sget-object v6, LR1/d;->b:La0/L0;

    invoke-virtual {v13, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LM1/a;

    iget v7, v7, LM1/a;->a:I

    invoke-static {v7, v12}, LM1/a;->a(II)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f071164

    invoke-static {v5, v7}, LG5/O3;->b(Landroid/content/Context;I)F

    goto :goto_2

    :cond_3
    sget v5, LW1/a;->a:F

    :goto_2
    invoke-virtual {v13, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM1/a;

    iget v5, v5, LM1/a;->a:I

    const v5, 0x54881902

    invoke-virtual {v13, v5}, La0/q;->R(I)V

    const v5, 0x422bc588

    invoke-virtual {v13, v5}, La0/q;->R(I)V

    invoke-virtual {v13, v4}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, LR1/r;->getSubText()LR1/y;

    move-result-object v4

    if-eqz v4, :cond_4

    const v4, 0x7f071151

    goto :goto_3

    :cond_4
    const v4, 0x7f071150

    :goto_3
    invoke-static {v9, v4}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, LR1/r;->getMainText()LR1/y;

    move-result-object v8

    iget v5, v8, LR1/y;->n:I

    invoke-static {v5, v0}, LG5/E;->b(II)Z

    move-result v5

    sget-object v6, Lm0/a;->e:Lm0/c;

    sget-object v7, Lm0/a;->a:Lm0/d;

    iget-object v12, v8, LR1/x;->c:Lf2/a;

    move-object/from16 p8, v8

    const v0, -0x4ee9b9da

    if-nez v5, :cond_29

    const v5, 0x495c8d38    # 903379.5f

    invoke-virtual {v13, v5}, La0/q;->R(I)V

    const/16 v5, 0x8

    invoke-static {v2, v5}, LM1/b;->a(II)I

    move-result v2

    if-ltz v2, :cond_5

    const/16 v21, 0x1

    goto :goto_4

    :cond_5
    const/16 v21, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, LR1/r;->getLeadingContentData()LR1/q;

    move-result-object v2

    if-eqz v2, :cond_6

    const/16 v22, 0x1

    goto :goto_5

    :cond_6
    const/16 v22, 0x0

    :goto_5
    sget-object v29, Lm0/j;->a:Lm0/j;

    invoke-static {v4}, LU/z;->d(F)Lm0/m;

    move-result-object v2

    invoke-static {v2}, LU/z;->f(Lm0/m;)Lm0/m;

    move-result-object v2

    const v4, -0x1cd0f17e

    invoke-virtual {v13, v4}, La0/q;->R(I)V

    sget-object v23, LU/e;->a:LU/a;

    invoke-static {v13}, LU/k;->a(La0/m;)Lz0/x;

    move-result-object v4

    invoke-virtual {v13, v0}, La0/q;->R(I)V

    sget-object v0, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {v13, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v5, v23

    check-cast v5, LH0/b;

    sget-object v8, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v13, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v11, v23

    check-cast v11, LH0/k;

    sget-object v14, Landroidx/compose/ui/platform/k;->c:La0/L0;

    invoke-virtual {v13, v14}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v31, v12

    move-object/from16 v12, v23

    check-cast v12, Landroidx/compose/ui/platform/q;

    sget-object v23, LB0/h;->K:LB0/g;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LB0/g;->b:LB0/s;

    invoke-static {v2}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v2

    invoke-virtual {v13}, La0/q;->U()V

    move-object/from16 v32, v3

    iget-boolean v3, v13, La0/q;->O:Z

    if-eqz v3, :cond_7

    invoke-virtual {v13, v1}, La0/q;->k(Lsb/a;)V

    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v13}, La0/q;->d0()V

    goto :goto_6

    :goto_7
    iput-boolean v3, v13, La0/q;->x:Z

    sget-object v3, LB0/g;->f:LB0/f;

    invoke-static {v13, v4, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v4, LB0/g;->d:LB0/f;

    invoke-static {v13, v5, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v5, LB0/g;->g:LB0/f;

    invoke-static {v13, v11, v5}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v11, LB0/g;->h:LB0/f;

    invoke-static {v13, v12, v11}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v13}, La0/q;->o()V

    new-instance v12, La0/u0;

    invoke-direct {v12, v13}, La0/u0;-><init>(La0/m;)V

    move-object/from16 v33, v6

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v12, v13, v6}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7ab4aae9

    invoke-virtual {v13, v2}, La0/q;->R(I)V

    if-eqz p5, :cond_a

    if-eqz v21, :cond_9

    if-eqz v22, :cond_8

    const/16 v2, 0xe

    int-to-float v2, v2

    :goto_8
    move/from16 v24, v2

    goto :goto_9

    :cond_8
    const v2, 0x7f07115b

    invoke-static {v9, v2}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v2

    goto :goto_8

    :cond_9
    sget v2, LW1/b;->b:F

    goto :goto_8

    :cond_a
    if-eqz v22, :cond_b

    const/4 v2, 0x0

    int-to-float v6, v2

    move/from16 v24, v6

    goto :goto_9

    :cond_b
    sget v2, LW1/a;->c:F

    goto :goto_8

    :goto_9
    if-eqz p6, :cond_d

    if-eqz v21, :cond_c

    sget v2, LW1/b;->a:F

    :goto_a
    move/from16 v26, v2

    goto :goto_b

    :cond_c
    sget v2, LW1/b;->b:F

    goto :goto_a

    :cond_d
    sget v2, LW1/a;->c:F

    goto :goto_a

    :goto_b
    if-eqz v15, :cond_e

    if-nez v21, :cond_e

    const/4 v2, 0x2

    if-ne v10, v2, :cond_e

    int-to-float v2, v2

    move/from16 v27, v2

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    int-to-float v6, v2

    move/from16 v27, v6

    :goto_c
    const/16 v25, 0x0

    const/16 v28, 0x2

    move-object/from16 v23, v29

    invoke-static/range {v23 .. v28}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v2

    const v12, 0x2bb5b5d7

    invoke-virtual {v13, v12}, La0/q;->R(I)V

    invoke-static {v7, v13}, LU/i;->a(Lm0/d;La0/m;)Lz0/x;

    move-result-object v6

    const v12, -0x4ee9b9da

    invoke-virtual {v13, v12}, La0/q;->R(I)V

    invoke-virtual {v13, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LH0/b;

    invoke-virtual {v13, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v23, v7

    move-object/from16 v7, v20

    check-cast v7, LH0/k;

    invoke-virtual {v13, v14}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v20

    move/from16 v24, v15

    move-object/from16 v15, v20

    check-cast v15, Landroidx/compose/ui/platform/q;

    invoke-static {v2}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v2

    invoke-virtual {v13}, La0/q;->U()V

    move-object/from16 v20, v9

    iget-boolean v9, v13, La0/q;->O:Z

    if-eqz v9, :cond_f

    invoke-virtual {v13, v1}, La0/q;->k(Lsb/a;)V

    :goto_d
    const/4 v9, 0x0

    goto :goto_e

    :cond_f
    invoke-virtual {v13}, La0/q;->d0()V

    goto :goto_d

    :goto_e
    iput-boolean v9, v13, La0/q;->x:Z

    invoke-static {v13, v6, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v12, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v7, v5}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v15, v11}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v13}, La0/q;->o()V

    new-instance v6, La0/u0;

    invoke-direct {v6, v13}, La0/u0;-><init>(La0/m;)V

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v6, v13, v9}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7ab4aae9

    invoke-virtual {v13, v2}, La0/q;->R(I)V

    const v2, 0x2952b718

    invoke-virtual {v13, v2}, La0/q;->R(I)V

    move-object/from16 v2, v33

    invoke-static {v2, v13}, LU/x;->a(Lm0/c;La0/m;)Lz0/x;

    move-result-object v2

    const v6, -0x4ee9b9da

    invoke-virtual {v13, v6}, La0/q;->R(I)V

    invoke-virtual {v13, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LH0/b;

    invoke-virtual {v13, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH0/k;

    invoke-virtual {v13, v14}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/platform/q;

    invoke-static/range {v32 .. v32}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v12

    invoke-virtual {v13}, La0/q;->U()V

    iget-boolean v15, v13, La0/q;->O:Z

    if-eqz v15, :cond_10

    invoke-virtual {v13, v1}, La0/q;->k(Lsb/a;)V

    :goto_f
    const/4 v15, 0x0

    goto :goto_10

    :cond_10
    invoke-virtual {v13}, La0/q;->d0()V

    goto :goto_f

    :goto_10
    iput-boolean v15, v13, La0/q;->x:Z

    invoke-static {v13, v2, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v6, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v7, v5}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v9, v11}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v13}, La0/q;->o()V

    new-instance v2, La0/u0;

    invoke-direct {v2, v13}, La0/u0;-><init>(La0/m;)V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v2, v13, v7}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v9, 0x7ab4aae9

    invoke-virtual {v13, v9}, La0/q;->R(I)V

    const v2, -0x495f59c2

    invoke-virtual {v13, v2}, La0/q;->R(I)V

    if-eqz v22, :cond_18

    if-eqz v21, :cond_11

    sget v2, LW1/a;->d:F

    goto :goto_11

    :cond_11
    sget v2, LW1/a;->e:F

    :goto_11
    invoke-virtual/range {p0 .. p0}, LR1/r;->getLeadingContentData()LR1/q;

    const v6, -0x495f574a

    invoke-virtual {v13, v6}, La0/q;->R(I)V

    invoke-virtual/range {p0 .. p0}, LR1/r;->getLeadingContentData()LR1/q;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-object v6, v6, LR1/q;->a:LR1/p;

    goto :goto_12

    :cond_12
    const/4 v6, 0x0

    :goto_12
    if-nez v6, :cond_13

    move-object/from16 v12, p8

    move-object v9, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v37, v8

    move-object/from16 v36, v23

    const/4 v2, 0x0

    const/16 v10, 0x8

    goto/16 :goto_15

    :cond_13
    const v7, -0x5c82cd21

    invoke-virtual {v13, v7}, La0/q;->R(I)V

    new-instance v7, LU/B;

    invoke-direct {v7, v2, v2, v2, v2}, LU/B;-><init>(FFFF)V

    sget-object v2, Lx1/k;->e:La0/L0;

    invoke-virtual {v13, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ1/b;

    iget-object v2, v2, LJ1/b;->s:Lf2/a;

    iget-object v12, v6, LR1/p;->f:Lf2/a;

    sget-object v15, LS1/a;->b:Ljava/util/List;

    if-nez v12, :cond_14

    goto :goto_13

    :cond_14
    move-object v2, v12

    :goto_13
    invoke-static {v2, v13}, LG5/M3;->b(Lf2/a;La0/m;)J

    move-result-wide v9

    sget v2, LW1/a;->g:F

    sget v12, LY/c;->a:I

    new-instance v12, LY/a;

    invoke-direct {v12, v2}, LY/a;-><init>(F)V

    new-instance v2, LY/b;

    invoke-direct {v2, v12, v12, v12, v12}, LY/b;-><init>(LY/a;LY/a;LY/a;LY/a;)V

    invoke-static {v7, v9, v10, v2}, LR/n;->a(Lm0/m;JLs0/g;)Lm0/m;

    move-result-object v7

    iget-object v2, v6, LR1/p;->d:LR1/o;

    sget-object v9, LR1/o;->AppIcon:LR1/o;

    if-eq v2, v9, :cond_15

    const/4 v9, 0x1

    goto :goto_14

    :cond_15
    const/4 v9, 0x0

    :goto_14
    const/4 v10, 0x0

    const/16 v12, 0x8

    const/4 v15, 0x4

    move-object v2, v6

    move-object v6, v3

    move-object v3, v7

    move-object/from16 v34, v4

    const v7, -0x1cd0f17e

    move-object v4, v10

    move-object/from16 v35, v5

    const/16 v10, 0x8

    move v5, v9

    move-object v9, v6

    move-object v6, v13

    move-object/from16 v36, v23

    move v7, v12

    move-object/from16 v12, p8

    move-object/from16 v37, v8

    move v8, v15

    invoke-static/range {v2 .. v8}, LG5/B2;->a(LR1/p;Lm0/m;Lz0/g;ZLa0/m;II)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    :goto_15
    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    if-eqz v21, :cond_16

    int-to-float v2, v10

    move/from16 v10, p2

    goto :goto_16

    :cond_16
    move/from16 v10, p2

    const/4 v3, 0x3

    if-ge v10, v3, :cond_17

    const/4 v2, 0x4

    int-to-float v2, v2

    goto :goto_16

    :cond_17
    int-to-float v2, v3

    :goto_16
    invoke-static {v2}, LU/z;->e(F)Lm0/m;

    move-result-object v2

    invoke-static {v13, v2}, LG5/A2;->a(La0/m;Lm0/m;)V

    :goto_17
    const/4 v2, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v12, p8

    move-object v9, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v37, v8

    move-object/from16 v36, v23

    goto :goto_17

    :goto_18
    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    move-object v15, v1

    move-object/from16 v1, p0

    instance-of v3, v1, LR1/e;

    if-eqz v3, :cond_19

    const v3, -0x495f4cd4

    invoke-virtual {v13, v3}, La0/q;->R(I)V

    move-object v3, v1

    check-cast v3, LR1/e;

    invoke-virtual {v3, v3, v13, v2}, LR1/e;->CustomContent(LR1/e;La0/m;I)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    move-object v1, v9

    move-object/from16 v10, v20

    move-object/from16 v46, v34

    move-object/from16 v12, v35

    move-object/from16 v45, v37

    const/4 v3, 0x1

    goto/16 :goto_23

    :cond_19
    const v3, -0x495f4c98

    invoke-virtual {v13, v3}, La0/q;->R(I)V

    invoke-static {}, LU/y;->a()Lm0/m;

    move-result-object v3

    invoke-static {v3}, LU/z;->f(Lm0/m;)Lm0/m;

    move-result-object v38

    if-eqz v21, :cond_1a

    const v3, 0x7f07115c

    move-object/from16 v8, v20

    invoke-static {v8, v3}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v3

    :goto_19
    move/from16 v40, v3

    goto :goto_1a

    :cond_1a
    move-object/from16 v8, v20

    int-to-float v3, v2

    goto :goto_19

    :goto_1a
    if-eqz v21, :cond_1c

    invoke-virtual/range {p0 .. p0}, LR1/r;->getSubText()LR1/y;

    move-result-object v3

    if-eqz v3, :cond_1b

    const v3, 0x7f071157

    invoke-static {v8, v3}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v3

    :goto_1b
    move/from16 v42, v3

    goto :goto_1c

    :cond_1b
    const v3, 0x7f071156

    invoke-static {v8, v3}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v3

    goto :goto_1b

    :cond_1c
    int-to-float v3, v2

    goto :goto_1b

    :goto_1c
    const/16 v41, 0x0

    const/16 v43, 0x5

    const/16 v39, 0x0

    invoke-static/range {v38 .. v43}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v2

    const v3, -0x1cd0f17e

    invoke-virtual {v13, v3}, La0/q;->R(I)V

    invoke-static {v13}, LU/k;->a(La0/m;)Lz0/x;

    move-result-object v3

    const v4, -0x4ee9b9da

    invoke-virtual {v13, v4}, La0/q;->R(I)V

    invoke-virtual {v13, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH0/b;

    move-object/from16 v7, v37

    invoke-virtual {v13, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH0/k;

    invoke-virtual {v13, v14}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/platform/q;

    invoke-static {v2}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v2

    invoke-virtual {v13}, La0/q;->U()V

    move-object/from16 v37, v7

    iget-boolean v7, v13, La0/q;->O:Z

    if-eqz v7, :cond_1d

    invoke-virtual {v13, v15}, La0/q;->k(Lsb/a;)V

    :goto_1d
    const/4 v7, 0x0

    goto :goto_1e

    :cond_1d
    invoke-virtual {v13}, La0/q;->d0()V

    goto :goto_1d

    :goto_1e
    iput-boolean v7, v13, La0/q;->x:Z

    invoke-static {v13, v3, v9}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    move-object/from16 v7, v34

    invoke-static {v13, v4, v7}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    move-object/from16 v4, v35

    invoke-static {v13, v5, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v6, v11}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v13}, La0/q;->o()V

    new-instance v3, La0/u0;

    invoke-direct {v3, v13}, La0/u0;-><init>(La0/m;)V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v13, v6}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x7ab4aae9

    invoke-virtual {v13, v6}, La0/q;->R(I)V

    sget-object v5, Lx1/k;->e:La0/L0;

    invoke-virtual {v13, v5}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ1/b;

    iget-object v2, v2, LJ1/b;->r:Lf2/a;

    sget-object v3, LS1/a;->b:Ljava/util/List;

    if-nez v31, :cond_1e

    move-object/from16 v31, v2

    :cond_1e
    const/16 v17, 0x230

    const/16 v18, 0x8

    const/4 v3, 0x3

    const/16 v19, 0x0

    move-object v2, v12

    move-object v12, v4

    move-object/from16 v4, v31

    move-object/from16 v44, v5

    move-object/from16 v5, v19

    move/from16 v6, p2

    move-object/from16 v46, v7

    move-object/from16 v45, v37

    move-object v7, v13

    move-object/from16 v19, v8

    move/from16 v8, v17

    move-object v1, v9

    move-object/from16 v10, v19

    move/from16 v9, v18

    invoke-static/range {v2 .. v9}, LG5/q3;->c(LR1/y;ILf2/a;Lm0/m;ILa0/m;II)V

    invoke-virtual/range {p0 .. p0}, LR1/r;->getSubText()LR1/y;

    move-result-object v2

    const v3, -0x495f405a

    invoke-virtual {v13, v3}, La0/q;->R(I)V

    if-nez v2, :cond_1f

    :goto_1f
    const/4 v2, 0x0

    goto :goto_22

    :cond_1f
    if-eqz v22, :cond_20

    const-wide v2, 0x3fe999999999999aL    # 0.8

    :goto_20
    double-to-float v2, v2

    move v7, v2

    goto :goto_21

    :cond_20
    const-wide v2, 0x3fe6b851eb851eb8L    # 0.71

    goto :goto_20

    :goto_21
    new-instance v2, LU/B;

    const/4 v6, 0x0

    const/4 v8, 0x5

    const/4 v4, 0x0

    move-object v3, v2

    move v5, v7

    invoke-direct/range {v3 .. v8}, LU/B;-><init>(FFFFI)V

    invoke-static {v13, v2}, LG5/A2;->a(La0/m;Lm0/m;)V

    invoke-virtual/range {p0 .. p0}, LR1/r;->getSubText()LR1/y;

    move-result-object v2

    move-object/from16 v3, v44

    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ1/b;

    iget-object v3, v3, LJ1/b;->v:Lf2/a;

    invoke-virtual/range {p0 .. p0}, LR1/r;->getSubText()LR1/y;

    move-result-object v4

    iget-object v4, v4, LR1/x;->c:Lf2/a;

    if-nez v4, :cond_21

    move-object v4, v3

    :cond_21
    const/16 v8, 0x230

    const/16 v9, 0x18

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v13

    invoke-static/range {v2 .. v9}, LG5/q3;->c(LR1/y;ILf2/a;Lm0/m;ILa0/m;II)V

    goto :goto_1f

    :goto_22
    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    :goto_23
    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    invoke-virtual {v13, v3}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    invoke-virtual {v13, v3}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    invoke-virtual {v13, v2}, La0/q;->p(Z)V

    const v2, 0x495cb51b

    invoke-virtual {v13, v2}, La0/q;->R(I)V

    if-eqz v21, :cond_28

    if-eqz v24, :cond_28

    const v2, 0x7f07114f

    invoke-static {v10, v2}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v2

    if-eqz p5, :cond_23

    if-eqz p6, :cond_23

    if-eqz v22, :cond_22

    :goto_24
    move/from16 v24, v2

    goto :goto_25

    :cond_22
    sget v2, LW1/a;->a:F

    goto :goto_24

    :goto_25
    sget v26, LW1/a;->a:F

    const/16 v27, 0x0

    const/16 v28, 0xa

    const/16 v25, 0x0

    move-object/from16 v23, v29

    invoke-static/range {v23 .. v28}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v29

    goto :goto_28

    :cond_23
    if-eqz p5, :cond_25

    if-eqz v22, :cond_24

    :goto_26
    move/from16 v24, v2

    goto :goto_27

    :cond_24
    sget v2, LW1/a;->a:F

    goto :goto_26

    :goto_27
    const/16 v25, 0x0

    const/16 v28, 0xe

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v29

    invoke-static/range {v23 .. v28}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v29

    goto :goto_28

    :cond_25
    if-eqz p6, :cond_26

    sget v26, LW1/a;->a:F

    const/16 v24, 0x0

    const/16 v28, 0xb

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v29

    invoke-static/range {v23 .. v28}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v29

    :cond_26
    :goto_28
    invoke-static/range {v29 .. v29}, LU/z;->c(Lm0/m;)Lm0/m;

    move-result-object v2

    invoke-static {v2}, LU/z;->f(Lm0/m;)Lm0/m;

    move-result-object v2

    const v10, 0x2bb5b5d7

    invoke-virtual {v13, v10}, La0/q;->R(I)V

    move-object/from16 v5, v36

    invoke-static {v5, v13}, LU/i;->a(Lm0/d;La0/m;)Lz0/x;

    move-result-object v3

    const v4, -0x4ee9b9da

    invoke-virtual {v13, v4}, La0/q;->R(I)V

    invoke-virtual {v13, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH0/b;

    move-object/from16 v4, v45

    invoke-virtual {v13, v4}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH0/k;

    invoke-virtual {v13, v14}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/q;

    invoke-static {v2}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v2

    invoke-virtual {v13}, La0/q;->U()V

    iget-boolean v6, v13, La0/q;->O:Z

    if-eqz v6, :cond_27

    invoke-virtual {v13, v15}, La0/q;->k(Lsb/a;)V

    :goto_29
    const/4 v6, 0x0

    goto :goto_2a

    :cond_27
    invoke-virtual {v13}, La0/q;->d0()V

    goto :goto_29

    :goto_2a
    iput-boolean v6, v13, La0/q;->x:Z

    invoke-static {v13, v3, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    move-object/from16 v1, v46

    invoke-static {v13, v0, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v4, v12}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v5, v11}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v13}, La0/q;->o()V

    new-instance v0, La0/u0;

    invoke-direct {v0, v13}, La0/u0;-><init>(La0/m;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v13, v3}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    invoke-virtual {v13, v0}, La0/q;->R(I)V

    const/16 v0, 0x46

    move-object/from16 v11, p7

    invoke-static {v11, v13, v0}, LG5/r3;->a(Lf2/a;La0/m;I)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    goto :goto_2b

    :cond_28
    move-object/from16 v11, p7

    const/4 v1, 0x0

    :goto_2b
    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    move-object/from16 v14, p3

    move v0, v1

    goto/16 :goto_3c

    :cond_29
    move-object/from16 v11, p7

    move-object/from16 v32, v3

    move-object v2, v6

    move-object v5, v7

    move-object/from16 v31, v12

    move/from16 v24, v15

    const v0, 0x7ab4aae9

    const/4 v1, 0x0

    const/4 v3, 0x3

    const v10, 0x2bb5b5d7

    move-object/from16 v12, p8

    const v6, 0x495cbb0c    # 904112.75f

    invoke-virtual {v13, v6}, La0/q;->R(I)V

    invoke-static {v4}, LU/z;->d(F)Lm0/m;

    move-result-object v4

    invoke-static {v4}, LU/z;->f(Lm0/m;)Lm0/m;

    move-result-object v25

    if-eqz p5, :cond_2a

    sget v4, LW1/a;->a:F

    :goto_2c
    move/from16 v26, v4

    goto :goto_2d

    :cond_2a
    int-to-float v4, v1

    goto :goto_2c

    :goto_2d
    if-eqz p6, :cond_2b

    sget v4, LW1/a;->a:F

    :goto_2e
    move/from16 v28, v4

    goto :goto_2f

    :cond_2b
    int-to-float v4, v1

    goto :goto_2e

    :goto_2f
    if-eqz v24, :cond_2d

    move-object/from16 v14, p3

    invoke-virtual {v14, v2}, Lm0/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x6

    int-to-float v2, v2

    :goto_30
    move/from16 v29, v2

    goto :goto_31

    :cond_2c
    int-to-float v2, v3

    goto :goto_30

    :cond_2d
    move-object/from16 v14, p3

    int-to-float v2, v1

    goto :goto_30

    :goto_31
    const/16 v27, 0x0

    const/16 v30, 0x2

    invoke-static/range {v25 .. v30}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v1

    invoke-virtual {v13, v10}, La0/q;->R(I)V

    invoke-static {v5, v13}, LU/i;->a(Lm0/d;La0/m;)Lz0/x;

    move-result-object v2

    const v3, -0x4ee9b9da

    invoke-virtual {v13, v3}, La0/q;->R(I)V

    sget-object v15, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {v13, v15}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH0/b;

    sget-object v9, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v13, v9}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH0/k;

    sget-object v8, Landroidx/compose/ui/platform/k;->c:La0/L0;

    invoke-virtual {v13, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/q;

    sget-object v6, LB0/h;->K:LB0/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, LB0/g;->b:LB0/s;

    invoke-static {v1}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v1

    invoke-virtual {v13}, La0/q;->U()V

    iget-boolean v6, v13, La0/q;->O:Z

    if-eqz v6, :cond_2e

    invoke-virtual {v13, v7}, La0/q;->k(Lsb/a;)V

    :goto_32
    const/4 v6, 0x0

    goto :goto_33

    :cond_2e
    invoke-virtual {v13}, La0/q;->d0()V

    goto :goto_32

    :goto_33
    iput-boolean v6, v13, La0/q;->x:Z

    sget-object v6, LB0/g;->f:LB0/f;

    invoke-static {v13, v2, v6}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v2, LB0/g;->d:LB0/f;

    invoke-static {v13, v3, v2}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v3, LB0/g;->g:LB0/f;

    invoke-static {v13, v4, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v4, LB0/g;->h:LB0/f;

    invoke-static {v13, v5, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v13}, La0/q;->o()V

    new-instance v5, La0/u0;

    invoke-direct {v5, v13}, La0/u0;-><init>(La0/m;)V

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v5, v13, v10}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v0}, La0/q;->R(I)V

    sget-object v1, Lm0/a;->f:Lm0/c;

    const v5, 0x2952b718

    invoke-virtual {v13, v5}, La0/q;->R(I)V

    sget-object v5, LU/e;->a:LU/a;

    invoke-static {v1, v13}, LU/x;->a(Lm0/c;La0/m;)Lz0/x;

    move-result-object v1

    const v5, -0x4ee9b9da

    invoke-virtual {v13, v5}, La0/q;->R(I)V

    invoke-virtual {v13, v15}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH0/b;

    invoke-virtual {v13, v9}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LH0/k;

    invoke-virtual {v13, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroidx/compose/ui/platform/q;

    move-object/from16 p8, v8

    invoke-static/range {v32 .. v32}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v8

    invoke-virtual {v13}, La0/q;->U()V

    move-object/from16 v17, v9

    iget-boolean v9, v13, La0/q;->O:Z

    if-eqz v9, :cond_2f

    invoke-virtual {v13, v7}, La0/q;->k(Lsb/a;)V

    :goto_34
    const/4 v9, 0x0

    goto :goto_35

    :cond_2f
    invoke-virtual {v13}, La0/q;->d0()V

    goto :goto_34

    :goto_35
    iput-boolean v9, v13, La0/q;->x:Z

    invoke-static {v13, v1, v6}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v5, v2}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v10, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v0, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v13}, La0/q;->o()V

    new-instance v0, La0/u0;

    invoke-direct {v0, v13}, La0/u0;-><init>(La0/m;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v0, v13, v5}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    invoke-virtual {v13, v0}, La0/q;->R(I)V

    move-object/from16 v10, p0

    instance-of v0, v10, LR1/e;

    if-eqz v0, :cond_30

    const v0, 0x59835d84

    invoke-virtual {v13, v0}, La0/q;->R(I)V

    move-object v0, v10

    check-cast v0, LR1/e;

    invoke-virtual {v0, v0, v13, v1}, LR1/e;->CustomContent(LR1/e;La0/m;I)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    const/4 v0, 0x0

    goto/16 :goto_3b

    :cond_30
    const v0, 0x59835dbc

    invoke-virtual {v13, v0}, La0/q;->R(I)V

    sget-object v0, Lx1/k;->e:La0/L0;

    invoke-virtual {v13, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ1/b;

    iget-object v1, v1, LJ1/b;->r:Lf2/a;

    sget-object v5, LS1/a;->b:Ljava/util/List;

    if-nez v31, :cond_31

    goto :goto_36

    :cond_31
    move-object/from16 v1, v31

    :goto_36
    const/16 v8, 0x230

    const/16 v9, 0x18

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v47, v2

    move-object v2, v12

    move-object v12, v3

    move v3, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v5

    move-object/from16 v5, v18

    move-object/from16 v48, v6

    move/from16 v6, v19

    move-object/from16 v49, v7

    move-object v7, v13

    move-object/from16 v50, p8

    move-object/from16 v10, v17

    invoke-static/range {v2 .. v9}, LG5/q3;->c(LR1/y;ILf2/a;Lm0/m;ILa0/m;II)V

    invoke-virtual/range {p0 .. p0}, LR1/r;->getSubText()LR1/y;

    move-result-object v2

    if-nez v2, :cond_32

    const/4 v0, 0x0

    goto/16 :goto_3a

    :cond_32
    invoke-static {}, LU/y;->a()Lm0/m;

    move-result-object v3

    invoke-static {v3}, LU/z;->b(Lm0/m;)Lm0/m;

    move-result-object v4

    const/4 v3, 0x2

    int-to-float v8, v3

    const/4 v5, 0x0

    const/4 v9, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v3

    sget-object v4, Lm0/a;->c:Lm0/d;

    const v5, 0x2bb5b5d7

    invoke-virtual {v13, v5}, La0/q;->R(I)V

    invoke-static {v4, v13}, LU/i;->a(Lm0/d;La0/m;)Lz0/x;

    move-result-object v4

    const v5, -0x4ee9b9da

    invoke-virtual {v13, v5}, La0/q;->R(I)V

    invoke-virtual {v13, v15}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH0/b;

    invoke-virtual {v13, v10}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LH0/k;

    move-object/from16 v7, v50

    invoke-virtual {v13, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/platform/q;

    invoke-static {v3}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v3

    invoke-virtual {v13}, La0/q;->U()V

    iget-boolean v8, v13, La0/q;->O:Z

    if-eqz v8, :cond_33

    move-object/from16 v8, v49

    invoke-virtual {v13, v8}, La0/q;->k(Lsb/a;)V

    :goto_37
    const/4 v8, 0x0

    goto :goto_38

    :cond_33
    invoke-virtual {v13}, La0/q;->d0()V

    goto :goto_37

    :goto_38
    iput-boolean v8, v13, La0/q;->x:Z

    move-object/from16 v8, v48

    invoke-static {v13, v4, v8}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    move-object/from16 v4, v47

    invoke-static {v13, v5, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v6, v12}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v13, v7, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v13}, La0/q;->o()V

    new-instance v1, La0/u0;

    invoke-direct {v1, v13}, La0/u0;-><init>(La0/m;)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v13, v5}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    invoke-virtual {v13, v1}, La0/q;->R(I)V

    invoke-virtual {v13, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ1/b;

    iget-object v0, v0, LJ1/b;->v:Lf2/a;

    iget-object v1, v2, LR1/x;->c:Lf2/a;

    if-nez v1, :cond_34

    move-object v4, v0

    goto :goto_39

    :cond_34
    move-object v4, v1

    :goto_39
    const/16 v8, 0x230

    const/16 v9, 0x18

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v13

    invoke-static/range {v2 .. v9}, LG5/q3;->c(LR1/y;ILf2/a;Lm0/m;ILa0/m;II)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    :goto_3a
    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    :goto_3b
    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v1}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    :goto_3c
    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13, v0}, La0/q;->p(Z)V

    invoke-virtual {v13}, La0/q;->r()La0/i0;

    move-result-object v10

    if-eqz v10, :cond_35

    new-instance v12, LX1/a;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, LX1/a;-><init>(LR1/r;IILm0/c;Lm0/m;ZZLf2/a;I)V

    iput-object v12, v10, La0/i0;->d:Lsb/n;

    :cond_35
    return-void
.end method

.method public static final b(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZLa0/m;I)V
    .locals 22

    move-object/from16 v7, p0

    const/4 v8, 0x1

    move-object/from16 v15, p7

    check-cast v15, La0/q;

    const v0, 0x3e2043ab

    invoke-virtual {v15, v0}, La0/q;->S(I)La0/q;

    iget-object v0, v7, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v15}, La0/q;->r()La0/i0;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v11, LW1/c;

    const/4 v9, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, LW1/c;-><init>(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZII)V

    iput-object v11, v10, La0/i0;->d:Lsb/n;

    :cond_0
    return-void

    :cond_1
    sget-object v1, LR1/d;->d:La0/L0;

    invoke-virtual {v15, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM1/b;

    iget v2, v2, LM1/b;->a:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, LM1/b;->a(II)I

    move-result v2

    const/4 v14, 0x0

    if-ltz v2, :cond_2

    move v2, v8

    goto :goto_0

    :cond_2
    move v2, v14

    :goto_0
    sget-object v3, Lm0/j;->a:Lm0/j;

    if-eqz v2, :cond_3

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x5

    move-object/from16 v16, v3

    move/from16 v18, p3

    move/from16 v20, p4

    invoke-static/range {v16 .. v21}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_4

    invoke-static {v4}, LU/z;->c(Lm0/m;)Lm0/m;

    move-result-object v4

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v4}, LU/z;->b(Lm0/m;)Lm0/m;

    move-result-object v4

    :cond_5
    const v5, 0x704b3e80

    invoke-virtual {v15, v5}, La0/q;->R(I)V

    invoke-static {v14, v8}, LK1/b;->b(II)Z

    move-result v5

    sget-object v6, Lm0/a;->d:Lm0/c;

    sget-object v9, Lm0/a;->e:Lm0/c;

    if-eqz v5, :cond_6

    move-object v5, v9

    goto :goto_2

    :cond_6
    invoke-static {v14, v14}, LK1/b;->b(II)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v6

    goto :goto_2

    :cond_7
    const/4 v5, 0x2

    invoke-static {v14, v5}, LK1/b;->b(II)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Lm0/a;->f:Lm0/c;

    :goto_2
    invoke-virtual {v15, v14}, La0/q;->p(Z)V

    sget-object v10, Lm0/a;->b:Lm0/d;

    if-eqz v2, :cond_b

    sget-object v11, Lm0/a;->a:Lm0/d;

    if-eqz p2, :cond_8

    invoke-virtual {v5, v6}, Lm0/c;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move-object v10, v11

    goto :goto_3

    :cond_9
    invoke-virtual {v5, v9}, Lm0/c;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_3

    :cond_a
    sget-object v10, Lm0/a;->c:Lm0/d;

    :cond_b
    :goto_3
    const v6, 0x2bb5b5d7

    invoke-virtual {v15, v6}, La0/q;->R(I)V

    invoke-static {v10, v15}, LU/i;->a(Lm0/d;La0/m;)Lz0/x;

    move-result-object v6

    const v9, -0x4ee9b9da

    invoke-virtual {v15, v9}, La0/q;->R(I)V

    sget-object v10, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {v15, v10}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LH0/b;

    sget-object v12, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v15, v12}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LH0/k;

    sget-object v8, Landroidx/compose/ui/platform/k;->c:La0/L0;

    invoke-virtual {v15, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/ui/platform/q;

    sget-object v16, LB0/h;->K:LB0/g;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, LB0/g;->b:LB0/s;

    invoke-static {v4}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v4

    invoke-virtual {v15}, La0/q;->U()V

    iget-boolean v7, v15, La0/q;->O:Z

    if-eqz v7, :cond_c

    invoke-virtual {v15, v14}, La0/q;->k(Lsb/a;)V

    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {v15}, La0/q;->d0()V

    goto :goto_4

    :goto_5
    iput-boolean v7, v15, La0/q;->x:Z

    sget-object v7, LB0/g;->f:LB0/f;

    invoke-static {v15, v6, v7}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v6, LB0/g;->d:LB0/f;

    invoke-static {v15, v11, v6}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v11, LB0/g;->g:LB0/f;

    invoke-static {v15, v13, v11}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v13, LB0/g;->h:LB0/f;

    invoke-static {v15, v9, v13}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v15}, La0/q;->o()V

    new-instance v9, La0/u0;

    invoke-direct {v9, v15}, La0/u0;-><init>(La0/m;)V

    move-object/from16 v17, v13

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v9, v15, v13}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7ab4aae9

    invoke-virtual {v15, v4}, La0/q;->R(I)V

    invoke-static {v0, v15}, LW1/b;->a(Ljava/util/ArrayList;La0/m;)I

    move-result v13

    if-eqz p1, :cond_d

    invoke-static {v3}, LU/z;->c(Lm0/m;)Lm0/m;

    move-result-object v3

    invoke-static {v3}, LU/z;->f(Lm0/m;)Lm0/m;

    move-result-object v3

    :cond_d
    move-object/from16 v19, v3

    const v3, -0x2f368420

    invoke-virtual {v15, v3}, La0/q;->R(I)V

    if-eqz v2, :cond_e

    const v0, -0x58883269

    invoke-virtual {v15, v0}, La0/q;->R(I)V

    new-instance v17, LX1/d;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v13

    move-object v3, v5

    move-object/from16 v4, v19

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, LX1/d;-><init>(Lcom/samsung/android/motionphoto/utils/ex/e;ILm0/c;Lm0/m;ZZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    move-object/from16 v9, v19

    move/from16 v3, v16

    move-object v4, v15

    move-object v15, v0

    move/from16 v16, v1

    move-object/from16 v18, v4

    move/from16 v19, v2

    invoke-static/range {v9 .. v19}, LG5/I2;->a(Lm0/m;LV/J;LU/t;ZLU/d;Lm0/b;LS/g;ZLX1/d;La0/m;I)V

    invoke-virtual {v4, v3}, La0/q;->p(Z)V

    move-object/from16 v1, p0

    move-object v2, v4

    goto/16 :goto_8

    :cond_e
    move-object v2, v15

    move/from16 v3, v16

    const v9, -0x58883037

    invoke-virtual {v2, v9}, La0/q;->R(I)V

    invoke-virtual {v2, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM1/b;

    iget v1, v1, LM1/b;->a:I

    const/4 v9, 0x4

    invoke-static {v1, v9}, LM1/b;->b(II)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    const v1, -0x58882ce8

    invoke-virtual {v2, v1}, La0/q;->R(I)V

    const v1, -0x1cd0f17e

    invoke-virtual {v2, v1}, La0/q;->R(I)V

    sget-object v1, LU/e;->a:LU/a;

    invoke-static {v2}, LU/k;->a(La0/m;)Lz0/x;

    move-result-object v1

    const v9, -0x4ee9b9da

    invoke-virtual {v2, v9}, La0/q;->R(I)V

    invoke-virtual {v2, v10}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LH0/b;

    invoke-virtual {v2, v12}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LH0/k;

    invoke-virtual {v2, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/platform/q;

    invoke-static/range {v19 .. v19}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v12

    invoke-virtual {v2}, La0/q;->U()V

    iget-boolean v15, v2, La0/q;->O:Z

    if-eqz v15, :cond_10

    invoke-virtual {v2, v14}, La0/q;->k(Lsb/a;)V

    goto :goto_6

    :cond_10
    invoke-virtual {v2}, La0/q;->d0()V

    :goto_6
    iput-boolean v3, v2, La0/q;->x:Z

    invoke-static {v2, v1, v7}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v2, v9, v6}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v2, v10, v11}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    move-object/from16 v1, v17

    invoke-static {v2, v8, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v2}, La0/q;->o()V

    new-instance v1, La0/u0;

    invoke-direct {v1, v2}, La0/u0;-><init>(La0/m;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v1, v2, v6}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, La0/q;->R(I)V

    const v1, -0x58882c8e

    invoke-virtual {v2, v1}, La0/q;->R(I)V

    invoke-static {v0, v13}, Lfb/n;->b0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v10, v3

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    add-int/lit8 v8, v10, 0x1

    if-ltz v10, :cond_11

    move-object v9, v1

    check-cast v9, LR1/r;

    const/high16 v1, 0x70000

    and-int v1, p8, v1

    const v4, 0x1000008

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int v4, p8, v4

    or-int v18, v1, v4

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lf2/a;

    move v11, v13

    move-object v12, v5

    move v4, v13

    move-object/from16 v13, v19

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v17, v2

    invoke-static/range {v9 .. v18}, LG5/q3;->a(LR1/r;IILm0/c;Lm0/m;ZZLf2/a;La0/m;I)V

    move v13, v4

    move v10, v8

    goto :goto_7

    :cond_11
    invoke-static {}, Lfb/o;->l()V

    const/4 v0, 0x0

    throw v0

    :cond_12
    move-object/from16 v1, p0

    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, La0/q;->p(Z)V

    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    :goto_8
    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, La0/q;->p(Z)V

    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    invoke-virtual {v2, v3}, La0/q;->p(Z)V

    invoke-virtual {v2}, La0/q;->r()La0/i0;

    move-result-object v10

    if-eqz v10, :cond_13

    new-instance v11, LW1/c;

    const/4 v9, 0x2

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, LW1/c;-><init>(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZII)V

    iput-object v11, v10, La0/i0;->d:Lsb/n;

    :cond_13
    return-void

    :cond_14
    move v3, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, LK1/b;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown Alignment.Vertical: "

    invoke-static {v2, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(LR1/y;ILf2/a;Lm0/m;ILa0/m;II)V
    .locals 14

    move v2, p1

    const-string v0, "textData"

    move-object v1, p0

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p5

    check-cast v0, La0/q;

    const v3, 0x1abe1652

    invoke-virtual {v0, v3}, La0/q;->S(I)La0/q;

    sget-object v9, Lm0/j;->a:Lm0/j;

    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    move v10, v3

    goto :goto_0

    :cond_0
    move/from16 v10, p4

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v3}, LG5/E;->b(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x551c93fe

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    invoke-static {v0}, LG5/g3;->c(La0/m;)LW1/d;

    move-result-object v4

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x1

    invoke-static {p1, v4}, LG5/E;->b(II)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x551c9440

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    const v4, 0x419bfa28

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    new-instance v4, LW1/d;

    invoke-static {v0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Le2/a;->SP:Le2/a;

    const/16 v7, 0x258

    const v8, 0x7f071165

    invoke-direct {v4, v5, v8, v6, v7}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x3

    invoke-static {p1, v4}, LG5/E;->b(II)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x551c947f    # 1.07601E13f

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    invoke-static {v0, v10}, LG5/g3;->a(La0/m;I)LW1/d;

    move-result-object v4

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x5

    invoke-static {p1, v4}, LG5/E;->b(II)Z

    move-result v4

    const/16 v5, 0x190

    if-eqz v4, :cond_4

    const v4, 0x551c94dd

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    const v4, -0x7124ef58

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    new-instance v4, LW1/d;

    invoke-static {v0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Le2/a;->SP:Le2/a;

    const v8, 0x7f071152

    invoke-direct {v4, v6, v8, v7, v5}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    goto :goto_2

    :cond_4
    const v4, 0x551c9519

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    const v4, 0x63400fa8

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    new-instance v4, LW1/d;

    invoke-static {v0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, LR1/d;->d:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LM1/b;

    iget v7, v7, LM1/b;->a:I

    const/16 v8, 0x8

    invoke-static {v7, v8}, LM1/b;->a(II)I

    move-result v7

    if-gtz v7, :cond_5

    sget-object v7, Le2/a;->DP:Le2/a;

    goto :goto_1

    :cond_5
    sget-object v7, Le2/a;->SP:Le2/a;

    :goto_1
    const v8, 0x7f07115d

    invoke-direct {v4, v6, v8, v7, v5}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    :goto_2
    move/from16 v11, p6

    and-int/lit16 v3, v11, 0x1c00

    const/16 v5, 0x208

    or-int v8, v5, v3

    move-object v3, p0

    move-object/from16 v5, p2

    move-object v6, v9

    move-object v7, v0

    invoke-static/range {v3 .. v8}, LG5/C2;->a(LR1/x;LW1/d;Lf2/a;Lm0/m;La0/m;I)V

    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v13, LX1/e;

    const/4 v8, 0x0

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    move v5, v10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, LX1/e;-><init>(LR1/x;ILf2/a;Ljava/lang/Object;IIII)V

    iput-object v13, v12, La0/i0;->d:Lsb/n;

    :cond_6
    return-void
.end method

.method public static d()I
    .locals 4

    const-string v0, "hidden_TYPE_NONE"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "com.samsung.android.widget.SemHoverPopupWindow"

    invoke-static {v3, v0, v2}, LG5/k2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method
