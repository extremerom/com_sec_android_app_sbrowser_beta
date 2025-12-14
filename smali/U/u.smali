.class public final LU/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/x;


# instance fields
.field public final synthetic a:LU/q;

.field public final synthetic b:Ltb/m;

.field public final synthetic c:F

.field public final synthetic d:LU/A;

.field public final synthetic e:LG5/x2;


# direct methods
.method public constructor <init>(LU/q;Lsb/q;FLU/A;LG5/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/u;->a:LU/q;

    check-cast p2, Ltb/m;

    iput-object p2, p0, LU/u;->b:Ltb/m;

    iput p3, p0, LU/u;->c:F

    iput-object p4, p0, LU/u;->d:LU/A;

    iput-object p5, p0, LU/u;->e:LG5/x2;

    return-void
.end method


# virtual methods
.method public final a(LB0/I;Ljava/util/List;J)Lz0/y;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [Lz0/G;

    new-instance v6, LD4/d;

    iget-object v13, v0, LU/u;->e:LG5/x2;

    iget-object v10, v0, LU/u;->b:Ltb/m;

    iget-object v12, v0, LU/u;->d:LU/A;

    iget-object v1, v0, LU/u;->a:LU/q;

    iget v2, v0, LU/u;->c:F

    move-object v8, v6

    move-object v9, v1

    move v11, v2

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v15}, LD4/d;-><init>(LU/q;Lsb/q;FLU/A;LG5/x2;Ljava/util/List;[Lz0/G;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    sget-object v3, LU/q;->Horizontal:LU/q;

    if-ne v1, v3, :cond_0

    invoke-static/range {p3 .. p4}, LH0/a;->d(J)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p4}, LH0/a;->c(J)I

    move-result v4

    :goto_0
    if-ne v1, v3, :cond_1

    invoke-static/range {p3 .. p4}, LH0/a;->b(J)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-static/range {p3 .. p4}, LH0/a;->a(J)I

    move-result v5

    :goto_1
    if-ne v1, v3, :cond_2

    invoke-static/range {p3 .. p4}, LH0/a;->c(J)I

    move-result v9

    goto :goto_2

    :cond_2
    invoke-static/range {p3 .. p4}, LH0/a;->d(J)I

    move-result v9

    :goto_2
    if-ne v1, v3, :cond_3

    invoke-static/range {p3 .. p4}, LH0/a;->a(J)I

    move-result v3

    goto :goto_3

    :cond_3
    invoke-static/range {p3 .. p4}, LH0/a;->b(J)I

    move-result v3

    :goto_3
    invoke-interface {v7, v2}, LH0/b;->j(F)I

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_4
    iget-object v10, v6, LD4/d;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v6, LD4/d;->f:Ljava/lang/Object;

    check-cast v11, [Lz0/G;

    const-string v7, "orientation"

    iget-object v0, v6, LD4/d;->g:Ljava/lang/Object;

    check-cast v0, [LU/w;

    move/from16 v18, v9

    const v9, 0x7fffffff

    if-ge v12, v8, :cond_9

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lz0/w;

    aget-object v0, v0, v12

    if-eqz v0, :cond_4

    iget v0, v0, LU/w;->a:F

    :goto_5
    const/16 v19, 0x0

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :goto_6
    cmpl-float v20, v0, v19

    if-lez v20, :cond_5

    add-float/2addr v14, v0

    add-int/lit8 v13, v13, 0x1

    move/from16 p4, v3

    move/from16 v21, v4

    goto :goto_b

    :cond_5
    aget-object v0, v11, v12

    if-nez v0, :cond_8

    if-ne v5, v9, :cond_6

    goto :goto_7

    :cond_6
    sub-int v9, v5, v15

    :goto_7
    invoke-static {v1, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU/q;->Horizontal:LU/q;

    if-ne v1, v0, :cond_7

    const/4 v0, 0x0

    invoke-static {v0, v9, v0, v3}, LG5/S2;->a(IIII)J

    move-result-wide v19

    :goto_8
    move/from16 p4, v3

    move/from16 v21, v4

    move-wide/from16 v3, v19

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    invoke-static {v0, v3, v0, v9}, LG5/S2;->a(IIII)J

    move-result-wide v19

    goto :goto_8

    :goto_9
    invoke-interface {v10, v3, v4}, Lz0/w;->o(J)Lz0/G;

    move-result-object v0

    goto :goto_a

    :cond_8
    move/from16 p4, v3

    move/from16 v21, v4

    :goto_a
    sub-int v3, v5, v15

    invoke-virtual {v6, v0}, LD4/d;->g(Lz0/G;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-virtual {v6, v0}, LD4/d;->g(Lz0/G;)I

    move-result v3

    add-int v3, v3, v16

    add-int/2addr v15, v3

    invoke-virtual {v6, v0}, LD4/d;->e(Lz0/G;)I

    move-result v3

    move/from16 v4, v17

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    aput-object v0, v11, v12

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v3, p4

    move/from16 v9, v18

    move/from16 v4, v21

    goto/16 :goto_4

    :cond_9
    move/from16 p4, v3

    move/from16 v21, v4

    move/from16 v4, v17

    if-nez v13, :cond_a

    sub-int v15, v15, v16

    move/from16 v9, p4

    move v12, v4

    const/4 v0, 0x0

    goto/16 :goto_18

    :cond_a
    const/4 v3, 0x0

    cmpl-float v12, v14, v3

    if-lez v12, :cond_b

    if-eq v5, v9, :cond_b

    move v3, v5

    goto :goto_c

    :cond_b
    move/from16 v3, v21

    :goto_c
    sub-int/2addr v3, v15

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v13, v2

    sub-int/2addr v3, v13

    if-lez v12, :cond_c

    int-to-float v2, v3

    div-float v19, v2, v14

    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    const/16 v19, 0x0

    :goto_d
    invoke-static {v2, v8}, LG5/d3;->l(II)Lzb/d;

    move-result-object v12

    invoke-virtual {v12}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v12, 0x0

    :goto_e
    move-object v14, v2

    check-cast v14, Lzb/c;

    iget-boolean v14, v14, Lzb/c;->c:Z

    if-eqz v14, :cond_e

    move-object v14, v2

    check-cast v14, Lzb/c;

    invoke-virtual {v14}, Lzb/c;->b()I

    move-result v14

    aget-object v14, v0, v14

    if-eqz v14, :cond_d

    iget v14, v14, LU/w;->a:F

    goto :goto_f

    :cond_d
    const/4 v14, 0x0

    :goto_f
    mul-float v14, v14, v19

    invoke-static {v14}, LG5/p2;->e(F)I

    move-result v14

    add-int/2addr v12, v14

    goto :goto_e

    :cond_e
    sub-int/2addr v3, v12

    move v12, v4

    const/4 v2, 0x0

    move v4, v3

    const/4 v3, 0x0

    :goto_10
    if-ge v2, v8, :cond_15

    aget-object v14, v11, v2

    if-nez v14, :cond_14

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz0/w;

    aget-object v9, v0, v2

    move-object/from16 v20, v0

    if-eqz v9, :cond_f

    iget v0, v9, LU/w;->a:F

    :goto_11
    const/16 v22, 0x0

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    goto :goto_11

    :goto_12
    cmpl-float v23, v0, v22

    if-lez v23, :cond_13

    invoke-static {v4}, Ljava/lang/Integer;->signum(I)I

    move-result v23

    sub-int v4, v4, v23

    mul-float v0, v0, v19

    invoke-static {v0}, LG5/p2;->e(F)I

    move-result v0

    add-int v0, v0, v23

    move/from16 p3, v4

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v9, :cond_10

    iget-boolean v4, v9, LU/w;->b:Z

    goto :goto_13

    :cond_10
    move/from16 v4, v16

    :goto_13
    if-eqz v4, :cond_11

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_11

    move v4, v0

    goto :goto_14

    :cond_11
    const/4 v4, 0x0

    :goto_14
    invoke-static {v1, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, LU/q;->Horizontal:LU/q;

    if-ne v1, v9, :cond_12

    move/from16 v9, p4

    move-object/from16 v23, v1

    const/4 v1, 0x0

    invoke-static {v4, v0, v1, v9}, LG5/S2;->a(IIII)J

    move-result-wide v24

    :goto_15
    move-wide/from16 v0, v24

    goto :goto_16

    :cond_12
    move/from16 v9, p4

    move-object/from16 v23, v1

    const/4 v1, 0x0

    invoke-static {v1, v9, v4, v0}, LG5/S2;->a(IIII)J

    move-result-wide v24

    goto :goto_15

    :goto_16
    invoke-interface {v14, v0, v1}, Lz0/w;->o(J)Lz0/G;

    move-result-object v0

    invoke-virtual {v6, v0}, LD4/d;->g(Lz0/G;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v6, v0}, LD4/d;->e(Lz0/G;)I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput-object v0, v11, v2

    move/from16 v4, p3

    move v12, v3

    move v3, v1

    goto :goto_17

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All weights <= 0 should have placeables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move/from16 v9, p4

    move-object/from16 v20, v0

    move-object/from16 v23, v1

    const/16 v22, 0x0

    :goto_17
    add-int/lit8 v2, v2, 0x1

    move/from16 p4, v9

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    const v9, 0x7fffffff

    goto/16 :goto_10

    :cond_15
    move/from16 v9, p4

    add-int/2addr v3, v13

    sub-int/2addr v5, v15

    if-le v3, v5, :cond_16

    move v0, v5

    goto :goto_18

    :cond_16
    move v0, v3

    :goto_18
    add-int/2addr v15, v0

    move/from16 v4, v21

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v9, v1, :cond_17

    iget-object v1, v6, LD4/d;->c:Ljava/lang/Object;

    check-cast v1, LU/A;

    sget-object v2, LU/A;->Expand:LU/A;

    if-ne v1, v2, :cond_17

    const/4 v1, 0x0

    goto :goto_19

    :cond_17
    move/from16 v9, v18

    const/4 v1, 0x0

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v9, v3

    :goto_19
    new-array v7, v8, [I

    move v2, v1

    :goto_1a
    if-ge v2, v8, :cond_18

    aput v1, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_18
    new-array v3, v8, [I

    move v10, v1

    :goto_1b
    if-ge v10, v8, :cond_19

    aget-object v1, v11, v10

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, LD4/d;->g(Lz0/G;)I

    move-result v1

    aput v1, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    :cond_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object v4

    iget-object v1, v6, LD4/d;->b:Ljava/lang/Object;

    check-cast v1, Ltb/m;

    move-object/from16 v5, p1

    move-object v10, v6

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lsb/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LU/v;

    invoke-direct {v1, v9, v0, v8, v7}, LU/v;-><init>(III[I)V

    move-object/from16 v2, p0

    iget-object v2, v2, LU/u;->a:LU/q;

    sget-object v3, LU/q;->Horizontal:LU/q;

    if-ne v2, v3, :cond_1a

    goto :goto_1c

    :cond_1a
    move/from16 v26, v9

    move v9, v0

    move/from16 v0, v26

    :goto_1c
    new-instance v2, LPc/e;

    const/4 v3, 0x3

    move-object/from16 v4, p1

    invoke-direct {v2, v10, v3, v1, v4}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lfb/w;->a:Lfb/w;

    invoke-virtual {v4, v0, v9, v1, v2}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object v0

    return-object v0
.end method
