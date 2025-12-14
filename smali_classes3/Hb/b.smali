.class public final LHb/b;
.super Lyc/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:LHb/c;


# direct methods
.method public constructor <init>(LHb/c;)V
    .locals 0

    iput-object p1, p0, LHb/b;->c:LHb/c;

    iget-object p1, p1, LHb/c;->e:Lxc/l;

    invoke-direct {p0, p1}, Lyc/b;-><init>(Lxc/o;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LHb/b;->c:LHb/c;

    iget-object p0, p0, LHb/c;->k:Ljava/util/List;

    return-object p0
.end method

.method public final c()LJb/i;
    .locals 0

    iget-object p0, p0, LHb/b;->c:LHb/c;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f()Ljava/util/Collection;
    .locals 11

    const/4 v0, 0x1

    iget-object p0, p0, LHb/b;->c:LHb/c;

    iget-object v1, p0, LHb/c;->g:LHb/l;

    sget-object v2, LHb/h;->c:LHb/h;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, LHb/c;->l:Lhc/b;

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v3, LHb/i;->c:LHb/i;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget v4, p0, LHb/c;->h:I

    if-eqz v3, :cond_1

    sget-object v1, LHb/c;->m:Lhc/b;

    new-instance v3, Lhc/b;

    sget-object v5, LGb/q;->l:Lhc/c;

    invoke-virtual {v2, v4}, LHb/l;->a(I)Lhc/f;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    filled-new-array {v1, v3}, [Lhc/b;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v2, LHb/k;->c:LHb/k;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, LHb/c;->l:Lhc/b;

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v3, LHb/j;->c:LHb/j;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, LHb/c;->m:Lhc/b;

    new-instance v3, Lhc/b;

    sget-object v5, LGb/q;->f:Lhc/c;

    invoke-virtual {v2, v4}, LHb/l;->a(I)Lhc/f;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    filled-new-array {v1, v3}, [Lhc/b;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iget-object v2, p0, LHb/c;->f:Lvc/c;

    check-cast v2, LMb/D;

    invoke-virtual {v2}, LMb/D;->U0()LJb/C;

    move-result-object v2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/b;

    invoke-static {v2, v5}, LJb/y;->d(LJb/C;Lhc/b;)LJb/f;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-interface {v6}, LJb/i;->w()Lyc/L;

    move-result-object v5

    invoke-interface {v5}, Lyc/L;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v7, "<this>"

    iget-object v8, p0, LHb/c;->k:Ljava/util/List;

    invoke-static {v8, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v5, :cond_9

    if-nez v5, :cond_3

    sget-object v5, Lfb/v;->a:Lfb/v;

    goto :goto_4

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_4

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_4
    if-ne v5, v0, :cond_5

    invoke-static {v8}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    instance-of v10, v8, Ljava/util/RandomAccess;

    if-eqz v10, :cond_6

    sub-int v5, v7, v5

    :goto_2
    if-ge v5, v7, :cond_7

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v0

    goto :goto_2

    :cond_6
    sub-int/2addr v7, v5

    invoke-interface {v8, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v5, v9

    :goto_4
    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJb/W;

    new-instance v9, Lyc/F;

    invoke-interface {v8}, LJb/i;->n()Lyc/A;

    move-result-object v8

    invoke-direct {v9, v8}, Lyc/F;-><init>(Lyc/w;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    sget-object v5, Lyc/H;->b:LA7/h;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lyc/H;->c:Lyc/H;

    invoke-static {v5, v6, v7}, Lyc/c;->t(Lyc/H;LJb/f;Ljava/util/List;)Lyc/A;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    const-string p0, "Requested element count "

    const-string v0, " is less than zero."

    invoke-static {v5, p0, v0}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Built-in class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {v3}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_c
    sget p0, LIc/a;->a:I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "should not be called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()LJb/T;
    .locals 0

    sget-object p0, LJb/T;->c:LJb/T;

    return-object p0
.end method

.method public final n()LJb/f;
    .locals 0

    iget-object p0, p0, LHb/b;->c:LHb/c;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LHb/b;->c:LHb/c;

    invoke-virtual {p0}, LHb/c;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
