.class public final LSb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkc/f;
    .locals 0

    sget-object p0, Lkc/f;->SUCCESS_ONLY:Lkc/f;

    return-object p0
.end method

.method public b(LJb/b;LJb/b;LJb/f;)Lkc/g;
    .locals 7

    const/16 p0, 0x15

    const/4 p3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "superDescriptor"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "subDescriptor"

    invoke-static {p2, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, p2, LUb/g;

    if-eqz v2, :cond_9

    move-object v2, p2

    check-cast v2, LUb/g;

    invoke-virtual {v2}, LMb/v;->m()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1, p2}, Lkc/o;->i(LJb/b;LJb/b;)Lkc/n;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lkc/n;->b()Lkc/m;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    return-object p0

    :cond_2
    invoke-virtual {v2}, LMb/v;->H()Ljava/util/List;

    move-result-object v3

    const-string v5, "getValueParameters(...)"

    invoke-static {v3, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object v3

    sget-object v5, LSb/a;->f:LSb/a;

    invoke-static {v3, v5}, LJc/n;->t(LJc/l;Lsb/k;)LJc/t;

    move-result-object v3

    iget-object v5, v2, LMb/v;->h:Lyc/w;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lfb/l;->e([Ljava/lang/Object;)LJc/l;

    move-result-object v5

    new-array v6, p3, [LJc/l;

    aput-object v3, v6, v1

    aput-object v5, v6, v0

    invoke-static {v6}, Lfb/l;->e([Ljava/lang/Object;)LJc/l;

    move-result-object v3

    new-instance v5, LC9/a;

    invoke-direct {v5, p0}, LC9/a;-><init>(I)V

    invoke-static {v3, v5}, LJc/n;->p(LJc/l;Lsb/k;)LJc/i;

    move-result-object v3

    iget-object v2, v2, LMb/v;->j:LMb/w;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, LMb/w;->getType()Lyc/w;

    move-result-object v4

    :cond_3
    invoke-static {v4}, Lfb/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object v2

    new-array p3, p3, [LJc/l;

    aput-object v3, p3, v1

    aput-object v2, p3, v0

    invoke-static {p3}, Lfb/l;->e([Ljava/lang/Object;)LJc/l;

    move-result-object p3

    new-instance v2, LC9/a;

    invoke-direct {v2, p0}, LC9/a;-><init>(I)V

    invoke-static {p3, v2}, LJc/n;->p(LJc/l;Lsb/k;)LJc/i;

    move-result-object p0

    new-instance p3, LJc/g;

    invoke-direct {p3, p0}, LJc/g;-><init>(LJc/i;)V

    :cond_4
    invoke-virtual {p3}, LJc/g;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p3}, LJc/g;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/w;

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    instance-of p0, p0, LXb/j;

    if-nez p0, :cond_4

    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    return-object p0

    :cond_5
    new-instance p0, LXb/h;

    invoke-direct {p0}, LXb/h;-><init>()V

    new-instance p3, Lyc/Y;

    invoke-direct {p3, p0}, Lyc/Y;-><init>(Lyc/U;)V

    invoke-interface {p1, p3}, LJb/U;->f(Lyc/Y;)LJb/m;

    move-result-object p0

    check-cast p0, LJb/b;

    if-nez p0, :cond_6

    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    return-object p0

    :cond_6
    instance-of p1, p0, LMb/M;

    if-eqz p1, :cond_7

    move-object p1, p0

    check-cast p1, LMb/M;

    invoke-virtual {p1}, LMb/v;->m()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-interface {p1}, LJb/v;->y0()LJb/u;

    move-result-object p0

    invoke-interface {p0}, LJb/u;->s()LJb/u;

    move-result-object p0

    invoke-interface {p0}, LJb/u;->build()LJb/v;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_7
    sget-object p1, Lkc/o;->c:Lkc/o;

    invoke-virtual {p1, p0, p2, v1}, Lkc/o;->n(LJb/b;LJb/b;Z)Lkc/n;

    move-result-object p0

    invoke-virtual {p0}, Lkc/n;->b()Lkc/m;

    move-result-object p0

    const-string p1, "getResult(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LSb/h;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-ne p0, v0, :cond_8

    sget-object p0, Lkc/g;->OVERRIDABLE:Lkc/g;

    goto :goto_1

    :cond_8
    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    :goto_1
    return-object p0

    :cond_9
    :goto_2
    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    return-object p0
.end method
