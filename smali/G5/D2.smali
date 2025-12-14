.class public abstract LG5/D2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LV9/a;Lsb/n;Lsb/n;La0/m;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v5, "<this>"

    invoke-static {v1, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p3

    check-cast v5, La0/q;

    const v6, 0x10b3b0c3

    invoke-virtual {v5, v6}, La0/q;->S(I)La0/q;

    invoke-static {v5}, LV9/a;->d(La0/m;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, La0/q;->r()La0/i0;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, LU1/i;

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, LU1/i;-><init>(LV9/a;Lsb/n;Lsb/n;II)V

    iput-object v7, v6, La0/i0;->d:Lsb/n;

    :cond_0
    return-void

    :cond_1
    sget-object v6, LR1/d;->d:La0/L0;

    invoke-virtual {v5, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LM1/b;

    iget v6, v6, LM1/b;->a:I

    const/4 v7, 0x4

    invoke-static {v6, v7}, LM1/b;->b(II)Z

    move-result v6

    sget-object v7, Lm0/j;->a:Lm0/j;

    invoke-static {v7}, LU/z;->c(Lm0/m;)Lm0/m;

    move-result-object v8

    const/16 v9, 0x10

    int-to-float v9, v9

    const/4 v14, 0x0

    if-eqz v3, :cond_2

    int-to-float v10, v14

    move v11, v10

    goto :goto_0

    :cond_2
    move v11, v9

    :goto_0
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-static/range {v8 .. v13}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v8

    if-eqz v6, :cond_3

    invoke-static {v8}, LU/z;->b(Lm0/m;)Lm0/m;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-static {v8}, LU/z;->f(Lm0/m;)Lm0/m;

    move-result-object v8

    :goto_1
    if-eqz v6, :cond_4

    sget-object v9, Lm0/a;->e:Lm0/c;

    goto :goto_2

    :cond_4
    sget-object v9, Lm0/a;->d:Lm0/c;

    :goto_2
    const v10, 0x2952b718

    invoke-virtual {v5, v10}, La0/q;->R(I)V

    sget-object v10, LU/e;->a:LU/a;

    invoke-static {v9, v5}, LU/x;->a(Lm0/c;La0/m;)Lz0/x;

    move-result-object v9

    const v10, -0x4ee9b9da

    invoke-virtual {v5, v10}, La0/q;->R(I)V

    sget-object v11, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {v5, v11}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LH0/b;

    sget-object v13, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v5, v13}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LH0/k;

    sget-object v0, Landroidx/compose/ui/platform/k;->c:La0/L0;

    invoke-virtual {v5, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/ui/platform/q;

    sget-object v16, LB0/h;->K:LB0/g;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, LB0/g;->b:LB0/s;

    invoke-static {v8}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v8

    invoke-virtual {v5}, La0/q;->U()V

    iget-boolean v14, v5, La0/q;->O:Z

    if-eqz v14, :cond_5

    invoke-virtual {v5, v10}, La0/q;->k(Lsb/a;)V

    :goto_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, La0/q;->d0()V

    goto :goto_3

    :goto_4
    iput-boolean v14, v5, La0/q;->x:Z

    sget-object v14, LB0/g;->f:LB0/f;

    invoke-static {v5, v9, v14}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v9, LB0/g;->d:LB0/f;

    invoke-static {v5, v12, v9}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v12, LB0/g;->g:LB0/f;

    invoke-static {v5, v15, v12}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v15, LB0/g;->h:LB0/f;

    invoke-static {v5, v4, v15}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v5}, La0/q;->o()V

    new-instance v4, La0/u0;

    invoke-direct {v4, v5}, La0/u0;-><init>(La0/m;)V

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v4, v5, v3}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7ab4aae9

    invoke-virtual {v5, v3}, La0/q;->R(I)V

    invoke-static {}, LU/y;->a()Lm0/m;

    move-result-object v4

    invoke-static {v4}, LU/z;->f(Lm0/m;)Lm0/m;

    move-result-object v18

    const v4, 0x7d0f2b99

    invoke-virtual {v5, v4}, La0/q;->R(I)V

    if-eqz v6, :cond_6

    move/from16 v4, v17

    int-to-float v8, v4

    :goto_5
    move/from16 v20, v8

    goto :goto_6

    :cond_6
    move/from16 v4, v17

    invoke-static {v5}, LG5/D2;->e(La0/m;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x8

    int-to-float v8, v8

    goto :goto_5

    :cond_7
    sget v8, LW1/a;->b:F

    goto :goto_5

    :goto_6
    invoke-virtual {v5, v4}, La0/q;->p(Z)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v23, 0xd

    invoke-static/range {v18 .. v23}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v4

    const v8, -0x1cd0f17e

    invoke-virtual {v5, v8}, La0/q;->R(I)V

    invoke-static {v5}, LU/k;->a(La0/m;)Lz0/x;

    move-result-object v8

    const v3, -0x4ee9b9da

    invoke-virtual {v5, v3}, La0/q;->R(I)V

    invoke-virtual {v5, v11}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH0/b;

    invoke-virtual {v5, v13}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LH0/k;

    invoke-virtual {v5, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/q;

    invoke-static {v4}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v4

    invoke-virtual {v5}, La0/q;->U()V

    iget-boolean v13, v5, La0/q;->O:Z

    if-eqz v13, :cond_8

    invoke-virtual {v5, v10}, La0/q;->k(Lsb/a;)V

    :goto_7
    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v5}, La0/q;->d0()V

    goto :goto_7

    :goto_8
    iput-boolean v10, v5, La0/q;->x:Z

    invoke-static {v5, v8, v14}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v5, v3, v9}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v5, v11, v12}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v5, v0, v15}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v5}, La0/q;->o()V

    new-instance v0, La0/u0;

    invoke-direct {v0, v5}, La0/u0;-><init>(La0/m;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v0, v5, v8}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    invoke-virtual {v5, v0}, La0/q;->R(I)V

    iget-object v0, v1, LV9/a;->c:Ljava/lang/Object;

    check-cast v0, LR1/x;

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-object v8, v1, LV9/a;->d:Ljava/lang/Object;

    move-object v13, v8

    check-cast v13, LR1/x;

    if-nez v13, :cond_a

    if-nez v2, :cond_a

    if-nez v6, :cond_a

    iget v6, v0, LR1/x;->g:I

    if-le v6, v3, :cond_9

    int-to-float v6, v4

    :goto_9
    move v11, v6

    goto :goto_a

    :cond_9
    const/16 v6, 0xc

    int-to-float v6, v6

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    int-to-float v8, v6

    move v11, v8

    :goto_a
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x7

    invoke-static/range {v7 .. v12}, LG5/y2;->c(Lm0/m;FFFFI)Lm0/m;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v0, v3, v6, v5, v7}, LG5/D2;->b(LR1/x;ILm0/m;La0/m;I)V

    if-eqz v2, :cond_b

    const v0, -0x2daa42a2

    invoke-virtual {v5, v0}, La0/q;->R(I)V

    const/4 v0, 0x3

    shr-int/lit8 v0, p4, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    const v6, -0x2daa426b

    invoke-virtual {v5, v6}, La0/q;->R(I)V

    if-nez v13, :cond_c

    goto :goto_b

    :cond_c
    int-to-float v4, v4

    int-to-float v6, v0

    new-instance v7, LU/s;

    invoke-direct {v7, v6, v4, v6, v4}, LU/s;-><init>(FFFF)V

    const/16 v4, 0x1b8

    const/4 v6, 0x3

    invoke-static {v13, v6, v7, v5, v4}, LG5/D2;->b(LR1/x;ILm0/m;La0/m;I)V

    :goto_b
    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    :goto_c
    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    invoke-virtual {v5, v3}, La0/q;->p(Z)V

    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    move-object/from16 v4, p2

    if-eqz v4, :cond_d

    const v0, 0x7d0f2f17

    invoke-virtual {v5, v0}, La0/q;->R(I)V

    const/4 v0, 0x6

    int-to-float v6, v0

    invoke-static {v6}, LU/z;->e(F)Lm0/m;

    move-result-object v6

    invoke-static {v5, v6}, LG5/A2;->a(La0/m;Lm0/m;)V

    shr-int/lit8 v0, p4, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    const v6, 0x7d0f30b7

    invoke-virtual {v5, v6}, La0/q;->R(I)V

    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    :goto_d
    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    invoke-virtual {v5, v3}, La0/q;->p(Z)V

    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    invoke-virtual {v5, v0}, La0/q;->p(Z)V

    invoke-virtual {v5}, La0/q;->r()La0/i0;

    move-result-object v6

    if-eqz v6, :cond_e

    new-instance v7, LU1/i;

    const/4 v5, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, LU1/i;-><init>(LV9/a;Lsb/n;Lsb/n;II)V

    iput-object v7, v6, La0/i0;->d:Lsb/n;

    :cond_e
    return-void
.end method

.method public static final b(LR1/x;ILm0/m;La0/m;I)V
    .locals 7

    check-cast p3, La0/q;

    const v0, -0x576fc478

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LG5/E;->b(II)Z

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const v1, 0x67f8d678

    invoke-virtual {p3, v1}, La0/q;->R(I)V

    invoke-static {p3}, LG5/D2;->e(La0/m;)Z

    move-result v1

    const/16 v4, 0x258

    if-eqz v1, :cond_0

    new-instance v1, LW1/d;

    sget-object v5, Le2/a;->DP:Le2/a;

    invoke-direct {v1, v2, v5, v4}, LW1/d;-><init>(FLe2/a;I)V

    goto :goto_0

    :cond_0
    new-instance v1, LW1/d;

    sget-object v2, Le2/a;->DP:Le2/a;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-direct {v1, v5, v2, v4}, LW1/d;-><init>(FLe2/a;I)V

    :goto_0
    invoke-virtual {p3, v3}, La0/q;->p(Z)V

    goto :goto_2

    :cond_1
    const v1, 0x67f8d6ef

    invoke-virtual {p3, v1}, La0/q;->R(I)V

    invoke-static {p3}, LG5/D2;->e(La0/m;)Z

    move-result v1

    const/16 v4, 0x190

    if-eqz v1, :cond_2

    new-instance v1, LW1/d;

    sget-object v2, Le2/a;->DP:Le2/a;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {v1, v5, v2, v4}, LW1/d;-><init>(FLe2/a;I)V

    goto :goto_1

    :cond_2
    new-instance v1, LW1/d;

    sget-object v5, Le2/a;->DP:Le2/a;

    invoke-direct {v1, v2, v5, v4}, LW1/d;-><init>(FLe2/a;I)V

    :goto_1
    invoke-virtual {p3, v3}, La0/q;->p(Z)V

    :goto_2
    invoke-static {p1, v0}, LG5/E;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x67f8d79e

    invoke-virtual {p3, v0}, La0/q;->R(I)V

    sget-object v0, Lx1/k;->e:La0/L0;

    invoke-virtual {p3, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ1/b;

    iget-object v0, v0, LJ1/b;->r:Lf2/a;

    invoke-virtual {p3, v3}, La0/q;->p(Z)V

    :goto_3
    move-object v2, v0

    goto :goto_4

    :cond_3
    const v0, 0x67f8d7e3

    invoke-virtual {p3, v0}, La0/q;->R(I)V

    sget-object v0, Lx1/k;->e:La0/L0;

    invoke-virtual {p3, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ1/b;

    iget-object v0, v0, LJ1/b;->v:Lf2/a;

    invoke-virtual {p3, v3}, La0/q;->p(Z)V

    goto :goto_3

    :goto_4
    shl-int/lit8 v0, p4, 0x3

    and-int/lit16 v0, v0, 0x1c00

    const/16 v3, 0x208

    or-int v5, v3, v0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, LG5/C2;->a(LR1/x;LW1/d;Lf2/a;Lm0/m;La0/m;I)V

    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v6, LB1/e;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, LB1/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, p3, La0/i0;->d:Lsb/n;

    :cond_4
    return-void
.end method

.method public static final c(Lx1/r;Ly1/a;I)Lx1/r;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly1/b;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2, v1}, Ly1/b;-><init>(Ly1/a;IZI)V

    invoke-interface {p0, v0}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    const-string v0, "hidden_SEM_PEN_HOVERING"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/provider/Settings$System;

    invoke-static {v3, v0, v2}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_1
    const-string v0, "pen_hovering"

    return-object v0
.end method

.method public static final e(La0/m;)Z
    .locals 3

    check-cast p0, La0/q;

    const v0, -0x3acd95fa

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    sget-object v0, Landroidx/compose/ui/platform/h;->a:La0/L0;

    invoke-virtual {p0, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SM-X"

    invoke-static {v0, v1}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v2}, La0/q;->p(Z)V

    return v0
.end method

.method public static f(Ljava/io/InputStream;)Ldc/a;
    .locals 3

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Lzb/d;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v2}, Lzb/b;-><init>(III)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v2, p0

    check-cast v2, Lzb/c;

    iget-boolean v2, v2, Lzb/c;->c:Z

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lzb/c;

    invoke-virtual {v2}, Lzb/c;->b()I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lfb/n;->f0(Ljava/util/List;)[I

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    new-instance v0, Ldc/a;

    invoke-direct {v0, p0}, Ldc/a;-><init>([I)V

    return-object v0
.end method
