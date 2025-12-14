.class public abstract LG5/t2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LR1/x;JFLa0/m;I)V
    .locals 9

    const-string v0, "textData"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, La0/q;

    const v0, -0x4141e75d

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    const v0, 0x2437394b

    invoke-virtual {p4, v0}, La0/q;->R(I)V

    iget-object v0, p0, LR1/x;->c:Lf2/a;

    if-nez v0, :cond_0

    sget-object v0, Lx1/k;->e:La0/L0;

    invoke-virtual {p4, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ1/b;

    iget-object v0, v0, LJ1/b;->r:Lf2/a;

    :cond_0
    move-object v4, v0

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, La0/q;->p(Z)V

    sget-object v1, LR1/d;->c:La0/L0;

    invoke-virtual {p4, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LR1/v;->b:LR1/v;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x70000

    if-eqz v1, :cond_1

    const v1, 0x243739bf

    invoke-virtual {p4, v1}, La0/q;->R(I)V

    and-int/lit8 v1, p5, 0x70

    or-int/lit16 v1, v1, 0x1008

    and-int/lit16 v3, p5, 0x380

    or-int/2addr v1, v3

    shl-int/lit8 v3, p5, 0x6

    and-int/2addr v2, v3

    or-int v8, v1, v2

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, LG5/S2;->e(LR1/x;JLf2/a;Lx1/r;FLa0/m;I)V

    invoke-virtual {p4, v0}, La0/q;->p(Z)V

    goto :goto_0

    :cond_1
    const v1, 0x24373a27

    invoke-virtual {p4, v1}, La0/q;->R(I)V

    and-int/lit8 v1, p5, 0x70

    or-int/lit16 v1, v1, 0x1008

    and-int/lit16 v3, p5, 0x380

    or-int/2addr v1, v3

    shl-int/lit8 v3, p5, 0x6

    and-int/2addr v2, v3

    or-int v8, v1, v2

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, LG5/C2;->c(LR1/x;JLf2/a;Lm0/m;FLa0/m;I)V

    invoke-virtual {p4, v0}, La0/q;->p(Z)V

    :goto_0
    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_2

    new-instance v6, LT1/b;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, LT1/b;-><init>(LR1/x;JFI)V

    iput-object v6, p4, La0/i0;->d:Lsb/n;

    :cond_2
    return-void
.end method

.method public static final b(LR1/x;FLa0/m;I)V
    .locals 9

    check-cast p2, La0/q;

    const v0, -0x79862bd2

    invoke-virtual {p2, v0}, La0/q;->S(I)La0/q;

    const v0, 0x24373747

    invoke-virtual {p2, v0}, La0/q;->R(I)V

    iget-object v0, p0, LR1/x;->c:Lf2/a;

    if-nez v0, :cond_0

    sget-object v0, Lx1/k;->e:La0/L0;

    invoke-virtual {p2, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ1/b;

    iget-object v0, v0, LJ1/b;->r:Lf2/a;

    :cond_0
    move-object v3, v0

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, La0/q;->p(Z)V

    sget-object v0, LR1/d;->c:La0/L0;

    invoke-virtual {p2, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LR1/v;->b:LR1/v;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x243737bb

    invoke-virtual {p2, v0}, La0/q;->R(I)V

    and-int/lit8 v0, p3, 0x70

    or-int/lit16 v0, v0, 0x1008

    and-int/lit16 v1, p3, 0x380

    or-int v6, v0, v1

    const/16 v7, 0x10

    const/4 v4, 0x0

    const/16 v2, 0x258

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, LG5/S2;->d(LR1/x;FILf2/a;Lx1/r;La0/m;II)V

    invoke-virtual {p2, v8}, La0/q;->p(Z)V

    goto :goto_0

    :cond_1
    const v0, 0x24373806

    invoke-virtual {p2, v0}, La0/q;->R(I)V

    and-int/lit8 v0, p3, 0x70

    or-int/lit16 v0, v0, 0x1008

    and-int/lit16 v1, p3, 0x380

    or-int v5, v0, v1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-static/range {v0 .. v5}, LG5/C2;->b(LR1/x;FLf2/a;Lm0/m;La0/m;I)V

    invoke-virtual {p2, v8}, La0/q;->p(Z)V

    :goto_0
    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, LT1/a;

    invoke-direct {v0, p0, p1, p3}, LT1/a;-><init>(LR1/x;FI)V

    iput-object v0, p2, La0/i0;->d:Lsb/n;

    :cond_2
    return-void
.end method

.method public static c()Lwd/d;
    .locals 7

    sget-object v0, Lwd/d;->l:Lwd/d;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v0, Lwd/d;->f:Lwd/d;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v0, Lwd/d;->i:Ljava/util/concurrent/locks/Condition;

    sget-wide v4, Lwd/d;->j:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    sget-object v0, Lwd/d;->l:Lwd/d;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v0, Lwd/d;->f:Lwd/d;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v2, Lwd/d;->k:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    sget-object v1, Lwd/d;->l:Lwd/d;

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v0, Lwd/d;->g:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    sget-object v0, Lwd/d;->i:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-object v1

    :cond_2
    sget-object v2, Lwd/d;->l:Lwd/d;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lwd/d;->f:Lwd/d;

    iput-object v3, v2, Lwd/d;->f:Lwd/d;

    iput-object v1, v0, Lwd/d;->f:Lwd/d;

    return-object v0
.end method

.method public static d(LEc/e;LUb/g;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, LEc/e;->a(LUb/g;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, LEc/e;->getDescription()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
