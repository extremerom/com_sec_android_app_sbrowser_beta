.class public abstract LG5/T2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FF)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget v0, LH0/f;->c:I

    return-wide p0
.end method

.method public static final b(FF)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget v0, LH0/g;->d:I

    return-wide p0
.end method

.method public static final c(LV9/a;Lsb/n;Lsb/n;La0/m;I)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, La0/q;

    const v0, -0x73328e6d

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    invoke-static {p3}, LV9/a;->d(La0/m;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v6, LU1/i;

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, LU1/i;-><init>(LV9/a;Lsb/n;Lsb/n;II)V

    iput-object v6, p3, La0/i0;->d:Lsb/n;

    :cond_0
    return-void

    :cond_1
    sget-object v0, LR1/d;->d:La0/L0;

    invoke-virtual {p3, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, LM1/b;->b(II)Z

    move-result v3

    new-instance v4, Ltb/w;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lx1/p;->a:Lx1/p;

    invoke-static {v0}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object v0

    const/16 v1, 0x10

    int-to-float v1, v1

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    int-to-float v2, v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v6, v5}, LG5/U2;->e(Lx1/r;FFFI)Lx1/r;

    move-result-object v0

    iput-object v0, v4, Ltb/w;->a:Ljava/lang/Object;

    sget-object v1, La2/e;->a:La2/e;

    new-instance v0, LV1/d;

    move-object v2, v0

    move-object v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, LV1/d;-><init>(ZLtb/w;Lsb/n;LV9/a;Lsb/n;)V

    const v2, -0x14e398b6

    invoke-static {p3, v2, v0}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v6

    const-string v4, "TitleBar"

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v8, 0x36d80

    const/4 v9, 0x3

    move-object v7, p3

    invoke-virtual/range {v1 .. v9}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_3

    new-instance v6, LU1/i;

    const/4 v5, 0x3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, LU1/i;-><init>(LV9/a;Lsb/n;Lsb/n;II)V

    iput-object v6, p3, La0/i0;->d:Lsb/n;

    :cond_3
    return-void
.end method

.method public static final d(La0/m;I)V
    .locals 3

    check-cast p0, La0/q;

    const v0, 0x4af006c4    # 7865186.0f

    invoke-virtual {p0, v0}, La0/q;->S(I)La0/q;

    if-nez p1, :cond_1

    invoke-virtual {p0}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La0/q;->K()V

    goto :goto_2

    :cond_1
    :goto_0
    sget v0, Lz1/w0;->a:I

    const v0, -0x428332f6

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    const v0, 0x7076b8d0

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    iget-object v0, p0, La0/q;->a:LJ2/i0;

    instance-of v0, v0, Lx1/b;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, La0/q;->O()V

    iget-boolean v0, p0, La0/q;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lz1/B;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lz1/B;-><init>(II)V

    invoke-virtual {p0, v0}, La0/q;->k(Lsb/a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, La0/q;->d0()V

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La0/q;->p(Z)V

    invoke-virtual {p0, v1}, La0/q;->p(Z)V

    invoke-virtual {p0, v1}, La0/q;->p(Z)V

    :goto_2
    invoke-virtual {p0}, La0/q;->r()La0/i0;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lz1/x0;

    invoke-direct {v0, p1}, Lz1/x0;-><init>(I)V

    iput-object v0, p0, La0/i0;->d:Lsb/n;

    :cond_3
    return-void

    :cond_4
    invoke-static {}, La0/d;->B()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final e(LR1/x;ILx1/r;La0/m;I)V
    .locals 6

    check-cast p3, La0/q;

    const v0, 0x35eadefa

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LG5/E;->b(II)Z

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const v1, 0x73a86bcb

    invoke-virtual {p3, v1}, La0/q;->R(I)V

    invoke-static {p3}, LG5/T2;->f(La0/m;)Z

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
    const v1, 0x73a86c42

    invoke-virtual {p3, v1}, La0/q;->R(I)V

    invoke-static {p3}, LG5/T2;->f(La0/m;)Z

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

    const v0, 0x73a86cf1

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
    const v0, 0x73a86d36

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

    invoke-static/range {v0 .. v5}, LG5/S2;->c(LR1/x;LW1/d;Lf2/a;Lx1/r;La0/m;I)V

    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v0, LB1/e;

    invoke-direct {v0, p0, p1, p2, p4}, LB1/e;-><init>(LR1/x;ILx1/r;I)V

    iput-object v0, p3, La0/i0;->d:Lsb/n;

    :cond_4
    return-void
.end method

.method public static final f(La0/m;)Z
    .locals 3

    check-cast p0, La0/q;

    const v0, 0x41778768

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    sget-object v0, Lx1/k;->b:La0/L0;

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

.method public static g(Landroid/view/Menu;)V
    .locals 2

    instance-of v0, p0, Ls/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Ls/i;

    invoke-virtual {p0, v1}, Ls/i;->setGroupDividerEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroid/view/Menu;->setGroupDividerEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static final h(Lx1/l;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lz1/I;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lx1/n;

    if-eqz v0, :cond_3

    check-cast p0, Lx1/n;

    iget-object p0, p0, Lx1/n;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/l;

    invoke-static {v0}, LG5/T2;->h(Lx1/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
