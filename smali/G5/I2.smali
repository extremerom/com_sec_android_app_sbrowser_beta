.class public abstract LG5/I2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lm0/m;LV/J;LU/t;ZLU/d;Lm0/b;LS/g;ZLX1/d;La0/m;I)V
    .locals 25

    move-object/from16 v15, p9

    check-cast v15, La0/q;

    const v0, -0x2c266969

    invoke-virtual {v15, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p10, 0xe

    move-object/from16 v14, p0

    if-nez v0, :cond_1

    invoke-virtual {v15, v14}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p10, v0

    goto :goto_1

    :cond_1
    move/from16 v0, p10

    :goto_1
    and-int/lit8 v1, p10, 0x70

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    or-int/lit16 v1, v0, 0xd80

    const v2, 0xe000

    and-int v2, p10, v2

    if-nez v2, :cond_3

    or-int/lit16 v1, v0, 0x2d80

    :cond_3
    const/high16 v0, 0x30000

    or-int/2addr v0, v1

    const/high16 v2, 0x380000

    and-int v3, p10, v2

    if-nez v3, :cond_4

    const/high16 v0, 0xb0000

    or-int/2addr v0, v1

    :cond_4
    const/high16 v1, 0xc00000

    or-int/2addr v0, v1

    const/high16 v1, 0xe000000

    and-int v3, p10, v1

    move-object/from16 v13, p8

    if-nez v3, :cond_6

    invoke-virtual {v15, v13}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x4000000

    goto :goto_2

    :cond_5
    const/high16 v3, 0x2000000

    :goto_2
    or-int/2addr v0, v3

    :cond_6
    const v3, 0xb6db6db

    and-int/2addr v3, v0

    const v4, 0x2492492

    if-ne v3, v4, :cond_8

    invoke-virtual {v15}, La0/q;->x()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v15}, La0/q;->K()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    goto/16 :goto_6

    :cond_8
    :goto_3
    invoke-virtual {v15}, La0/q;->M()V

    and-int/lit8 v3, p10, 0x1

    const v4, -0x38e071

    if-eqz v3, :cond_a

    invoke-virtual {v15}, La0/q;->w()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v15}, La0/q;->K()V

    and-int/2addr v0, v4

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    move/from16 v22, p7

    goto :goto_5

    :cond_a
    :goto_4
    const v3, 0x57a86af4

    invoke-virtual {v15, v3}, La0/q;->R(I)V

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v6, LV/J;->t:Lo3/c;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x1e7b2b64

    invoke-virtual {v15, v9}, La0/q;->R(I)V

    invoke-virtual {v15, v7}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v15, v8}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v15}, La0/q;->G()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_b

    sget-object v7, La0/l;->a:La0/V;

    if-ne v8, v7, :cond_c

    :cond_b
    new-instance v8, LV/K;

    invoke-direct {v8, v3, v3}, LV/K;-><init>(II)V

    invoke-virtual {v15, v8}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v15, v3}, La0/q;->p(Z)V

    check-cast v8, Lsb/a;

    const/16 v7, 0x48

    invoke-static {v5, v6, v8, v15, v7}, LG5/R3;->e([Ljava/lang/Object;Lo3/c;Lsb/a;La0/m;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LV/J;

    invoke-virtual {v15, v3}, La0/q;->p(Z)V

    int-to-float v6, v3

    new-instance v7, LU/t;

    invoke-direct {v7, v6, v6, v6, v6}, LU/t;-><init>(FFFF)V

    sget-object v6, LU/e;->b:LU/a;

    sget-object v8, Lm0/a;->g:Lm0/b;

    invoke-static {v15}, LG5/i2;->e(La0/m;)LS/g;

    move-result-object v9

    and-int/2addr v0, v4

    const/4 v4, 0x1

    move/from16 v18, v3

    move/from16 v22, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_5
    invoke-virtual {v15}, La0/q;->q()V

    and-int/lit8 v3, v0, 0xe

    or-int/lit16 v3, v3, 0x6000

    and-int/lit16 v4, v0, 0x380

    or-int/2addr v3, v4

    and-int/lit16 v4, v0, 0x1c00

    or-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x3

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x9

    and-int/2addr v1, v3

    or-int v23, v2, v1

    shr-int/lit8 v0, v0, 0x12

    and-int/lit16 v12, v0, 0x380

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v7, v20

    move-object/from16 v8, v19

    move-object/from16 v11, p8

    move/from16 v24, v12

    move-object v12, v15

    move/from16 v13, v23

    move/from16 v14, v24

    invoke-static/range {v0 .. v14}, LG5/Q2;->b(Lm0/m;LV/J;LU/t;ZLS/g;ZILm0/b;LU/d;Lm0/c;LU/c;LX1/d;La0/m;II)V

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    :goto_6
    invoke-virtual {v15}, La0/q;->r()La0/i0;

    move-result-object v11

    if-nez v11, :cond_d

    goto :goto_7

    :cond_d
    new-instance v12, LV/f;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, LV/f;-><init>(Lm0/m;LV/J;LU/t;ZLU/d;Lm0/b;LS/g;ZLX1/d;I)V

    iput-object v12, v11, La0/i0;->d:Lsb/n;

    :goto_7
    return-void
.end method

.method public static final b(Lyc/w;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object p0

    sget-object v0, LGb/p;->q:Lhc/c;

    invoke-interface {p0, v0}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, LKb/b;->a()Ljava/util/Map;

    move-result-object p0

    sget-object v0, LGb/q;->e:Lhc/f;

    invoke-static {v0, p0}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmc/g;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lmc/k;

    iget-object p0, p0, Lmc/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final c(LGb/i;LKb/h;Lyc/w;Ljava/util/List;Ljava/util/ArrayList;Lyc/w;Z)Lyc/A;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-eqz p2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, p3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/w;

    invoke-static {v5}, LG5/B;->b(Lyc/w;)Lyc/F;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-static {p2}, LG5/B;->b(Lyc/w;)Lyc/F;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    invoke-static {v2, v4}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    sget-object v7, LKb/g;->a:LKb/f;

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_3

    check-cast v6, Lyc/w;

    invoke-static {v6}, LG5/B;->b(Lyc/w;)Lyc/F;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_3

    :cond_3
    invoke-static {}, Lfb/o;->l()V

    throw v3

    :cond_4
    invoke-static {p5}, LG5/B;->b(Lyc/w;)Lyc/F;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    add-int/2addr p5, p4

    if-nez p2, :cond_5

    move v0, v1

    :cond_5
    add-int/2addr p5, v0

    if-eqz p6, :cond_6

    invoke-virtual {p0, p5}, LGb/i;->w(I)LJb/f;

    move-result-object p4

    goto :goto_4

    :cond_6
    sget-object p4, LGb/q;->a:Lhc/f;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p6, "Function"

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, LGb/i;->k(Ljava/lang/String;)LJb/f;

    move-result-object p4

    :goto_4
    if-eqz p2, :cond_9

    sget-object p2, LGb/p;->p:Lhc/c;

    invoke-interface {p1, p2}, LKb/h;->m0(Lhc/c;)Z

    move-result p5

    if-eqz p5, :cond_7

    goto :goto_5

    :cond_7
    new-instance p5, LKb/j;

    sget-object p6, Lfb/w;->a:Lfb/w;

    invoke-direct {p5, p0, p2, p6}, LKb/j;-><init>(LGb/i;Lhc/c;Ljava/util/Map;)V

    invoke-static {p1, p5}, Lfb/n;->Q(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    move-object p1, v7

    goto :goto_5

    :cond_8
    new-instance p2, LKb/i;

    invoke-direct {p2, v1, p1}, LKb/i;-><init>(ILjava/util/List;)V

    move-object p1, p2

    :cond_9
    :goto_5
    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sget-object p3, LGb/p;->q:Lhc/c;

    invoke-interface {p1, p3}, LKb/h;->m0(Lhc/c;)Z

    move-result p5

    if-eqz p5, :cond_a

    goto :goto_7

    :cond_a
    new-instance p5, LKb/j;

    sget-object p6, LGb/q;->e:Lhc/f;

    new-instance v0, Lmc/k;

    invoke-direct {v0, p2}, Lmc/k;-><init>(I)V

    new-instance p2, Ldb/j;

    invoke-direct {p2, p6, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Lfb/C;->h(Ldb/j;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p5, p0, p3, p2}, LKb/j;-><init>(LGb/i;Lhc/c;Ljava/util/Map;)V

    invoke-static {p1, p5}, Lfb/n;->Q(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    new-instance v7, LKb/i;

    invoke-direct {v7, v1, p0}, LKb/i;-><init>(ILjava/util/List;)V

    :goto_6
    move-object p1, v7

    :cond_c
    :goto_7
    invoke-static {p1}, Lyc/c;->C(LKb/h;)Lyc/H;

    move-result-object p0

    invoke-static {p0, p4, v2}, Lyc/c;->t(Lyc/H;LJb/f;Ljava/util/List;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lyc/w;)Lhc/f;
    .locals 2

    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object p0

    sget-object v0, LGb/p;->r:Lhc/c;

    invoke-interface {p0, v0}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, LKb/b;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->V(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lmc/x;

    if-eqz v1, :cond_1

    check-cast p0, Lmc/x;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    iget-object p0, p0, Lmc/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lhc/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static e(Ljava/lang/Integer;)Ll7/v;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Ll7/k;->a:Ll7/k;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ll7/j;->l(I)Ll7/j;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lyc/w;)Ljava/util/List;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LG5/I2;->j(Lyc/w;)Z

    invoke-static {p0}, LG5/I2;->b(Lyc/w;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/Q;

    invoke-virtual {v1}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static final g(LJb/i;)LHb/l;
    .locals 4

    instance-of v0, p0, LJb/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, LGb/i;->I(LJb/i;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object p0

    invoke-virtual {p0}, Lhc/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lhc/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, LHb/n;->c:LHb/n;

    invoke-virtual {p0}, Lhc/d;->g()Lhc/c;

    move-result-object v2

    invoke-virtual {v2}, Lhc/c;->b()Lhc/c;

    move-result-object v2

    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v3, "asString(...)"

    invoke-static {p0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, p0}, LHb/n;->a(Lhc/c;Ljava/lang/String;)LHb/m;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v1, p0, LHb/m;->a:LHb/l;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static final h(Lyc/w;)Lyc/w;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LG5/I2;->j(Lyc/w;)Z

    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object v0

    sget-object v1, LGb/p;->p:Lhc/c;

    invoke-interface {v0, v1}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LG5/I2;->b(Lyc/w;)I

    move-result v0

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/Q;

    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final i(Lyc/w;)Ljava/util/List;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LG5/I2;->j(Lyc/w;)Z

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, LG5/I2;->b(Lyc/w;)I

    move-result v1

    invoke-static {p0}, LG5/I2;->j(Lyc/w;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object p0

    sget-object v2, LGb/p;->p:Lhc/c;

    invoke-interface {p0, v2}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lyc/w;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, LG5/I2;->g(LJb/i;)LHb/l;

    move-result-object p0

    sget-object v1, LHb/h;->c:LHb/h;

    invoke-static {p0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LHb/k;->c:LHb/k;

    invoke-static {p0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final k(Lyc/w;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, LG5/I2;->g(LJb/i;)LHb/l;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, LHb/k;->c:LHb/k;

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final l(Lx1/r;Z)Lx1/r;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, Lz1/A0;

    const/high16 v0, -0x16000000

    const-string v1, "true"

    invoke-direct {p1, v0, v1}, Lz1/A0;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    :cond_0
    return-object p0
.end method
