.class public final Lq0/g;
.super Lm0/l;
.source "SourceFile"

# interfaces
.implements LA0/e;
.implements LB0/i;


# instance fields
.field public k:Lq0/e;


# virtual methods
.method public final w()V
    .locals 3

    iget-object v0, p0, Lm0/l;->a:Lm0/l;

    iget-object v0, v0, Lm0/l;->g:LB0/O;

    iget-object v0, p0, Lq0/g;->k:Lq0/e;

    sget-object v1, Lq0/f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq0/g;->y()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lq0/g;->y()V

    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_2
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Lm0/l;->a:Lm0/l;

    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v3, v1, LB0/c;

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    check-cast v1, LB0/c;

    invoke-static {v1}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_1
    iget-boolean v1, v0, Lm0/l;->j:Z

    if-eqz v1, :cond_8

    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_7

    iget-object v1, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v1, LB0/M;->f:Ljava/lang/Object;

    check-cast v1, Lm0/l;

    iget v1, v1, Lm0/l;->d:I

    and-int/lit16 v1, v1, 0x1400

    if-eqz v1, :cond_5

    :goto_2
    if-eqz v0, :cond_5

    iget v1, v0, Lm0/l;->c:I

    and-int/lit16 v3, v1, 0x1400

    if-eqz v3, :cond_4

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    iget-boolean v1, v0, Lm0/l;->j:Z

    if-eqz v1, :cond_4

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_4

    instance-of v3, v1, LB0/c;

    if-nez v3, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    check-cast v1, LB0/c;

    invoke-static {v1}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_4
    :goto_4
    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    if-eqz v0, :cond_6

    iget-object v0, v0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, LB0/V;

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_1

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitAncestors called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
