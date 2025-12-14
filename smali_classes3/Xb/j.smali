.class public final LXb/j;
.super Lyc/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyc/A;Lyc/A;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lyc/r;-><init>(Lyc/A;Lyc/A;)V

    sget-object p0, Lzc/d;->a:Lzc/l;

    invoke-virtual {p0, p1, p2}, Lzc/l;->b(Lyc/w;Lyc/w;)Z

    return-void
.end method

.method public static final O0(Ljc/j;Lyc/w;)Ljava/util/ArrayList;
    .locals 10

    invoke-virtual {p1}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/Q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "typeProjection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v8, Ljc/g;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Ljc/g;-><init>(Ljc/j;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, ", "

    const/16 v9, 0x3c

    move-object v4, v2

    invoke-static/range {v3 .. v9}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final P0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3c

    invoke-static {p0, v0}, LKc/k;->p(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, LKc/k;->N(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p0, p0}, LKc/k;->M(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final G()Lrc/o;
    .locals 3

    invoke-virtual {p0}, Lyc/r;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/f;

    if-eqz v1, :cond_0

    check-cast v0, LJb/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p0, LXb/h;

    invoke-direct {p0}, LXb/h;-><init>()V

    invoke-interface {v0, p0}, LJb/f;->o0(Lyc/U;)Lrc/o;

    move-result-object p0

    const-string v0, "getMemberScope(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect classifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/r;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H0(Lzc/f;)Lyc/w;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LXb/j;

    iget-object v0, p0, Lyc/r;->b:Lyc/A;

    const-string v1, "type"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lyc/r;-><init>(Lyc/A;Lyc/A;)V

    return-object p1
.end method

.method public final J0(Z)Lyc/d0;
    .locals 2

    new-instance v0, LXb/j;

    iget-object v1, p0, Lyc/r;->b:Lyc/A;

    invoke-virtual {v1, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v1

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LXb/j;-><init>(Lyc/A;Lyc/A;)V

    return-object v0
.end method

.method public final K0(Lzc/f;)Lyc/d0;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LXb/j;

    iget-object v0, p0, Lyc/r;->b:Lyc/A;

    const-string v1, "type"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lyc/r;-><init>(Lyc/A;Lyc/A;)V

    return-object p1
.end method

.method public final L0(Lyc/H;)Lyc/d0;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXb/j;

    iget-object v1, p0, Lyc/r;->b:Lyc/A;

    invoke-virtual {v1, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object v1

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LXb/j;-><init>(Lyc/A;Lyc/A;)V

    return-object v0
.end method

.method public final M0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lyc/r;->b:Lyc/A;

    return-object p0
.end method

.method public final N0(Ljc/j;Ljc/j;)Ljava/lang/String;
    .locals 10

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/r;->b:Lyc/A;

    invoke-virtual {p1, v0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyc/r;->c:Lyc/A;

    invoke-virtual {p1, v2}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p2, Ljc/j;->a:Ljc/o;

    invoke-virtual {p2}, Ljc/o;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "raw ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v2}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object p0

    invoke-virtual {p1, v1, v3, p0}, Ljc/j;->E(Ljava/lang/String;Ljava/lang/String;LGb/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, v0}, LXb/j;->O0(Ljc/j;Lyc/w;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, v2}, LXb/j;->O0(Ljc/j;Lyc/w;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v8, LXb/i;->a:LXb/i;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, ", "

    const/16 v9, 0x1e

    move-object v4, p2

    invoke-static/range {v4 .. v9}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0}, Lfb/n;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb/j;

    iget-object v4, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, "out "

    invoke-static {v0, v5}, LKc/k;->D(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v3, v2}, LXb/j;->P0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-static {v1, v2}, LXb/j;->P0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p2

    :cond_6
    invoke-static {p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object p0

    invoke-virtual {p1, p2, v3, p0}, Ljc/j;->E(Ljava/lang/String;Ljava/lang/String;LGb/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
