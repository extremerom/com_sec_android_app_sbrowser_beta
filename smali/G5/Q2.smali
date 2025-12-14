.class public abstract LG5/Q2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)LH0/d;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    sget-object v3, LH0/h;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, LH0/l;

    invoke-direct {v0, v2}, LH0/l;-><init>(F)V

    goto/16 :goto_5

    :cond_0
    sget-object v3, LI0/b;->a:[F

    const v3, 0x3f83d70a    # 1.03f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_7

    sget-object v3, LI0/b;->b:LN/B;

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v2, v4

    float-to-int v5, v5

    invoke-virtual {v3, v5}, LN/B;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LI0/a;

    if-eqz v3, :cond_1

    :goto_0
    move-object v0, v3

    goto/16 :goto_4

    :cond_1
    sget-object v3, LI0/b;->b:LN/B;

    iget-object v6, v3, LN/B;->a:[I

    iget v3, v3, LN/B;->c:I

    invoke-static {v3, v5, v6}, LO/a;->a(II[I)I

    move-result v3

    if-ltz v3, :cond_2

    sget-object v0, LI0/b;->b:LN/B;

    iget-object v0, v0, LN/B;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, LI0/a;

    goto/16 :goto_4

    :cond_2
    add-int/2addr v3, v1

    neg-int v3, v3

    add-int/lit8 v5, v3, -0x1

    sget-object v6, LI0/b;->b:LN/B;

    iget v6, v6, LN/B;->c:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-lt v3, v6, :cond_3

    new-instance v3, LI0/c;

    new-array v4, v1, [F

    aput v7, v4, v0

    new-array v1, v1, [F

    aput v2, v1, v0

    invoke-direct {v3, v4, v1}, LI0/c;-><init>([F[F)V

    invoke-static {v2, v3}, LI0/b;->a(FLI0/c;)V

    goto :goto_0

    :cond_3
    sget-object v6, LI0/b;->a:[F

    if-gez v5, :cond_4

    new-instance v5, LI0/c;

    invoke-direct {v5, v6, v6}, LI0/c;-><init>([F[F)V

    move v8, v7

    goto :goto_1

    :cond_4
    sget-object v8, LI0/b;->b:LN/B;

    iget-object v8, v8, LN/B;->a:[I

    aget v8, v8, v5

    int-to-float v8, v8

    div-float/2addr v8, v4

    sget-object v9, LI0/b;->b:LN/B;

    iget-object v9, v9, LN/B;->b:[Ljava/lang/Object;

    aget-object v5, v9, v5

    check-cast v5, LI0/a;

    :goto_1
    sget-object v9, LI0/b;->b:LN/B;

    iget-object v9, v9, LN/B;->a:[I

    aget v9, v9, v3

    int-to-float v9, v9

    div-float/2addr v9, v4

    cmpg-float v4, v8, v9

    const/4 v10, 0x0

    if-nez v4, :cond_5

    move v4, v10

    goto :goto_2

    :cond_5
    sub-float v4, v2, v8

    sub-float/2addr v9, v8

    div-float/2addr v4, v9

    :goto_2
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v7

    add-float/2addr v4, v10

    sget-object v7, LI0/b;->b:LN/B;

    iget-object v7, v7, LN/B;->b:[Ljava/lang/Object;

    aget-object v3, v7, v3

    check-cast v3, LI0/a;

    const/16 v7, 0x9

    new-array v8, v7, [F

    :goto_3
    if-ge v0, v7, :cond_6

    aget v9, v6, v0

    invoke-interface {v5, v9}, LI0/a;->a(F)F

    move-result v10

    invoke-interface {v3, v9}, LI0/a;->a(F)F

    move-result v9

    sub-float/2addr v9, v10

    mul-float/2addr v9, v4

    add-float/2addr v9, v10

    aput v9, v8, v0

    add-int/2addr v0, v1

    goto :goto_3

    :cond_6
    new-instance v3, LI0/c;

    invoke-direct {v3, v6, v8}, LI0/c;-><init>([F[F)V

    invoke-static {v2, v3}, LI0/b;->a(FLI0/c;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_8

    new-instance v0, LH0/l;

    invoke-direct {v0, v2}, LH0/l;-><init>(F)V

    :cond_8
    :goto_5
    new-instance v1, LH0/d;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, p0, v2, v0}, LH0/d;-><init>(FFLI0/a;)V

    return-object v1
.end method

.method public static final b(Lm0/m;LV/J;LU/t;ZLS/g;ZILm0/b;LU/d;Lm0/c;LU/c;LX1/d;La0/m;II)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v12, p4

    move/from16 v11, p5

    move-object/from16 v10, p11

    move/from16 v9, p13

    move/from16 v8, p14

    const/16 v5, 0xe

    const/4 v4, 0x1

    const-string v1, "modifier"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "state"

    invoke-static {v13, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contentPadding"

    invoke-static {v14, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flingBehavior"

    invoke-static {v12, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p12

    check-cast v2, La0/q;

    const v1, 0x25001c13

    invoke-virtual {v2, v1}, La0/q;->S(I)La0/q;

    and-int/lit8 v1, v9, 0xe

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v9

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    and-int/lit8 v17, v9, 0x70

    if-nez v17, :cond_3

    invoke-virtual {v2, v13}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x20

    goto :goto_2

    :cond_2
    const/16 v17, 0x10

    :goto_2
    or-int v1, v1, v17

    :cond_3
    and-int/lit16 v5, v9, 0x380

    const/16 v18, 0x80

    const/16 v19, 0x100

    if-nez v5, :cond_5

    invoke-virtual {v2, v14}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move/from16 v5, v19

    goto :goto_3

    :cond_4
    move/from16 v5, v18

    :goto_3
    or-int/2addr v1, v5

    :cond_5
    and-int/lit16 v5, v9, 0x1c00

    if-nez v5, :cond_7

    invoke-virtual {v2, v15}, La0/q;->f(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_4

    :cond_6
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v1, v5

    :cond_7
    const v5, 0xe000

    and-int/2addr v5, v9

    if-nez v5, :cond_9

    invoke-virtual {v2, v4}, La0/q;->f(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_5

    :cond_8
    const/16 v5, 0x2000

    :goto_5
    or-int/2addr v1, v5

    :cond_9
    const/high16 v5, 0x70000

    and-int/2addr v5, v9

    if-nez v5, :cond_b

    invoke-virtual {v2, v12}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v5, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v5, 0x10000

    :goto_6
    or-int/2addr v1, v5

    :cond_b
    const/high16 v5, 0x380000

    and-int/2addr v5, v9

    if-nez v5, :cond_d

    invoke-virtual {v2, v11}, La0/q;->f(Z)Z

    move-result v5

    if-eqz v5, :cond_c

    const/high16 v5, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v5, 0x80000

    :goto_7
    or-int/2addr v1, v5

    :cond_d
    const/high16 v5, 0xc00000

    or-int/2addr v1, v5

    const/high16 v5, 0xe000000

    and-int/2addr v5, v9

    if-nez v5, :cond_f

    move-object/from16 v5, p7

    invoke-virtual {v2, v5}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/high16 v20, 0x4000000

    goto :goto_8

    :cond_e
    const/high16 v20, 0x2000000

    :goto_8
    or-int v1, v1, v20

    goto :goto_9

    :cond_f
    move-object/from16 v5, p7

    :goto_9
    const/high16 v20, 0x70000000

    and-int v20, v9, v20

    move-object/from16 v12, p8

    if-nez v20, :cond_11

    invoke-virtual {v2, v12}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000000

    :goto_a
    or-int v1, v1, v20

    :cond_11
    move/from16 v20, v1

    or-int/lit8 v1, v8, 0x36

    and-int/lit16 v4, v8, 0x380

    if-nez v4, :cond_13

    invoke-virtual {v2, v10}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move/from16 v18, v19

    :cond_12
    or-int v1, v1, v18

    :cond_13
    const v4, 0x5b6db6db

    and-int v4, v20, v4

    const v7, 0x12492492

    if-ne v4, v7, :cond_15

    and-int/lit16 v1, v1, 0x2db

    const/16 v4, 0x92

    if-ne v1, v4, :cond_15

    invoke-virtual {v2}, La0/q;->x()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v2}, La0/q;->K()V

    move/from16 v8, p6

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move v0, v15

    move-object v15, v2

    goto/16 :goto_28

    :cond_15
    :goto_b
    const v1, 0x6bdf63e4

    invoke-virtual {v2, v1}, La0/q;->R(I)V

    sget-object v1, LR/g;->a:Lm0/m;

    const v1, -0x4d61273

    invoke-virtual {v2, v1}, La0/q;->R(I)V

    sget-object v1, Landroidx/compose/ui/platform/h;->a:La0/L0;

    invoke-virtual {v2, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v4, LR/y;->a:La0/I;

    invoke-virtual {v2, v4}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR/x;

    sget-object v7, La0/l;->a:La0/V;

    const/4 v12, 0x0

    const v6, 0x1e7b2b64

    if-eqz v4, :cond_18

    invoke-virtual {v2, v6}, La0/q;->R(I)V

    invoke-virtual {v2, v1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v2, v4}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v22

    or-int v19, v19, v22

    invoke-virtual {v2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v6

    if-nez v19, :cond_16

    if-ne v6, v7, :cond_17

    :cond_16
    new-instance v6, LR/d;

    invoke-direct {v6, v1, v4}, LR/d;-><init>(Landroid/content/Context;LR/x;)V

    invoke-virtual {v2, v6}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_17
    invoke-virtual {v2, v12}, La0/q;->p(Z)V

    check-cast v6, LR/z;

    goto :goto_c

    :cond_18
    sget-object v1, LR/w;->a:LR/w;

    move-object v6, v1

    :goto_c
    invoke-virtual {v2, v12}, La0/q;->p(Z)V

    invoke-virtual {v2, v12}, La0/q;->p(Z)V

    const v1, 0x739a4a8b

    invoke-virtual {v2, v1}, La0/q;->R(I)V

    invoke-static {v10, v2}, La0/d;->I(Ljava/lang/Object;La0/m;)La0/a0;

    move-result-object v4

    const v1, 0x44faf204

    invoke-virtual {v2, v1}, La0/q;->R(I)V

    invoke-virtual {v2, v13}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    if-nez v19, :cond_19

    if-ne v1, v7, :cond_1a

    :cond_19
    new-instance v1, LA4/a;

    const/16 v12, 0xa

    invoke-direct {v1, v12, v13}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, La0/q;->a0(Ljava/lang/Object;)V

    const/4 v12, 0x0

    :cond_1a
    invoke-virtual {v2, v12}, La0/q;->p(Z)V

    check-cast v1, Lsb/a;

    sget-object v12, LV/u;->b:LV/u;

    move-object/from16 v19, v3

    sget-object v3, LV/u;->c:LV/u;

    const-string v5, "firstVisibleItemIndex"

    invoke-static {v1, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x199d35e1

    invoke-virtual {v2, v5}, La0/q;->R(I)V

    const v5, 0x607fb4c4

    invoke-virtual {v2, v5}, La0/q;->R(I)V

    invoke-virtual {v2, v1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v12}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v22

    or-int v5, v5, v22

    invoke-virtual {v2, v3}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v22

    or-int v5, v5, v22

    move-object/from16 v22, v6

    invoke-virtual {v2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, La0/V;->f:La0/V;

    const/4 v14, 0x0

    if-nez v5, :cond_1c

    if-ne v6, v7, :cond_1b

    goto :goto_e

    :cond_1b
    :goto_d
    const/4 v5, 0x0

    goto :goto_f

    :cond_1c
    :goto_e
    sget-object v5, Lk0/n;->a:LZ3/x;

    invoke-virtual {v5}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk0/h;

    const/4 v6, 0x0

    invoke-static {v5, v14, v6}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v5

    :try_start_0
    invoke-virtual {v5}, Lk0/h;->j()Lk0/h;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->intValue()I

    move-result v23

    div-int/lit8 v23, v23, 0x1e

    mul-int/lit8 v14, v23, 0x1e

    add-int/lit8 v9, v14, -0x64

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit16 v14, v14, 0x82

    invoke-static {v9, v14}, LG5/d3;->l(II)Lzb/d;

    move-result-object v9

    invoke-static {v9, v8}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6}, Lk0/h;->p(Lk0/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v5}, Lk0/h;->c()V

    invoke-virtual {v2, v9}, La0/q;->a0(Ljava/lang/Object;)V

    move-object v6, v9

    goto :goto_d

    :goto_f
    invoke-virtual {v2, v5}, La0/q;->p(Z)V

    move-object v5, v6

    check-cast v5, La0/a0;

    filled-new-array {v1, v12, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const v14, -0x21de6e89

    invoke-virtual {v2, v14}, La0/q;->R(I)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    :goto_10
    if-ge v6, v10, :cond_1d

    aget-object v12, v3, v6

    invoke-virtual {v2, v12}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v9, v12

    const/4 v12, 0x1

    add-int/2addr v6, v12

    goto :goto_10

    :cond_1d
    const/4 v12, 0x1

    invoke-virtual {v2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v3

    if-nez v9, :cond_1f

    if-ne v3, v7, :cond_1e

    goto :goto_12

    :cond_1e
    :goto_11
    const/4 v1, 0x0

    goto :goto_13

    :cond_1f
    :goto_12
    new-instance v3, LW/v;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v5, v6}, LW/v;-><init>(Lsb/a;La0/a0;Lib/c;)V

    invoke-virtual {v2, v3}, La0/q;->a0(Ljava/lang/Object;)V

    goto :goto_11

    :goto_13
    invoke-virtual {v2, v1}, La0/q;->p(Z)V

    check-cast v3, Lsb/n;

    invoke-static {v2, v5, v3}, La0/d;->d(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v2, v1}, La0/q;->p(Z)V

    const v6, 0x1e7b2b64

    invoke-virtual {v2, v6}, La0/q;->R(I)V

    invoke-virtual {v2, v5}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v13}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_21

    if-ne v3, v7, :cond_20

    goto :goto_15

    :cond_20
    move-object v12, v2

    move v9, v6

    move-object/from16 v24, v19

    move-object/from16 v25, v22

    :goto_14
    const/4 v1, 0x0

    goto :goto_16

    :cond_21
    :goto_15
    new-instance v9, LV/g;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v8}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    iput-object v3, v9, LV/g;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v1, v8}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, v9, LV/g;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v8, LA1/d;

    const/16 v21, 0x1

    const v3, 0x44faf204

    move-object v1, v8

    move-object v12, v2

    move-object v2, v4

    move-object/from16 v4, v19

    move-object v3, v5

    move-object/from16 v24, v4

    const/4 v5, 0x1

    move-object v4, v9

    move v9, v5

    move-object/from16 v5, p1

    move v9, v6

    move-object/from16 v25, v22

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, LA1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v1, La0/B0;->a:LZ3/x;

    new-instance v1, La0/E;

    invoke-direct {v1, v8}, La0/E;-><init>(LA1/d;)V

    new-instance v3, LV/t;

    invoke-direct {v3, v1}, LV/t;-><init>(La0/E;)V

    invoke-virtual {v12, v3}, La0/q;->a0(Ljava/lang/Object;)V

    goto :goto_14

    :goto_16
    invoke-virtual {v12, v1}, La0/q;->p(Z)V

    move-object v8, v3

    check-cast v8, LV/t;

    invoke-virtual {v12, v1}, La0/q;->p(Z)V

    const v1, 0x2388e847

    invoke-virtual {v12, v1}, La0/q;->R(I)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v9}, La0/q;->R(I)V

    invoke-virtual {v12, v13}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v12, v5}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v12}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_23

    if-ne v2, v7, :cond_22

    goto :goto_18

    :cond_22
    :goto_17
    const/4 v1, 0x0

    goto :goto_19

    :cond_23
    :goto_18
    new-instance v2, LW/q;

    invoke-direct {v2, v13}, LW/q;-><init>(LV/J;)V

    invoke-virtual {v12, v2}, La0/q;->a0(Ljava/lang/Object;)V

    goto :goto_17

    :goto_19
    invoke-virtual {v12, v1}, La0/q;->p(Z)V

    move-object v6, v2

    check-cast v6, LW/q;

    invoke-virtual {v12, v1}, La0/q;->p(Z)V

    const v4, -0x1d58f75c

    invoke-virtual {v12, v4}, La0/q;->R(I)V

    invoke-virtual {v12}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_24

    new-instance v2, LV/h;

    invoke-direct {v2}, LV/h;-><init>()V

    invoke-virtual {v12, v2}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_24
    invoke-virtual {v12, v1}, La0/q;->p(Z)V

    move-object v3, v2

    check-cast v3, LV/h;

    const v2, 0x2e20b340

    invoke-virtual {v12, v2}, La0/q;->R(I)V

    invoke-virtual {v12, v4}, La0/q;->R(I)V

    invoke-virtual {v12}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_25

    invoke-static {v12}, La0/d;->w(La0/m;)LUc/e;

    move-result-object v1

    new-instance v2, La0/y;

    invoke-direct {v2, v1}, La0/y;-><init>(LUc/e;)V

    invoke-virtual {v12, v2}, La0/q;->a0(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, La0/q;->p(Z)V

    check-cast v1, La0/y;

    iget-object v1, v1, La0/y;->a:LUc/e;

    invoke-virtual {v12, v2}, La0/q;->p(Z)V

    invoke-virtual {v12, v9}, La0/q;->R(I)V

    invoke-virtual {v12, v13}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v12, v5}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    invoke-virtual {v12}, La0/q;->G()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_27

    if-ne v9, v7, :cond_26

    goto :goto_1b

    :cond_26
    :goto_1a
    const/4 v2, 0x0

    goto :goto_1c

    :cond_27
    :goto_1b
    new-instance v9, LV/n;

    invoke-direct {v9, v1}, LV/n;-><init>(LUc/e;)V

    invoke-virtual {v12, v9}, La0/q;->a0(Ljava/lang/Object;)V

    goto :goto_1a

    :goto_1c
    invoke-virtual {v12, v2}, La0/q;->p(Z)V

    check-cast v9, LV/n;

    iget-object v1, v13, LV/J;->n:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    and-int/lit8 v1, v20, 0x70

    const v2, -0x3996bbe7

    invoke-virtual {v12, v2}, La0/q;->R(I)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move v2, v1

    move-object/from16 v1, p1

    move/from16 v26, v2

    const/16 v18, 0x0

    move-object v2, v3

    move-object/from16 p9, v3

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    move-object/from16 v27, v6

    move-object/from16 v6, p7

    move-object/from16 v28, v7

    const/16 v16, 0x0

    move-object/from16 v7, v16

    move-object/from16 p10, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object/from16 v9, p8

    move-object/from16 v10, v16

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v14}, La0/q;->R(I)V

    move/from16 v2, v18

    move v3, v2

    const/16 v4, 0xa

    :goto_1d
    if-ge v2, v4, :cond_28

    aget-object v5, v1, v2

    invoke-virtual {v12, v5}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    const/4 v10, 0x1

    add-int/2addr v2, v10

    goto :goto_1d

    :cond_28
    const/4 v10, 0x1

    invoke-virtual {v12}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    const/16 v22, 0x0

    move-object/from16 v9, v28

    if-nez v3, :cond_2a

    if-ne v1, v9, :cond_29

    goto :goto_1e

    :cond_29
    move-object/from16 v31, v9

    move-object v15, v12

    move/from16 v2, v18

    const/16 v23, 0x0

    goto :goto_1f

    :cond_2a
    :goto_1e
    new-instance v8, LV/y;

    move-object v1, v8

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p10

    move-object/from16 v6, p8

    const/16 v23, 0x0

    move-object/from16 v7, v23

    move-object v14, v8

    move-object/from16 v8, v16

    move-object/from16 v31, v9

    move-object/from16 v9, p9

    move/from16 v10, v22

    move-object/from16 v11, p7

    move-object v15, v12

    move-object/from16 v12, v23

    invoke-direct/range {v1 .. v12}, LV/y;-><init>(LU/t;ZLV/J;LV/t;LU/d;LU/c;LV/n;LV/h;ILm0/b;Lm0/c;)V

    invoke-virtual {v15, v14}, La0/q;->a0(Ljava/lang/Object;)V

    move-object v1, v14

    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v15, v2}, La0/q;->p(Z)V

    move-object/from16 v19, v1

    check-cast v19, Lsb/n;

    invoke-virtual {v15, v2}, La0/q;->p(Z)V

    move-object/from16 v9, p10

    move/from16 v1, v26

    invoke-static {v9, v13, v15, v1}, LG5/Q2;->c(LV/t;LV/J;La0/m;I)V

    sget-object v2, LS/I;->Vertical:LS/I;

    iget-object v1, v13, LV/J;->l:LV/G;

    invoke-interface {v0, v1}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v1

    iget-object v3, v13, LV/J;->m:LV/b;

    invoke-interface {v1, v3}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v1

    const-string v3, "<this>"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "itemProvider"

    invoke-static {v9, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v24

    move-object/from16 v5, v27

    invoke-static {v5, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "orientation"

    invoke-static {v2, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x114aa1e3

    invoke-virtual {v15, v6}, La0/q;->R(I)V

    const v6, 0x2e20b340

    invoke-virtual {v15, v6}, La0/q;->R(I)V

    const v6, -0x1d58f75c

    invoke-virtual {v15, v6}, La0/q;->R(I)V

    invoke-virtual {v15}, La0/q;->G()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, v31

    if-ne v6, v7, :cond_2b

    invoke-static {v15}, La0/d;->w(La0/m;)LUc/e;

    move-result-object v6

    new-instance v8, La0/y;

    invoke-direct {v8, v6}, La0/y;-><init>(LUc/e;)V

    invoke-virtual {v15, v8}, La0/q;->a0(Ljava/lang/Object;)V

    move-object v6, v8

    :cond_2b
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, La0/q;->p(Z)V

    check-cast v6, La0/y;

    iget-object v6, v6, La0/y;->a:LUc/e;

    invoke-virtual {v15, v8}, La0/q;->p(Z)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v9, v5, v2, v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, -0x21de6e89

    invoke-virtual {v15, v11}, La0/q;->R(I)V

    move v11, v8

    move v12, v11

    const/4 v14, 0x4

    :goto_20
    if-ge v12, v14, :cond_2c

    aget-object v8, v10, v12

    invoke-virtual {v15, v8}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v11, v8

    const/4 v8, 0x1

    add-int/2addr v12, v8

    const/4 v8, 0x0

    goto :goto_20

    :cond_2c
    const/4 v8, 0x1

    invoke-virtual {v15}, La0/q;->G()Ljava/lang/Object;

    move-result-object v10

    if-nez v11, :cond_2e

    if-ne v10, v7, :cond_2d

    goto :goto_21

    :cond_2d
    move/from16 v0, p3

    move-object/from16 v24, v4

    const/4 v4, 0x0

    const/4 v14, 0x5

    goto :goto_25

    :cond_2e
    :goto_21
    sget-object v10, LS/I;->Vertical:LS/I;

    if-ne v2, v10, :cond_2f

    move v10, v8

    goto :goto_22

    :cond_2f
    const/4 v10, 0x0

    :goto_22
    new-instance v11, LB0/a;

    const/16 v12, 0xe

    invoke-direct {v11, v12, v9}, LB0/a;-><init>(ILjava/lang/Object;)V

    new-instance v12, LV9/a;

    new-instance v14, LA4/a;

    const/16 v8, 0xb

    invoke-direct {v14, v8, v5}, LA4/a;-><init>(ILjava/lang/Object;)V

    new-instance v8, LB0/E;

    const/4 v0, 0x1

    invoke-direct {v8, v0, v5, v9}, LB0/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v0, p3

    move-object/from16 v24, v4

    const/4 v4, 0x0

    invoke-direct {v12, v14, v8, v0}, LV9/a;-><init>(LA4/a;LB0/E;Z)V

    if-eqz p5, :cond_30

    new-instance v8, LW/t;

    invoke-direct {v8, v10, v6, v5}, LW/t;-><init>(ZLUc/e;LW/q;)V

    move-object/from16 v33, v8

    goto :goto_23

    :cond_30
    move-object/from16 v33, v23

    :goto_23
    if-eqz p5, :cond_31

    new-instance v8, LPc/e;

    const/4 v14, 0x5

    invoke-direct {v8, v9, v14, v6, v5}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v34, v8

    goto :goto_24

    :cond_31
    const/4 v14, 0x5

    move-object/from16 v34, v23

    :goto_24
    new-instance v35, LO7/a;

    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    new-instance v5, LW/r;

    move-object/from16 v29, v5

    move-object/from16 v30, v11

    move/from16 v31, v10

    move-object/from16 v32, v12

    invoke-direct/range {v29 .. v35}, LW/r;-><init>(LB0/a;ZLV9/a;LW/t;LPc/e;LO7/a;)V

    sget-object v6, LC0/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v10, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    invoke-direct {v10, v5, v4}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lsb/k;Z)V

    invoke-virtual {v15, v10}, La0/q;->a0(Ljava/lang/Object;)V

    :goto_25
    invoke-virtual {v15, v4}, La0/q;->p(Z)V

    check-cast v10, Lm0/m;

    invoke-interface {v1, v10}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v1

    invoke-virtual {v15, v4}, La0/q;->p(Z)V

    sget v5, LR/k;->a:F

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, LS/I;->Vertical:LS/I;

    if-ne v2, v5, :cond_32

    sget-object v5, LR/k;->c:Lm0/m;

    goto :goto_26

    :cond_32
    sget-object v5, LR/k;->b:Lm0/m;

    :goto_26
    invoke-interface {v1, v5}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "beyondBoundsInfo"

    move-object/from16 v6, p9

    invoke-static {v6, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, -0x3b2ead9

    invoke-virtual {v15, v5}, La0/q;->R(I)V

    sget-object v5, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v15, v5}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH0/k;

    const v8, 0x44faf204

    invoke-virtual {v15, v8}, La0/q;->R(I)V

    invoke-virtual {v15, v13}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v15}, La0/q;->G()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_33

    if-ne v10, v7, :cond_34

    :cond_33
    new-instance v10, LV/i;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v15, v10}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_34
    invoke-virtual {v15, v4}, La0/q;->p(Z)V

    check-cast v10, LV/i;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v10, v6, v8, v5, v2}, [Ljava/lang/Object;

    move-result-object v6

    const v8, -0x21de6e89

    invoke-virtual {v15, v8}, La0/q;->R(I)V

    move v8, v4

    move v12, v8

    :goto_27
    if-ge v12, v14, :cond_35

    aget-object v11, v6, v12

    invoke-virtual {v15, v11}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    const/4 v11, 0x1

    add-int/2addr v12, v11

    goto :goto_27

    :cond_35
    invoke-virtual {v15}, La0/q;->G()Ljava/lang/Object;

    move-result-object v6

    const-string v11, "layoutDirection"

    if-nez v8, :cond_36

    if-ne v6, v7, :cond_37

    :cond_36
    new-instance v6, LW/e;

    move-object/from16 v7, v24

    invoke-static {v10, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v15, v6}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_37
    invoke-virtual {v15, v4}, La0/q;->p(Z)V

    check-cast v6, Lm0/m;

    invoke-interface {v1, v6}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v1

    invoke-virtual {v15, v4}, La0/q;->p(Z)V

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "overscrollEffect"

    move-object/from16 v7, v25

    invoke-static {v7, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, LR/z;->d()Lm0/m;

    move-result-object v4

    invoke-interface {v1, v4}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v10

    sget-object v1, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v15, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH0/k;

    invoke-static {v1, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    xor-int/2addr v4, v0

    sget-object v5, LH0/k;->Rtl:LH0/k;

    if-ne v1, v5, :cond_38

    sget-object v1, LS/I;->Vertical:LS/I;

    if-eq v2, v1, :cond_38

    move v4, v0

    :cond_38
    sget-object v1, LS/c0;->a:LS/Q;

    invoke-static {v10, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, LS/Z;

    iget-object v5, v13, LV/J;->c:LP7/c;

    move-object v1, v11

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, LS/Z;-><init>(LS/I;LV/J;ZLP7/c;LS/g;LR/z;Z)V

    new-instance v1, Lm0/g;

    invoke-direct {v1, v11}, Lm0/g;-><init>(Lsb/o;)V

    invoke-interface {v10, v1}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v17

    const/16 v21, 0x0

    iget-object v1, v13, LV/J;->s:LG5/J2;

    move-object/from16 v16, v9

    move-object/from16 v18, v1

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v21}, LG5/a3;->a(LV/t;Lm0/m;LG5/J2;Lsb/n;La0/m;I)V

    move/from16 v8, v22

    move-object/from16 v11, v23

    move-object v12, v11

    :goto_28
    invoke-virtual {v15}, La0/q;->r()La0/i0;

    move-result-object v15

    if-nez v15, :cond_39

    goto :goto_29

    :cond_39
    new-instance v14, LV/v;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p11

    move-object v0, v14

    move/from16 v14, p13

    move-object/from16 v36, v15

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, LV/v;-><init>(Lm0/m;LV/J;LU/t;ZLS/g;ZILm0/b;LU/d;Lm0/c;LU/c;LX1/d;II)V

    move-object/from16 v1, v36

    iput-object v0, v1, La0/i0;->d:Lsb/n;

    :goto_29
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v6}, Lk0/h;->p(Lk0/h;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Lk0/h;->c()V

    throw v0
.end method

.method public static final c(LV/t;LV/J;La0/m;I)V
    .locals 2

    check-cast p2, La0/q;

    const v0, 0x306dc6

    invoke-virtual {p2, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v0, v0, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v0, p0, LV/t;->a:LW/a;

    invoke-virtual {v0}, LW/a;->getItemCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1, p0}, LV/J;->d(LV/t;)V

    :cond_6
    :goto_4
    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, LV/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, LV/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, La0/i0;->d:Lsb/n;

    :goto_5
    return-void
.end method

.method public static final d(Lx1/r;F)Lx1/r;
    .locals 2

    const-string v0, "$this$cornerRadius"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz1/G;

    new-instance v1, Lf2/c;

    invoke-direct {v1, p1}, Lf2/c;-><init>(F)V

    invoke-direct {v0, v1}, Lz1/G;-><init>(Lf2/c;)V

    invoke-interface {p0, v0}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcc/T;LX4/i;)Lcc/T;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcc/T;->c:I

    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcc/T;->m:Lcc/T;

    goto :goto_0

    :cond_0
    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcc/T;->n:I

    invoke-virtual {p1, p0}, LX4/i;->f(I)Lcc/T;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f(Lcc/A;LX4/i;)Lcc/T;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcc/A;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcc/A;->j:Lcc/T;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcc/A;->c:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcc/A;->k:I

    invoke-virtual {p1, p0}, LX4/i;->f(I)Lcc/T;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final g(Lcc/A;LX4/i;)Lcc/T;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcc/A;->c:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcc/A;->g:Lcc/T;

    const-string p1, "getReturnType(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcc/A;->h:I

    invoke-virtual {p1, p0}, LX4/i;->f(I)Lcc/T;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Function"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(Lcc/I;LX4/i;)Lcc/T;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcc/I;->c:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcc/I;->g:Lcc/T;

    const-string p1, "getReturnType(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcc/I;->h:I

    invoke-virtual {p1, p0}, LX4/i;->f(I)Lcc/T;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Property"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final i(Lcc/b0;LX4/i;)Lcc/T;
    .locals 3

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcc/b0;->c:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcc/b0;->f:Lcc/T;

    const-string p1, "getType(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcc/b0;->g:I

    invoke-virtual {p1, p0}, LX4/i;->f(I)Lcc/T;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No type in ProtoBuf.ValueParameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
