.class public abstract LJb/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LP7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LP7/c;

    const-string v1, "InvalidModuleNotifier"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, LP7/c;-><init>(ILjava/lang/Object;)V

    sput-object v0, LJb/y;->a:LP7/c;

    return-void
.end method

.method public static final a(Lyc/A;LJb/j;I)Lo3/t;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, LAc/l;->f(LJb/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LJb/j;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {p1}, LJb/j;->z()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {p1}, Lkc/e;->o(LJb/l;)Z

    move-result v1

    :cond_1
    new-instance v1, Lo3/t;

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lo3/t;-><init>(LJb/j;Ljava/util/List;Lo3/t;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lo3/t;

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object v3

    instance-of v4, v3, LJb/j;

    if-eqz v4, :cond_3

    move-object v0, v3

    check-cast v0, LJb/j;

    :cond_3
    invoke-static {p0, v0, v1}, LJb/y;->a(Lyc/A;LJb/j;I)Lo3/t;

    move-result-object p0

    invoke-direct {v2, p1, p2, p0}, Lo3/t;-><init>(LJb/j;Ljava/util/List;Lo3/t;)V

    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final b(LJb/I;Lhc/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LJb/L;

    if-eqz v0, :cond_0

    check-cast p0, LJb/L;

    invoke-interface {p0, p1, p2}, LJb/L;->a(Lhc/c;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LJb/I;->c(Lhc/c;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public static final c(LJb/j;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x1

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LJb/j;->q()Ljava/util/List;

    move-result-object v1

    const-string v2, "getDeclaredTypeParameters(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LJb/j;->z()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v3

    instance-of v3, v3, LJb/b;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    sget v3, Loc/d;->a:I

    sget-object v3, Loc/b;->b:Loc/b;

    invoke-static {p0, v3}, LJc/n;->q(Ljava/lang/Object;Lsb/k;)LJc/l;

    move-result-object v4

    invoke-static {v4, v0}, LJc/n;->n(LJc/l;I)LJc/l;

    move-result-object v4

    new-instance v5, LJc/p;

    invoke-direct {v5, v0, v4}, LJc/p;-><init>(ILjava/lang/Object;)V

    sget-object v4, LJb/s;->e:LJb/s;

    new-instance v6, LJc/h;

    invoke-direct {v6, v5, v0, v4}, LJc/h;-><init>(LJc/l;ZLsb/k;)V

    sget-object v4, LJb/s;->f:LJb/s;

    new-instance v5, LJc/i;

    sget-object v7, LJc/r;->a:LJc/r;

    invoke-direct {v5, v6, v4, v7}, LJc/i;-><init>(LJc/l;Lsb/k;Lsb/k;)V

    invoke-static {v5}, LJc/n;->v(LJc/l;)Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v3}, LJc/n;->q(Ljava/lang/Object;Lsb/k;)LJc/l;

    move-result-object v3

    invoke-static {v3, v0}, LJc/n;->n(LJc/l;I)LJc/l;

    move-result-object v0

    invoke-interface {v0}, LJc/l;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, LJb/f;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    check-cast v3, LJb/f;

    if-eqz v3, :cond_3

    invoke-interface {v3}, LJb/i;->w()Lyc/L;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v5

    :cond_3
    if-nez v5, :cond_4

    sget-object v5, Lfb/v;->a:Lfb/v;

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, LJb/j;->q()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_5
    check-cast v4, Ljava/util/Collection;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v4}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJb/W;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, LJb/e;

    invoke-direct {v5, v3, p0, v4}, LJb/e;-><init>(LJb/W;LJb/j;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    check-cast v1, Ljava/util/Collection;

    invoke-static {v2, v1}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LJb/C;Lhc/b;)LJb/f;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LJb/y;->e(LJb/C;Lhc/b;)LJb/i;

    move-result-object p0

    instance-of p1, p0, LJb/f;

    if-eqz p1, :cond_0

    check-cast p0, LJb/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(LJb/C;Lhc/b;)LJb/i;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkc/p;->a:LP7/c;

    invoke-interface {p0, v0}, LJb/C;->T(LP7/c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lhc/b;->a:Lhc/c;

    invoke-interface {p0, v0}, LJb/C;->q0(Lhc/c;)LJb/M;

    move-result-object p0

    iget-object p1, p1, Lhc/b;->b:Lhc/c;

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lhc/d;->e(Lhc/d;)Ljava/util/List;

    move-result-object p1

    check-cast p0, LMb/y;

    iget-object p0, p0, LMb/y;->h:Lrc/k;

    invoke-static {p1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/f;

    sget-object v1, LRb/c;->FROM_DESERIALIZATION:LRb/c;

    invoke-virtual {p0, v0, v1}, Lrc/k;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhc/f;

    instance-of v2, p0, LJb/f;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p0, LJb/f;

    invoke-interface {p0}, LJb/f;->Q()Lrc/o;

    move-result-object p0

    sget-object v2, LRb/c;->FROM_DESERIALIZATION:LRb/c;

    invoke-interface {p0, v1, v2}, Lrc/q;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object p0

    instance-of v1, p0, LJb/f;

    if-eqz v1, :cond_2

    check-cast p0, LJb/f;

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_0

    :cond_3
    move-object v0, p0

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static final f(LJb/C;Lhc/b;Lcom/google/firebase/messaging/q;)LJb/f;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LJb/y;->d(LJb/C;Lhc/b;)LJb/f;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LJb/t;->b:LJb/t;

    invoke-static {p1, p0}, LJc/n;->q(Ljava/lang/Object;Lsb/k;)LJc/l;

    move-result-object p0

    sget-object v0, LJb/s;->b:LJb/s;

    invoke-static {p0, v0}, LJc/n;->t(LJc/l;Lsb/k;)LJc/t;

    move-result-object p0

    invoke-static {p0}, LJc/n;->v(LJc/l;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/google/firebase/messaging/q;->d(Lhc/b;Ljava/util/List;)LJb/f;

    move-result-object p0

    return-object p0
.end method

.method public static final g(LJb/l;)LJb/i;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of p0, p0, LJb/H;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object p0

    instance-of p0, p0, LJb/H;

    if-nez p0, :cond_1

    invoke-static {v0}, LJb/y;->g(LJb/l;)LJb/i;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of p0, v0, LJb/i;

    if-eqz p0, :cond_2

    move-object v1, v0

    check-cast v1, LJb/i;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static final h(LJb/I;Lhc/c;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LJb/L;

    if-eqz v0, :cond_0

    check-cast p0, LJb/L;

    invoke-interface {p0, p1}, LJb/L;->b(Lhc/c;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LJb/y;->i(LJb/I;Lhc/c;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final i(LJb/I;Lhc/c;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, LJb/y;->b(LJb/I;Lhc/c;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static final j(LMb/B;Lhc/c;LRb/c;)LJb/f;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupLocation"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lhc/c;->b()Lhc/c;

    move-result-object v1

    invoke-virtual {p0, v1}, LMb/B;->q0(Lhc/c;)LJb/M;

    move-result-object v1

    check-cast v1, LMb/y;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v3

    iget-object v1, v1, LMb/y;->h:Lrc/k;

    invoke-virtual {v1, v3, p2}, Lrc/k;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object v1

    instance-of v3, v1, LJb/f;

    if-eqz v3, :cond_1

    check-cast v1, LJb/f;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lhc/c;->b()Lhc/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, LJb/y;->j(LMb/B;Lhc/c;LRb/c;)LJb/f;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, LJb/f;->Q()Lrc/o;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lrc/q;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    instance-of p1, p0, LJb/f;

    if-eqz p1, :cond_4

    move-object v2, p0

    check-cast v2, LJb/f;

    :cond_4
    return-object v2
.end method
