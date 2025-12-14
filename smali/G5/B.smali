.class public abstract LG5/B;
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

    sget v0, Lr0/d;->d:I

    return-wide p0
.end method

.method public static final b(Lyc/w;)Lyc/F;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyc/F;

    invoke-direct {v0, p0}, Lyc/F;-><init>(Lyc/w;)V

    return-object v0
.end method

.method public static final c(Lyc/w;Lyc/L;Ljava/util/Set;)Z
    .locals 6

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v2, v0, LJb/j;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, LJb/j;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, LJb/j;->q()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->m0(Ljava/lang/Iterable;)LJc/q;

    move-result-object p0

    instance-of v2, p0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v1, v4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, LJc/q;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    move-object v2, p0

    check-cast v2, LJc/c;

    iget-object v5, v2, LJc/c;->b:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, LJc/c;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfb/z;

    iget v5, v2, Lfb/z;->a:I

    iget-object v2, v2, Lfb/z;->b:Ljava/lang/Object;

    check-cast v2, Lyc/Q;

    if-eqz v0, :cond_6

    invoke-static {v5, v0}, Lfb/n;->F(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJb/W;

    goto :goto_2

    :cond_6
    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lyc/Q;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    move v2, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Lyc/Q;->b()Lyc/w;

    move-result-object v2

    const-string v5, "getType(...)"

    invoke-static {v2, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, LG5/B;->c(Lyc/w;Lyc/L;Ljava/util/Set;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_5

    :goto_5
    return v1
.end method

.method public static final d(Lyc/w;Lyc/e0;LJb/W;)Lyc/F;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectionKind"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyc/F;

    if-eqz p2, :cond_0

    invoke-interface {p2}, LJb/W;->A()Lyc/e0;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ne p2, p1, :cond_1

    sget-object p1, Lyc/e0;->INVARIANT:Lyc/e0;

    :cond_1
    invoke-direct {v0, p0, p1}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    return-object v0
.end method

.method public static final e(Lyc/w;Lyc/A;Ljava/util/LinkedHashSet;Ljava/util/Set;)V
    .locals 6

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/W;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    invoke-static {p0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_0
    check-cast v0, LJb/W;

    invoke-interface {v0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/w;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0, p1, p2, p3}, LG5/B;->e(Lyc/w;Lyc/A;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, LJb/j;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, LJb/j;->q()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/Q;

    if-eqz v0, :cond_4

    invoke-static {v1, v0}, Lfb/n;->F(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/W;

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Lyc/Q;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    invoke-virtual {v1}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    invoke-interface {v1}, Lyc/L;->c()LJb/i;

    move-result-object v1

    invoke-static {p2, v1}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v4}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    invoke-virtual {v1}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object v5

    invoke-static {v1, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    const-string v4, "getType(...)"

    invoke-static {v1, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, LG5/B;->e(Lyc/w;Lyc/A;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    :cond_8
    :goto_5
    move v1, v3

    goto :goto_3

    :cond_9
    :goto_6
    return-void
.end method

.method public static final f(Lyc/w;)LGb/i;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->j()LGb/i;

    move-result-object p0

    const-string v0, "getBuiltIns(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final g(LJb/W;)Lyc/w;
    .locals 6

    invoke-interface {p0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "getUpperBounds(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    invoke-interface {p0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lyc/w;

    invoke-virtual {v4}, Lyc/w;->F0()Lyc/L;

    move-result-object v4

    invoke-interface {v4}, Lyc/L;->c()LJb/i;

    move-result-object v4

    instance-of v5, v4, LJb/f;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, LJb/f;

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, LJb/f;->d()LJb/g;

    move-result-object v4

    sget-object v5, LJb/g;->INTERFACE:LJb/g;

    if-eq v4, v5, :cond_0

    invoke-interface {v3}, LJb/f;->d()LJb/g;

    move-result-object v3

    sget-object v4, LJb/g;->ANNOTATION_CLASS:LJb/g;

    if-eq v3, v4, :cond_0

    move-object v3, v2

    :cond_3
    check-cast v3, Lyc/w;

    if-nez v3, :cond_4

    invoke-interface {p0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "first(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lyc/w;

    :cond_4
    return-object v3
.end method

.method public static final h(LJb/W;Lyc/L;Ljava/util/Set;)Z
    .locals 4

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "getUpperBounds(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/w;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, LJb/i;->n()Lyc/A;

    move-result-object v3

    invoke-virtual {v3}, Lyc/w;->F0()Lyc/L;

    move-result-object v3

    invoke-static {v1, v3, p2}, LG5/B;->c(Lyc/w;Lyc/L;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_0
    return v2
.end method

.method public static synthetic i(LJb/W;Lyc/L;I)Z
    .locals 1

    and-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p0, p1, v0}, LG5/B;->h(LJb/W;Lyc/L;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static final j(LRb/b;LRb/a;LJb/H;Lhc/f;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "from"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scopeOwner"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, LMb/D;

    iget-object p0, p2, LMb/D;->f:Lhc/c;

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {p3}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "asString(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "packageFqName"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final k(Lyc/w;LKb/h;)Lyc/w;
    .locals 1

    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object v0

    invoke-interface {v0}, LKb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LKb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object v0

    invoke-virtual {p0}, Lyc/w;->E0()Lyc/H;

    move-result-object p0

    invoke-static {p0, p1}, Lyc/c;->s(Lyc/H;LKb/h;)Lyc/H;

    move-result-object p0

    invoke-virtual {v0, p0}, Lyc/d0;->L0(Lyc/H;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lyc/w;)Lyc/d0;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    instance-of v0, p0, Lyc/r;

    const/4 v1, 0x2

    const/16 v2, 0xa

    const-string v3, "getParameters(...)"

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lyc/r;

    iget-object v5, v0, Lyc/r;->b:Lyc/A;

    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->c()LJb/i;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJb/W;

    new-instance v9, Lyc/F;

    invoke-direct {v9, v8}, Lyc/F;-><init>(LJb/W;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v5, v7, v4, v1}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object v5

    :cond_2
    :goto_1
    iget-object v0, v0, Lyc/r;->c:Lyc/A;

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->c()LJb/i;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v6, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJb/W;

    new-instance v7, Lyc/F;

    invoke-direct {v7, v6}, Lyc/F;-><init>(LJb/W;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0, v3, v4, v1}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-static {v5, v0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object v0

    goto :goto_5

    :cond_6
    instance-of v0, p0, Lyc/A;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Lyc/A;

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v5

    invoke-interface {v5}, Lyc/L;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v5

    invoke-interface {v5}, Lyc/L;->c()LJb/i;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v5

    invoke-interface {v5}, Lyc/L;->a()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJb/W;

    new-instance v6, Lyc/F;

    invoke-direct {v6, v5}, Lyc/F;-><init>(LJb/W;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-static {v0, v3, v4, v1}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-static {v0, p0}, Lyc/c;->i(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static m(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LR5/i;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, LR5/i;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->k(Lcom/google/android/gms/common/api/Status;)Lb5/h;

    move-result-object p0

    invoke-virtual {p2, p0}, LR5/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
