.class public abstract LG5/S2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(IIII)J
    .locals 1

    const/16 v0, 0x29

    if-lt p1, p0, :cond_2

    if-lt p3, p2, :cond_1

    if-ltz p0, :cond_0

    if-ltz p2, :cond_0

    invoke-static {p0, p1, p2, p3}, LG5/R2;->d(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p1, "minWidth("

    const-string p3, ") and minHeight("

    const-string v0, ") must be >= 0"

    invoke-static {p0, p2, p1, p3, v0}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "maxHeight("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") must be >= than minHeight("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "maxWidth("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") must be >= than minWidth("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(III)J
    .locals 2

    and-int/lit8 v0, p2, 0x2

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1

    move p1, v1

    :cond_1
    const/4 p2, 0x0

    invoke-static {p2, p0, p2, p1}, LG5/S2;->a(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(LR1/x;LW1/d;Lf2/a;Lx1/r;La0/m;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "textData"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p4

    check-cast v0, La0/q;

    const v4, 0x587e2e60

    invoke-virtual {v0, v4}, La0/q;->S(I)La0/q;

    const v4, 0x27d7e383

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    sget-object v4, LR1/d;->e:La0/L0;

    invoke-virtual {v0, v4}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM1/c;

    iget v4, v4, LM1/c;->a:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, LM1/c;->a(II)Z

    move-result v4

    iget-boolean v5, v1, LEc/g;->a:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_1
    sget-object v4, Lx1/k;->e:La0/L0;

    invoke-virtual {v0, v4}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ1/b;

    iget-object v4, v4, LJ1/b;->b:Lf2/a;

    move-object v7, v4

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    const-wide v8, 0x100000000L

    iget v6, v2, LW1/d;->a:F

    invoke-static {v8, v9, v6}, LG5/W2;->b(JF)J

    move-result-wide v8

    iget v6, v1, LR1/x;->d:I

    new-instance v18, Le2/l;

    new-instance v10, LH0/m;

    invoke-direct {v10, v8, v9}, LH0/m;-><init>(J)V

    new-instance v9, Le2/d;

    iget v8, v2, LW1/d;->c:I

    invoke-direct {v9, v8}, Le2/d;-><init>(I)V

    new-instance v11, Le2/e;

    invoke-direct {v11, v6}, Le2/e;-><init>(I)V

    new-instance v15, Le2/m;

    iget v6, v1, LR1/x;->l:I

    invoke-direct {v15, v6}, Le2/m;-><init>(I)V

    iget-object v14, v2, LW1/d;->b:Le2/a;

    iget v13, v1, LR1/x;->m:I

    iget-object v12, v1, LR1/x;->f:Le2/c;

    iget v8, v1, LR1/x;->e:I

    iget-boolean v6, v1, LR1/x;->i:Z

    const/16 v17, 0x208

    move/from16 v16, v6

    move-object/from16 v6, v18

    move/from16 v19, v8

    move-object v8, v10

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v19

    move/from16 v19, v13

    move/from16 v13, v16

    move/from16 v16, v19

    invoke-direct/range {v6 .. v17}, Le2/l;-><init>(Lf2/a;LH0/m;Le2/d;Le2/e;Le2/c;IZLe2/a;Le2/m;II)V

    sget-object v6, Le2/a;->DP:Le2/a;

    iget-object v7, v2, LW1/d;->b:Le2/a;

    if-ne v7, v6, :cond_2

    const/4 v6, 0x0

    :goto_2
    move v8, v6

    goto :goto_3

    :cond_2
    iget v6, v2, LW1/d;->d:F

    goto :goto_2

    :goto_3
    iget-object v6, v1, LR1/x;->k:Ljava/lang/String;

    move-object/from16 v11, p3

    invoke-static {v11, v6}, LG5/N3;->c(Lx1/r;Ljava/lang/String;)Lx1/r;

    move-result-object v6

    iget-boolean v7, v1, LR1/x;->h:Z

    if-eqz v7, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_3
    const v7, 0x3f19999a    # 0.6f

    :goto_4
    new-instance v9, Lz1/b;

    invoke-direct {v9, v7}, Lz1/b;-><init>(F)V

    invoke-interface {v6, v9}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v6

    invoke-static {v6, v5}, LG5/I2;->l(Lx1/r;Z)Lx1/r;

    move-result-object v5

    iget-object v6, v1, LR1/x;->b:Ljava/lang/String;

    if-eqz v6, :cond_4

    const v6, 0x27d7ea72

    invoke-virtual {v0, v6}, La0/q;->R(I)V

    iget-object v6, v1, LR1/x;->b:Ljava/lang/String;

    iget v7, v1, LR1/x;->g:I

    const/4 v10, 0x0

    move v12, v4

    move-object v4, v6

    move-object/from16 v6, v18

    move-object v9, v0

    invoke-static/range {v4 .. v10}, LG5/H2;->a(Ljava/lang/String;Lx1/r;Le2/l;IFLa0/m;I)V

    invoke-virtual {v0, v12}, La0/q;->p(Z)V

    goto :goto_5

    :cond_4
    move v12, v4

    const v4, 0x27d7eb9c

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    invoke-virtual {v0, v12}, La0/q;->p(Z)V

    :goto_5
    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v8, LU1/h;

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, LU1/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v8, v7, La0/i0;->d:Lsb/n;

    :cond_5
    return-void
.end method

.method public static final d(LR1/x;FILf2/a;Lx1/r;La0/m;II)V
    .locals 12

    const-string v0, "textColor"

    move-object v7, p3

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p5

    check-cast v0, La0/q;

    const v1, -0x5c4e8321

    invoke-virtual {v0, v1}, La0/q;->S(I)La0/q;

    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_0

    sget-object v1, Lx1/p;->a:Lx1/p;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p4

    :goto_0
    new-instance v2, LW1/d;

    sget-object v1, Le2/a;->DP:Le2/a;

    move v9, p1

    move v10, p2

    invoke-direct {v2, p1, v1, p2}, LW1/d;-><init>(FLe2/a;I)V

    shr-int/lit8 v1, p6, 0x3

    and-int/lit16 v1, v1, 0x1c00

    const/16 v3, 0x208

    or-int v6, v3, v1

    move-object v1, p0

    move-object v3, p3

    move-object v4, v8

    move-object v5, v0

    invoke-static/range {v1 .. v6}, LG5/S2;->c(LR1/x;LW1/d;Lf2/a;Lx1/r;La0/m;I)V

    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v11, LV1/a;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v8

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, LV1/a;-><init>(LR1/x;FILf2/a;Lx1/r;II)V

    iput-object v11, v0, La0/i0;->d:Lsb/n;

    :cond_1
    return-void
.end method

.method public static final e(LR1/x;JLf2/a;Lx1/r;FLa0/m;I)V
    .locals 12

    const-string v0, "textData"

    move-object v7, p0

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    move-object v8, p3

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p6

    check-cast v0, La0/q;

    const v1, -0x57614a4c

    invoke-virtual {v0, v1}, La0/q;->S(I)La0/q;

    sget-object v9, Lx1/p;->a:Lx1/p;

    new-instance v10, LW1/d;

    invoke-static {p1, p2}, LH0/m;->a(J)F

    move-result v2

    sget-object v3, Le2/a;->SP:Le2/a;

    const/4 v6, 0x0

    const/16 v4, 0x190

    move-object v1, v10

    move/from16 v5, p5

    invoke-direct/range {v1 .. v6}, LW1/d;-><init>(FLe2/a;IFI)V

    shr-int/lit8 v1, p7, 0x3

    and-int/lit16 v1, v1, 0x1c00

    const/16 v2, 0x208

    or-int v6, v2, v1

    move-object v1, p0

    move-object v2, v10

    move-object v3, p3

    move-object v4, v9

    move-object v5, v0

    invoke-static/range {v1 .. v6}, LG5/S2;->c(LR1/x;LW1/d;Lf2/a;Lx1/r;La0/m;I)V

    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v10, LU1/f;

    const/4 v11, 0x1

    move-object v1, v10

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, v9

    move/from16 v7, p5

    move/from16 v8, p7

    move v9, v11

    invoke-direct/range {v1 .. v9}, LU1/f;-><init>(LR1/x;JLf2/a;Ljava/lang/Object;FII)V

    iput-object v10, v0, La0/i0;->d:Lsb/n;

    :cond_0
    return-void
.end method

.method public static final f([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v1, p1, v2, p0, v0}, Lfb/l;->k(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    add-int/lit8 v1, p1, 0x2

    array-length v2, p0

    invoke-static {v1, p1, v2, p0, v0}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    aput-object p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-object v0
.end method

.method public static final g(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v1, p0, v2, p1, v0}, Lfb/l;->k(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    add-int/lit8 v1, p0, 0x2

    array-length v2, p1

    invoke-static {p0, v1, v2, p1, v0}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final h(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v1, p0, v2, p1, v0}, Lfb/l;->k(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    add-int/lit8 v1, p0, 0x1

    array-length v2, p1

    invoke-static {p0, v1, v2, p1, v0}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final i(II)I
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static final j(JII)J
    .locals 4

    invoke-static {p0, p1}, LH0/a;->d(J)I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p0, p1}, LH0/a;->b(J)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v2, p2

    if-gez v2, :cond_2

    move v2, v1

    :cond_2
    :goto_0
    invoke-static {p0, p1}, LH0/a;->c(J)I

    move-result p2

    add-int/2addr p2, p3

    if-gez p2, :cond_3

    move p2, v1

    :cond_3
    invoke-static {p0, p1}, LH0/a;->a(J)I

    move-result p0

    if-ne p0, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr p0, p3

    if-gez p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, p0

    :goto_1
    move p0, v1

    :goto_2
    invoke-static {v0, v2, p2, p0}, LG5/S2;->a(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final k(Li0/a;Lkb/c;)Ljb/a;
    .locals 4

    instance-of v0, p1, Lz1/W;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lz1/W;

    iget v1, v0, Lz1/W;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz1/W;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz1/W;

    invoke-direct {v0, p1}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p1, v0, Lz1/W;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lz1/W;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object p1

    sget-object v2, Lz1/F;->a:Lz1/F;

    invoke-interface {p1, v2}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    check-cast p1, Lz1/s;

    if-eqz p1, :cond_4

    iput v3, v0, Lz1/W;->b:I

    invoke-virtual {p1, p0, v0}, Lz1/s;->d(Li0/a;Lkb/c;)Ljb/a;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "provideContent requires a ContentReceiver and should only be called from GlanceAppWidget.provideGlance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
