.class public abstract LG5/R2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LR1/p;Lx1/r;ILa0/m;I)V
    .locals 10

    const-string p2, "modifier"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, La0/q;

    const p2, 0x6c06124f

    invoke-virtual {p3, p2}, La0/q;->S(I)La0/q;

    iget-object p2, p0, LR1/p;->d:LR1/o;

    sget-object v0, LR1/o;->Icon:LR1/o;

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-ne p2, v0, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    sget-object v2, LR1/d;->e:La0/L0;

    invoke-virtual {p3, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM1/c;

    iget v2, v2, LM1/c;->a:I

    invoke-static {v2, v1}, LM1/c;->a(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-eq p2, v0, :cond_1

    goto :goto_2

    :cond_1
    const p2, -0x3f3d9437

    invoke-virtual {p3, p2}, La0/q;->R(I)V

    iget-boolean p2, p0, LEc/g;->a:Z

    invoke-static {p1, p2}, LG5/I2;->l(Lx1/r;Z)Lx1/r;

    move-result-object p2

    iget-object v0, p0, LR1/p;->e:Lf2/a;

    if-eqz v0, :cond_2

    new-instance v1, Lx1/g;

    new-instance v2, Lx1/v;

    invoke-direct {v2, v0}, Lx1/v;-><init>(Lf2/a;)V

    invoke-direct {v1, v2}, Lx1/g;-><init>(Lx1/v;)V

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    iget-object v0, p0, LR1/p;->b:Lx1/u;

    iget-object v1, p0, LR1/p;->c:Ljava/lang/String;

    const v6, 0x8008

    const/4 v7, 0x0

    move-object v2, p2

    move v3, v9

    move-object v5, p3

    invoke-static/range {v0 .. v7}, LG5/z2;->a(Lx1/u;Ljava/lang/String;Lx1/r;ILx1/g;La0/m;II)V

    invoke-virtual {p3, v8}, La0/q;->p(Z)V

    goto :goto_4

    :cond_3
    :goto_2
    const p2, -0x3f3d95bf

    invoke-virtual {p3, p2}, La0/q;->R(I)V

    iget-object p2, p0, LR1/p;->e:Lf2/a;

    if-eqz p2, :cond_4

    new-instance v0, Lx1/g;

    new-instance v1, Lx1/v;

    invoke-direct {v1, p2}, Lx1/v;-><init>(Lf2/a;)V

    invoke-direct {v0, v1}, Lx1/g;-><init>(Lx1/v;)V

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    iget-object v0, p0, LR1/p;->b:Lx1/u;

    iget-object v1, p0, LR1/p;->c:Ljava/lang/String;

    const v6, 0x8008

    const/4 v7, 0x0

    move-object v2, p1

    move v3, v9

    move-object v5, p3

    invoke-static/range {v0 .. v7}, LG5/z2;->a(Lx1/u;Ljava/lang/String;Lx1/r;ILx1/g;La0/m;II)V

    invoke-virtual {p3, v8}, La0/q;->p(Z)V

    :goto_4
    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p3, LB1/e;

    invoke-direct {p3, p0, p1, v9, p4}, LB1/e;-><init>(LR1/p;Lx1/r;II)V

    iput-object p3, p2, La0/i0;->d:Lsb/n;

    :cond_5
    return-void
.end method

.method public static b(I)I
    .locals 3

    const/16 v0, 0x1fff

    if-ge p0, v0, :cond_0

    const/16 p0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x7fff

    if-ge p0, v0, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const v0, 0xffff

    if-ge p0, v0, :cond_2

    const/16 p0, 0x10

    goto :goto_0

    :cond_2
    const v0, 0x3ffff

    if-ge p0, v0, :cond_3

    const/16 p0, 0x12

    :goto_0
    return p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t represent a size of "

    const-string v2, " in Constraints"

    invoke-static {p0, v1, v2}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lcc/g0;)Lec/i;
    .locals 2

    const-string v0, "table"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/g0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lec/i;->b:Lec/i;

    goto :goto_0

    :cond_0
    new-instance v0, Lec/i;

    iget-object p0, p0, Lcc/g0;->b:Ljava/util/List;

    const-string v1, "getRequirementList(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lec/i;-><init>(Ljava/util/List;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static d(IIII)J
    .locals 6

    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    invoke-static {v1}, LG5/R2;->b(I)I

    move-result v2

    if-ne p1, v0, :cond_1

    move v3, p0

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    invoke-static {v3}, LG5/R2;->b(I)I

    move-result v4

    add-int/2addr v2, v4

    const/16 v5, 0x1f

    if-gt v2, v5, :cond_8

    const/16 v1, 0xd

    if-eq v4, v1, :cond_5

    const/16 v1, 0x12

    if-eq v4, v1, :cond_4

    const/16 v1, 0xf

    if-eq v4, v1, :cond_3

    const/16 v1, 0x10

    if-ne v4, v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should only have the provided constants."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-wide/16 v1, 0x2

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v1, 0x3

    :goto_2
    const/4 v3, 0x0

    if-ne p1, v0, :cond_6

    move p1, v3

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    :goto_3
    if-ne p3, v0, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v3, p3, 0x1

    :goto_4
    sget-object p3, LH0/a;->b:[I

    long-to-int v0, v1

    aget p3, p3, v0

    add-int/lit8 v0, p3, 0x1f

    int-to-long v4, p0

    const/4 p0, 0x2

    shl-long/2addr v4, p0

    or-long/2addr v1, v4

    int-to-long p0, p1

    const/16 v4, 0x21

    shl-long/2addr p0, v4

    or-long/2addr p0, v1

    int-to-long v1, p2

    shl-long p2, v1, p3

    or-long/2addr p0, p2

    int-to-long p2, v3

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t represent a width of "

    const-string p2, " and height of "

    const-string p3, " in Constraints"

    invoke-static {v3, v1, p1, p2, p3}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Landroid/content/BroadcastReceiver;Lib/h;Lsb/n;)V
    .locals 2

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object v0

    invoke-static {v0, p1}, LG5/O3;->c(Lib/h;Lib/h;)Lib/h;

    move-result-object p1

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    new-instance v0, Lz1/H;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p0, v1}, Lz1/H;-><init>(Lsb/n;LUc/e;Landroid/content/BroadcastReceiver$PendingResult;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
