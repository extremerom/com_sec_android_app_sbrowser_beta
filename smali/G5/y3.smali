.class public abstract LG5/y3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V
    .locals 8

    const-string v0, "titleBar"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, La0/q;

    const v0, 0x61c875e2

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    sget-object v0, LR1/d;->f:La0/L0;

    const v1, -0x45e3ecbf

    invoke-virtual {p4, v1}, La0/q;->R(I)V

    invoke-virtual {p4, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR1/w;

    invoke-static {p4}, LV9/a;->d(La0/m;)Z

    move-result v2

    iput-boolean v2, v1, LR1/w;->d:Z

    const/4 v2, 0x0

    invoke-virtual {p4, v2}, La0/q;->p(Z)V

    invoke-virtual {v0, v1}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v0

    new-instance v7, LX1/g;

    const/4 v6, 0x3

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, LX1/g;-><init>(LV9/a;Li0/a;Lsb/n;Lsb/n;I)V

    const v1, -0x140fd6de

    invoke-static {p4, v1, v7}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p4, v2}, La0/d;->a(La0/h0;Li0/a;La0/m;I)V

    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_0

    new-instance v7, LW1/e;

    const/4 v6, 0x2

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, LW1/e;-><init>(LV9/a;Lsb/n;Lsb/n;Li0/a;II)V

    iput-object v7, p4, La0/i0;->d:Lsb/n;

    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/String;LF3/f;Ly1/a;LV9/a;Ljava/lang/String;Li0/a;La0/m;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    const-string v0, "appWidgetBackground"

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p6

    check-cast v0, La0/q;

    const v4, -0x4cb09b29

    invoke-virtual {v0, v4}, La0/q;->S(I)La0/q;

    and-int/lit8 v4, p7, 0xe

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, La0/q;->e(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v4, p7, 0x70

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, La0/q;->e(Ljava/lang/Object;)Z

    :cond_1
    const v4, 0xe000

    and-int v4, p7, v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v5}, La0/q;->e(Ljava/lang/Object;)Z

    :cond_2
    const/high16 v4, 0x70000

    and-int v4, p7, v4

    move-object/from16 v15, p5

    if-nez v4, :cond_3

    invoke-virtual {v0, v15}, La0/q;->g(Ljava/lang/Object;)Z

    :cond_3
    sget-object v4, Lx1/p;->a:Lx1/p;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_4

    move v8, v7

    goto :goto_0

    :cond_4
    move v8, v6

    :goto_0
    if-eqz v3, :cond_5

    const v9, 0x7f0805fb

    goto :goto_1

    :cond_5
    move v9, v6

    :goto_1
    const/4 v10, 0x2

    invoke-static {v4, v3, v8, v9, v10}, LG5/N3;->d(Lx1/r;Ly1/a;ZII)Lx1/r;

    move-result-object v4

    invoke-static {v4, v1}, LG5/N3;->c(Lx1/r;Ljava/lang/String;)Lx1/r;

    move-result-object v4

    sget-object v8, Lz1/d;->a:Lz1/d;

    invoke-interface {v4, v8}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v4

    invoke-static {v4}, LG5/P3;->c(Lx1/r;)Lx1/r;

    move-result-object v4

    new-instance v8, Lz1/A0;

    const/high16 v9, -0x17000000

    invoke-direct {v8, v9, v5}, Lz1/A0;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v8}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v4

    const v8, -0x2a3c61c8

    invoke-virtual {v0, v8}, La0/q;->R(I)V

    sget-object v8, LR1/u;->None:LR1/u;

    const/16 v9, 0x8

    iget-object v11, v2, LF3/f;->b:Ljava/lang/Object;

    check-cast v11, LR1/u;

    if-eq v11, v8, :cond_7

    sget-object v8, Lz1/C;->a:La0/I;

    invoke-virtual {v0, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    const-string v12, "<this>"

    invoke-static {v8, v12}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "semAppWidgetColumnSpan"

    invoke-virtual {v8, v12, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_6

    const-string v12, "semAppWidgetRowSpan"

    invoke-virtual {v8, v12, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_6

    goto :goto_2

    :cond_6
    sget-object v8, LR1/d;->j:La0/L0;

    invoke-virtual {v0, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    sget-object v8, LR1/d;->d:La0/L0;

    invoke-virtual {v0, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LM1/b;

    iget v8, v8, LM1/b;->a:I

    invoke-static {v8, v9}, LM1/b;->b(II)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    move v7, v6

    :goto_2
    invoke-virtual {v0, v6}, La0/q;->p(Z)V

    new-instance v8, Ltb/w;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ltb/w;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    const v12, -0x2a3c603b

    invoke-virtual {v0, v12}, La0/q;->R(I)V

    instance-of v12, v2, LR1/a;

    if-eqz v12, :cond_9

    if-eqz v7, :cond_8

    const v12, -0x2a3c5fd2

    invoke-virtual {v0, v12}, La0/q;->R(I)V

    invoke-virtual {v11}, LR1/u;->a()I

    move-result v11

    sget-object v12, Lx1/k;->e:La0/L0;

    invoke-virtual {v0, v12}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LJ1/b;

    iget-object v12, v12, LJ1/b;->q:Lf2/a;

    new-instance v13, Lz1/U0;

    invoke-direct {v13, v11, v12}, Lz1/U0;-><init>(ILf2/a;)V

    invoke-interface {v4, v13}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v4

    invoke-virtual {v0, v6}, La0/q;->p(Z)V

    goto :goto_3

    :cond_8
    const v11, -0x2a3c5ed0

    invoke-virtual {v0, v11}, La0/q;->R(I)V

    sget-object v11, Lx1/k;->e:La0/L0;

    invoke-virtual {v0, v11}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LJ1/b;

    iget-object v11, v11, LJ1/b;->q:Lf2/a;

    invoke-static {v4, v11}, LG5/x2;->b(Lx1/r;Lf2/a;)Lx1/r;

    move-result-object v4

    new-instance v11, Lz1/y;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v11}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v4

    invoke-virtual {v0, v6}, La0/q;->p(Z)V

    goto :goto_3

    :cond_9
    sget-wide v11, Ls0/b;->f:J

    new-instance v13, Lf2/i;

    invoke-direct {v13, v11, v12}, Lf2/i;-><init>(J)V

    invoke-static {v4, v13}, LG5/x2;->b(Lx1/r;Lf2/a;)Lx1/r;

    move-result-object v4

    new-instance v11, Lz1/y;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v11}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v4

    :goto_3
    invoke-virtual {v0, v6}, La0/q;->p(Z)V

    sget-object v12, La2/e;->a:La2/e;

    const v11, -0x59e03c6

    invoke-virtual {v0, v11}, La0/q;->R(I)V

    sget-object v11, LR1/d;->g:La0/L0;

    invoke-virtual {v0, v11}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b

    if-nez v7, :cond_b

    const v7, -0x2ca01fa4

    invoke-virtual {v0, v7}, La0/q;->R(I)V

    sget-object v7, LR1/d;->d:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LM1/b;

    iget v7, v7, LM1/b;->a:I

    invoke-static {v7, v9}, LM1/b;->a(II)I

    move-result v7

    if-gez v7, :cond_a

    sget v7, LW1/a;->f:F

    goto :goto_4

    :cond_a
    const/16 v7, 0x18

    int-to-float v7, v7

    :goto_4
    invoke-virtual {v0, v6}, La0/q;->p(Z)V

    invoke-static {v4, v7}, LG5/Q2;->d(Lx1/r;F)Lx1/r;

    move-result-object v4

    :cond_b
    invoke-virtual {v0, v6}, La0/q;->p(Z)V

    sget-object v6, Lx1/k;->f:La0/L0;

    invoke-virtual {v0, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "Real"

    :goto_5
    move-object v13, v6

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    goto :goto_5

    :goto_6
    new-instance v14, LY1/o;

    const/4 v11, 0x0

    move-object v6, v14

    move-object v7, v8

    move-object v8, v10

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v6 .. v11}, LY1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lsb/n;I)V

    const v6, 0x69f10900

    invoke-static {v0, v6, v14}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const v14, 0x36000

    const/16 v16, 0xa

    move-object v6, v12

    move-object v7, v4

    move-object v9, v13

    move-object v12, v0

    move v13, v14

    move/from16 v14, v16

    invoke-virtual/range {v6 .. v14}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v8

    if-eqz v8, :cond_d

    new-instance v9, LY1/p;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, LY1/p;-><init>(Ljava/lang/String;LF3/f;Ly1/a;LV9/a;Ljava/lang/String;Li0/a;I)V

    iput-object v9, v8, La0/i0;->d:Lsb/n;

    :cond_d
    return-void
.end method

.method public static final c(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {p0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {p0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(III)V
    .locals 4

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_1

    if-gt p1, p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " > toIndex: "

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ", toIndex: "

    const-string v3, ", size: "

    invoke-static {p0, p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final f(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)LJ2/N;
    .locals 1

    invoke-static {p2}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ":memory:"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LJ2/N;

    invoke-direct {v0, p0, p1, p2}, LJ2/N;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot build a database with the special name \':memory:\'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
