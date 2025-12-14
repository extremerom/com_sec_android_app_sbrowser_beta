.class public abstract LG5/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lx1/u;Ljava/lang/String;Lx1/r;ILx1/g;La0/m;II)V
    .locals 13

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p6

    const-string v0, "provider"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p5

    check-cast v0, La0/q;

    const v4, 0x1d5027f3

    invoke-virtual {v0, v4}, La0/q;->S(I)La0/q;

    and-int/lit8 v4, v6, 0xe

    if-nez v4, :cond_1

    invoke-virtual {v0, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v6

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    and-int/lit8 v5, v6, 0x70

    if-nez v5, :cond_3

    invoke-virtual {v0, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit16 v5, v6, 0x380

    if-nez v5, :cond_5

    invoke-virtual {v0, p2}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v4, v5

    :cond_5
    and-int/lit8 v5, p7, 0x8

    if-eqz v5, :cond_7

    or-int/lit16 v4, v4, 0xc00

    :cond_6
    move/from16 v7, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v6, 0x1c00

    if-nez v7, :cond_6

    move/from16 v7, p3

    invoke-virtual {v0, v7}, La0/q;->c(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_4

    :cond_8
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v4, v8

    :goto_5
    and-int/lit8 v8, p7, 0x10

    if-eqz v8, :cond_a

    or-int/lit16 v4, v4, 0x6000

    :cond_9
    move-object/from16 v9, p4

    goto :goto_7

    :cond_a
    const v9, 0xe000

    and-int/2addr v9, v6

    if-nez v9, :cond_9

    move-object/from16 v9, p4

    invoke-virtual {v0, v9}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x4000

    goto :goto_6

    :cond_b
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v4, v10

    :goto_7
    const v10, 0xb6db

    and-int/2addr v4, v10

    const/16 v10, 0x2492

    if-ne v4, v10, :cond_d

    invoke-virtual {v0}, La0/q;->x()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, La0/q;->K()V

    :goto_8
    move v4, v7

    move-object v5, v9

    goto/16 :goto_c

    :cond_d
    :goto_9
    const/4 v4, 0x1

    if-eqz v5, :cond_e

    move v7, v4

    :cond_e
    const/4 v5, 0x0

    if-eqz v8, :cond_f

    move-object v9, v5

    :cond_f
    const/4 v8, 0x0

    if-eqz v2, :cond_12

    const v10, -0x21f4351d

    invoke-virtual {v0, v10}, La0/q;->R(I)V

    invoke-virtual {v0, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_10

    sget-object v10, La0/l;->a:La0/V;

    if-ne v11, v10, :cond_11

    :cond_10
    new-instance v11, La2/a;

    const/4 v10, 0x2

    invoke-direct {v11, p1, v10}, La2/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v11}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_11
    check-cast v11, Lsb/k;

    invoke-virtual {v0, v8}, La0/q;->p(Z)V

    invoke-static {p2, v11}, Lb2/c;->a(Lx1/r;Lsb/k;)Lx1/r;

    move-result-object v10

    goto :goto_a

    :cond_12
    move-object v10, v3

    :goto_a
    sget-object v11, Lx1/s;->a:Lx1/s;

    const v12, -0x428332f6

    invoke-virtual {v0, v12}, La0/q;->R(I)V

    const v12, 0x7076b8d0

    invoke-virtual {v0, v12}, La0/q;->R(I)V

    iget-object v12, v0, La0/q;->a:LJ2/i0;

    instance-of v12, v12, Lx1/b;

    if-eqz v12, :cond_15

    invoke-virtual {v0}, La0/q;->O()V

    iget-boolean v5, v0, La0/q;->O:Z

    if-eqz v5, :cond_13

    new-instance v5, LA4/a;

    invoke-direct {v5, v11}, LA4/a;-><init>(Lsb/a;)V

    invoke-virtual {v0, v5}, La0/q;->k(Lsb/a;)V

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, La0/q;->d0()V

    :goto_b
    sget-object v5, Lx1/h;->c:Lx1/h;

    invoke-static {v0, p0, v5}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v5, Lx1/h;->d:Lx1/h;

    invoke-static {v0, v10, v5}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    new-instance v5, LK1/k;

    invoke-direct {v5, v7}, LK1/k;-><init>(I)V

    sget-object v10, Lx1/h;->e:Lx1/h;

    invoke-static {v0, v5, v10}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v5, Lx1/h;->f:Lx1/h;

    invoke-static {v0, v9, v5}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    invoke-virtual {v0, v8}, La0/q;->p(Z)V

    invoke-virtual {v0, v8}, La0/q;->p(Z)V

    goto/16 :goto_8

    :goto_c
    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v8

    if-eqz v8, :cond_14

    new-instance v9, Lx1/t;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lx1/t;-><init>(Lx1/u;Ljava/lang/String;Lx1/r;ILx1/g;II)V

    iput-object v9, v8, La0/i0;->d:Lsb/n;

    :cond_14
    return-void

    :cond_15
    invoke-static {}, La0/d;->B()V

    throw v5
.end method

.method public static final c(Lx1/m;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx1/m;->b()Lx1/r;

    move-result-object p0

    sget-object v0, Lx1/h;->g:Lx1/h;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb2/b;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lb2/b;->a:Lb2/a;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v2, Lb2/c;->a:LE5/v;

    invoke-virtual {p0, v2}, Lb2/a;->a(LE5/v;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static d(Ldb/h;Lsb/a;)Ldb/f;
    .locals 2

    const-string v0, "mode"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldb/g;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    sget-object v0, Ldb/q;->a:Ldb/q;

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    new-instance p0, Ldb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb/s;->a:Lsb/a;

    iput-object v0, p0, Ldb/s;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ldb/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb/n;->a:Lsb/a;

    iput-object v0, p0, Ldb/n;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ldb/o;

    invoke-direct {p0, p1}, Ldb/o;-><init>(Lsb/a;)V

    :goto_0
    return-object p0
.end method

.method public static e(Lsb/a;)Ldb/o;
    .locals 1

    const-string v0, "initializer"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldb/o;

    invoke-direct {v0, p0}, Ldb/o;-><init>(Lsb/a;)V

    return-object v0
.end method

.method public static final f(LU/q;Lsb/q;FLU/A;LG5/x2;)LU/u;
    .locals 7

    const-string v0, "orientation"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossAxisSize"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LU/u;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LU/u;-><init>(LU/q;Lsb/q;FLU/A;LG5/x2;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(LF6/t;FF)V
.end method
