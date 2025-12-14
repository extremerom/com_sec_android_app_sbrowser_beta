.class public final LB0/l;
.super LB0/J;
.source "SourceFile"


# virtual methods
.method public final F()V
    .locals 3

    iget-object p0, p0, LB0/J;->i:LB0/O;

    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->n:LB0/C;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, p0, LB0/C;->r:LB0/G;

    iget-object v0, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v0

    iget-boolean v1, p0, LB0/C;->k:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, LB0/C;->w()V

    :cond_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v1, v0, LB0/G;->c:LB0/v;

    sget-object v2, LB0/v;->LayingOut:LB0/v;

    if-eq v1, v2, :cond_1

    sget-object v2, LB0/v;->LookaheadLayingOut:LB0/v;

    if-ne v1, v2, :cond_4

    :cond_1
    iget v1, p0, LB0/C;->f:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    iget v1, v0, LB0/G;->h:I

    iput v1, p0, LB0/C;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LB0/G;->h:I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Place was called on a node which was placed already"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, LB0/C;->f:I

    :cond_4
    :goto_0
    invoke-virtual {p0}, LB0/C;->i()V

    return-void
.end method

.method public final o(J)Lz0/G;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lz0/G;->v(J)V

    iget-object v0, p0, LB0/J;->i:LB0/O;

    iget-object v1, v0, LB0/O;->i:Landroidx/compose/ui/node/a;

    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v1

    iget v2, v1, Lc0/d;->c:I

    if-lez v2, :cond_1

    iget-object v1, v1, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/node/a;

    iget-object v4, v4, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v4, v4, LB0/G;->n:LB0/C;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v5, LB0/x;->NotUsed:LB0/x;

    iput-object v5, v4, LB0/C;->g:LB0/x;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    :cond_1
    iget-object v0, v0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object v1, v0, Landroidx/compose/ui/node/a;->j:Lz0/x;

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0, p1, p2}, Lz0/x;->a(LB0/I;Ljava/util/List;J)Lz0/y;

    move-result-object p1

    invoke-static {p0, p1}, LB0/J;->E(LB0/J;Lz0/y;)V

    return-object p0
.end method

.method public final w(Lz0/i;)I
    .locals 6

    iget-object v0, p0, LB0/J;->i:LB0/O;

    iget-object v0, v0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object v0, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->n:LB0/C;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v1, v0, LB0/C;->r:LB0/G;

    iget-object v2, v1, LB0/G;->c:LB0/v;

    sget-object v3, LB0/v;->LookaheadMeasuring:LB0/v;

    const/4 v4, 0x1

    iget-object v5, v0, LB0/C;->l:LB0/z;

    if-ne v2, v3, :cond_0

    iput-boolean v4, v5, LB0/z;->d:Z

    iget-boolean v2, v5, LB0/z;->b:Z

    if-eqz v2, :cond_1

    iput-boolean v4, v1, LB0/G;->f:Z

    iput-boolean v4, v1, LB0/G;->g:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, v5, LB0/z;->e:Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, LB0/C;->n()LB0/m;

    move-result-object v1

    iget-object v1, v1, LB0/m;->w:LB0/l;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v4, v1, LB0/I;->g:Z

    :goto_1
    invoke-virtual {v0}, LB0/C;->i()V

    invoke-virtual {v0}, LB0/C;->n()LB0/m;

    move-result-object v0

    iget-object v0, v0, LB0/m;->w:LB0/l;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, v0, LB0/I;->g:Z

    :goto_2
    iget-object v0, v5, LB0/z;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_4
    const/high16 v0, -0x80000000

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, LB0/J;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
