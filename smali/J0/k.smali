.class public abstract LJ0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ0/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ0/k;->a:LJ0/j;

    return-void
.end method

.method public static final a(Lsb/k;Lm0/m;Lsb/k;La0/m;I)V
    .locals 7

    check-cast p3, La0/q;

    const v0, -0x6a521d79

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p4, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p3, p2}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x2db

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-virtual {p3}, La0/q;->x()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, La0/q;->K()V

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v3, LJ0/c;->d:LJ0/c;

    and-int/lit8 v1, v0, 0xe

    or-int/lit16 v1, v1, 0xc00

    and-int/lit8 v2, v0, 0x70

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x6

    const v2, 0xe000

    and-int/2addr v0, v2

    or-int v6, v1, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, LJ0/k;->b(Lsb/k;Lm0/m;Lsb/k;Lsb/k;Lsb/k;La0/m;I)V

    :goto_5
    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_8

    new-instance v6, LJ0/l;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, LJ0/l;-><init>(Ljava/lang/Object;Lm0/m;Ldb/b;II)V

    iput-object v6, p3, La0/i0;->d:Lsb/n;

    :cond_8
    return-void
.end method

.method public static final b(Lsb/k;Lm0/m;Lsb/k;Lsb/k;Lsb/k;La0/m;I)V
    .locals 21

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v0, p5

    check-cast v0, La0/q;

    const v1, -0xabaf393

    invoke-virtual {v0, v1}, La0/q;->S(I)La0/q;

    and-int/lit8 v1, v6, 0xe

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v6

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v3, v6

    :goto_1
    and-int/lit8 v7, v6, 0x70

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    :cond_3
    or-int/lit16 v3, v3, 0x180

    and-int/lit16 v7, v6, 0x1c00

    if-nez v7, :cond_5

    invoke-virtual {v0, v4}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x800

    goto :goto_3

    :cond_4
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v3, v7

    :cond_5
    const v7, 0xe000

    and-int/2addr v7, v6

    if-nez v7, :cond_7

    invoke-virtual {v0, v5}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x4000

    goto :goto_4

    :cond_6
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v3, v7

    :cond_7
    const v7, 0xb6db

    and-int/2addr v3, v7

    const/16 v7, 0x2492

    if-ne v3, v7, :cond_9

    invoke-virtual {v0}, La0/q;->x()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, La0/q;->K()V

    move-object/from16 v3, p2

    goto/16 :goto_7

    :cond_9
    :goto_5
    iget v3, v0, La0/q;->P:I

    invoke-static {v0, v2}, La/a;->f(La0/m;Lm0/m;)Lm0/m;

    move-result-object v14

    sget-object v7, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, LH0/b;

    sget-object v7, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, LH0/k;

    invoke-virtual {v0}, La0/q;->l()La0/e0;

    move-result-object v12

    sget-object v7, Landroidx/compose/ui/platform/h;->b:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroidx/lifecycle/J;

    sget-object v7, Landroidx/compose/ui/platform/h;->c:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, LQ2/f;

    iget-object v9, v0, La0/q;->a:LJ2/i0;

    const v7, -0x54a416a

    invoke-virtual {v0, v7}, La0/q;->R(I)V

    const v7, 0x7907de51

    invoke-virtual {v0, v7}, La0/q;->R(I)V

    iget v8, v0, La0/q;->P:I

    sget-object v7, Landroidx/compose/ui/platform/h;->a:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Landroid/content/Context;

    invoke-static {v0}, La0/d;->H(La0/m;)La0/o;

    move-result-object v17

    sget-object v7, Lj0/m;->a:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v7

    check-cast v18, Lj0/k;

    sget-object v7, Landroidx/compose/ui/platform/h;->d:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Landroid/view/View;

    new-instance v7, LJ0/o;

    move-object/from16 p2, v7

    move/from16 v20, v8

    move-object/from16 v8, v16

    move-object v1, v9

    move-object/from16 v9, p0

    move-object v2, v10

    move-object/from16 v10, v17

    move-object v6, v11

    move-object/from16 v11, v18

    move-object v4, v12

    move/from16 v12, v20

    move-object v5, v13

    move-object/from16 v13, v19

    invoke-direct/range {v7 .. v13}, LJ0/o;-><init>(Landroid/content/Context;Lsb/k;La0/o;Lj0/k;ILandroid/view/View;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, La0/q;->p(Z)V

    const v7, 0x7076b8d0

    invoke-virtual {v0, v7}, La0/q;->R(I)V

    instance-of v1, v1, LB0/W;

    const/4 v7, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v0}, La0/q;->O()V

    iget-boolean v1, v0, La0/q;->O:Z

    if-eqz v1, :cond_a

    new-instance v1, LA4/a;

    const/4 v8, 0x7

    move-object/from16 v9, p2

    invoke-direct {v1, v8, v9}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, La0/q;->k(Lsb/a;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, La0/q;->d0()V

    :goto_6
    sget-object v1, LB0/h;->K:LB0/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LB0/g;->e:LB0/f;

    invoke-static {v0, v4, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LJ0/m;->d:LJ0/m;

    invoke-static {v0, v14, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LJ0/m;->e:LJ0/m;

    invoke-static {v0, v15, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LJ0/m;->f:LJ0/m;

    invoke-static {v0, v6, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LJ0/m;->g:LJ0/m;

    invoke-static {v0, v2, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LJ0/m;->h:LJ0/m;

    invoke-static {v0, v5, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LB0/g;->i:LB0/f;

    iget-boolean v2, v0, La0/q;->O:Z

    if-nez v2, :cond_b

    invoke-virtual {v0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, La0/q;->a0(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, La0/q;->b(Ljava/lang/Object;Lsb/n;)V

    :cond_c
    sget-object v1, LJ0/m;->b:LJ0/m;

    move-object/from16 v5, p4

    invoke-static {v0, v5, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LJ0/m;->c:LJ0/m;

    move-object/from16 v4, p3

    invoke-static {v0, v4, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, La0/q;->p(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La0/q;->p(Z)V

    invoke-virtual {v0, v1}, La0/q;->p(Z)V

    move-object v3, v7

    :goto_7
    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v7

    if-eqz v7, :cond_d

    new-instance v8, LJ0/n;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, LJ0/n;-><init>(Lsb/k;Lm0/m;Lsb/k;Lsb/k;Lsb/k;I)V

    iput-object v8, v7, La0/i0;->d:Lsb/n;

    :cond_d
    return-void

    :cond_e
    invoke-static {}, La0/d;->B()V

    throw v7
.end method

.method public static final c(LJ0/q;Landroidx/compose/ui/node/a;)V
    .locals 3

    iget-object p1, p1, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p1, p1, LB0/M;->c:Ljava/lang/Object;

    check-cast p1, LB0/m;

    sget-wide v0, Lr0/b;->b:J

    invoke-virtual {p1}, LB0/O;->H()Lm0/l;

    move-result-object v2

    iget-boolean v2, v2, Lm0/l;->j:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, LB0/O;->K()V

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, LB0/O;->P(J)J

    move-result-wide v0

    iget-object p1, p1, LB0/O;->k:LB0/O;

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lr0/b;->a(J)F

    move-result p1

    invoke-static {p1}, LG5/p2;->e(F)I

    move-result p1

    invoke-static {v0, v1}, Lr0/b;->b(J)F

    move-result v0

    invoke-static {v0}, LG5/p2;->e(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Landroidx/compose/ui/node/a;)LJ0/q;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/a;->h:LJ0/q;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
