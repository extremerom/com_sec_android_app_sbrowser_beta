.class public final Lwc/u;
.super LMb/d;
.source "SourceFile"


# instance fields
.field public final l:Luc/m;

.field public final m:Lcc/Y;

.field public final n:Lwc/a;


# direct methods
.method public constructor <init>(Luc/m;Lcc/Y;I)V
    .locals 10

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v2, v0, Luc/k;->a:Lxc/o;

    sget-object v4, LKb/g;->a:LKb/f;

    iget v1, p2, Lcc/Y;->e:I

    iget-object v3, p1, Luc/m;->b:Ljava/lang/Object;

    check-cast v3, Lec/g;

    invoke-static {v3, v1}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v5

    iget-object v1, p2, Lcc/Y;->g:Lcc/X;

    const-string v3, "getVariance(...)"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Luc/y;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    sget-object v1, Lyc/e0;->INVARIANT:Lyc/e0;

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    sget-object v1, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    goto :goto_0

    :cond_2
    sget-object v1, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    goto :goto_0

    :goto_1
    iget-boolean v7, p2, Lcc/Y;->f:Z

    sget-object v9, LJb/T;->c:LJb/T;

    iget-object v1, p1, Luc/m;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, LJb/l;

    move-object v1, p0

    move v8, p3

    invoke-direct/range {v1 .. v9}, LMb/d;-><init>(Lxc/o;LJb/l;LKb/h;Lhc/f;Lyc/e0;ZILJb/T;)V

    iput-object p1, p0, Lwc/u;->l:Luc/m;

    iput-object p2, p0, Lwc/u;->m:Lcc/Y;

    new-instance p1, Lwc/a;

    new-instance p2, LDb/E;

    const/16 p3, 0x1b

    invoke-direct {p2, p3, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    iget-object p3, v0, Luc/k;->a:Lxc/o;

    invoke-direct {p1, p3, p2}, Lwc/a;-><init>(Lxc/o;Lsb/a;)V

    iput-object p1, p0, Lwc/u;->n:Lwc/a;

    return-void
.end method


# virtual methods
.method public final V0()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lwc/u;->l:Luc/m;

    iget-object v1, v0, Luc/m;->d:Ljava/lang/Object;

    check-cast v1, LX4/i;

    iget-object v2, p0, Lwc/u;->m:Lcc/Y;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typeTable"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcc/Y;->h:Ljava/util/List;

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-nez v3, :cond_1

    iget-object v2, v2, Lcc/Y;->i:Ljava/util/List;

    const-string v3, "getUpperBoundIdList(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, LX4/i;->f(I)Lcc/T;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object p0

    invoke-virtual {p0}, LGb/i;->n()Lyc/A;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast v3, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/T;

    iget-object v3, v0, Luc/m;->h:Ljava/lang/Object;

    check-cast v3, Luc/E;

    invoke-virtual {v3, v2}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public final u()LKb/h;
    .locals 0

    iget-object p0, p0, Lwc/u;->n:Lwc/a;

    return-object p0
.end method
