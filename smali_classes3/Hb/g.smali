.class public final LHb/g;
.super LMb/M;
.source "SourceFile"


# direct methods
.method public constructor <init>(LJb/l;LHb/g;LJb/c;Z)V
    .locals 7

    sget-object v3, LKb/g;->a:LKb/f;

    sget-object v4, LEc/t;->g:Lhc/f;

    sget-object v6, LJb/S;->L:LJb/T;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, LMb/M;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LMb/v;->n:Z

    iput-boolean p4, p0, LMb/v;->v:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, LMb/v;->w:Z

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final W()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final W0(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)LMb/v;
    .locals 0

    const-string p4, "newOwner"

    invoke-static {p2, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "kind"

    invoke-static {p1, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "annotations"

    invoke-static {p5, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, LHb/g;

    check-cast p3, LHb/g;

    iget-boolean p0, p0, LMb/v;->v:Z

    invoke-direct {p4, p2, p3, p1, p0}, LHb/g;-><init>(LJb/l;LHb/g;LJb/c;Z)V

    return-object p4
.end method

.method public final X0(LMb/u;)LMb/v;
    .locals 8

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LMb/v;->X0(LMb/u;)LMb/v;

    move-result-object p0

    check-cast p0, LHb/g;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LMb/v;->H()Ljava/util/List;

    move-result-object p1

    const-string v0, "getValueParameters(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LMb/T;

    check-cast v1, LMb/U;

    invoke-virtual {v1}, LMb/U;->getType()Lyc/w;

    move-result-object v1

    const-string v2, "getType(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LG5/I2;->d(Lyc/w;)Lhc/f;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LMb/v;->H()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LMb/T;

    check-cast v4, LMb/U;

    invoke-virtual {v4}, LMb/U;->getType()Lyc/w;

    move-result-object v4

    invoke-static {v4, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LG5/I2;->d(Lyc/w;)Lhc/f;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LMb/v;->H()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_6

    invoke-virtual {p0}, LMb/v;->H()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v1, v4}, Lfb/n;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldb/j;

    iget-object v6, v5, Ldb/j;->a:Ljava/lang/Object;

    check-cast v6, Lhc/f;

    iget-object v5, v5, Ldb/j;->b:Ljava/lang/Object;

    check-cast v5, LMb/T;

    check-cast v5, LMb/n;

    invoke-virtual {v5}, LMb/n;->getName()Lhc/f;

    move-result-object v5

    invoke-static {v6, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_6
    invoke-virtual {p0}, LMb/v;->H()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LMb/T;

    move-object v5, v4

    check-cast v5, LMb/n;

    invoke-virtual {v5}, LMb/n;->getName()Lhc/f;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v4, LMb/T;->g:I

    sub-int v7, v6, p1

    if-ltz v7, :cond_7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhc/f;

    if-eqz v7, :cond_7

    move-object v5, v7

    :cond_7
    invoke-virtual {v4, p0, v5, v6}, LMb/T;->U0(LHb/g;Lhc/f;I)LMb/T;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object p1, Lyc/Y;->b:Lyc/Y;

    invoke-virtual {p0, p1}, LMb/v;->a1(Lyc/Y;)LMb/u;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    :cond_9
    move v2, v4

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhc/f;

    if-nez v3, :cond_b

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, LMb/u;->v:Ljava/lang/Boolean;

    iput-object v0, p1, LMb/u;->g:Ljava/util/List;

    invoke-virtual {p0}, LMb/M;->g1()LMb/M;

    move-result-object v0

    iput-object v0, p1, LMb/u;->e:LJb/v;

    invoke-super {p0, p1}, LMb/v;->X0(LMb/u;)LMb/v;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_c
    :goto_3
    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
