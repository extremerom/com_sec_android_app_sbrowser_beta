.class public final LWb/p;
.super LWb/B;
.source "SourceFile"


# static fields
.field public static final synthetic v:I


# instance fields
.field public final n:LJb/f;

.field public final o:LPb/n;

.field public final p:Z

.field public final q:Lxc/i;

.field public final r:Lxc/i;

.field public final s:Lxc/i;

.field public final t:Lxc/i;

.field public final u:Lxc/j;


# direct methods
.method public constructor <init>(Lo3/i;LJb/f;LPb/n;ZLWb/p;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5}, LWb/B;-><init>(Lo3/i;LWb/B;)V

    iput-object p2, p0, LWb/p;->n:LJb/f;

    iput-object p3, p0, LWb/p;->o:LPb/n;

    iput-boolean p4, p0, LWb/p;->p:Z

    iget-object p2, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p2, LVb/a;

    iget-object p2, p2, LVb/a;->a:Lxc/l;

    new-instance p3, LWb/k;

    invoke-direct {p3, p0, p1}, LWb/k;-><init>(LWb/p;Lo3/i;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lxc/i;

    invoke-direct {p4, p2, p3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p4, p0, LWb/p;->q:Lxc/i;

    new-instance p3, LWb/l;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, LWb/l;-><init>(LWb/p;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lxc/i;

    invoke-direct {p4, p2, p3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p4, p0, LWb/p;->r:Lxc/i;

    new-instance p3, LWb/k;

    invoke-direct {p3, p1, p0}, LWb/k;-><init>(Lo3/i;LWb/p;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lxc/i;

    invoke-direct {p4, p2, p3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p4, p0, LWb/p;->s:Lxc/i;

    new-instance p3, LWb/l;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, LWb/l;-><init>(LWb/p;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lxc/i;

    invoke-direct {p4, p2, p3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p4, p0, LWb/p;->t:Lxc/i;

    new-instance p3, LWb/m;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0, p1}, LWb/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, LWb/p;->u:Lxc/j;

    return-void
.end method

.method public static A(LMb/M;LJb/v;Ljava/util/AbstractCollection;)LMb/M;
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/M;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, LMb/v;->C:LJb/v;

    if-nez v1, :cond_1

    invoke-static {v0, p1}, LWb/p;->D(LJb/v;LJb/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, LJb/v;->y0()LJb/u;

    move-result-object p0

    invoke-interface {p0}, LJb/u;->t()LJb/u;

    move-result-object p0

    invoke-interface {p0}, LJb/u;->build()LJb/v;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, LMb/M;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static B(LMb/M;)LMb/M;
    .locals 5

    invoke-virtual {p0}, LMb/v;->H()Ljava/util/List;

    move-result-object v0

    const-string v1, "getValueParameters(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/T;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    move-object v3, v0

    check-cast v3, LMb/U;

    invoke-virtual {v3}, LMb/U;->getType()Lyc/w;

    move-result-object v3

    invoke-virtual {v3}, Lyc/w;->F0()Lyc/L;

    move-result-object v3

    invoke-interface {v3}, Lyc/L;->c()LJb/i;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object v3

    invoke-virtual {v3}, Lhc/d;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lhc/d;->g()Lhc/c;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    sget-object v4, LGb/q;->g:Lhc/c;

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0}, LJb/v;->y0()LJb/u;

    move-result-object v2

    invoke-virtual {p0}, LMb/v;->H()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lfb/n;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, LJb/u;->h(Ljava/util/List;)LJb/u;

    move-result-object p0

    check-cast v0, LMb/U;

    invoke-virtual {v0}, LMb/U;->getType()Lyc/w;

    move-result-object v0

    invoke-virtual {v0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/Q;

    invoke-virtual {v0}, Lyc/Q;->b()Lyc/w;

    move-result-object v0

    invoke-interface {p0, v0}, LJb/u;->f(Lyc/w;)LJb/u;

    move-result-object p0

    invoke-interface {p0}, LJb/u;->build()LJb/v;

    move-result-object p0

    check-cast p0, LMb/M;

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, LMb/v;->v:Z

    :cond_4
    return-object p0

    :cond_5
    :goto_3
    return-object v2
.end method

.method public static D(LJb/v;LJb/v;)Z
    .locals 3

    sget-object v0, Lkc/o;->c:Lkc/o;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lkc/o;->n(LJb/b;LJb/b;Z)Lkc/n;

    move-result-object v0

    invoke-virtual {v0}, Lkc/n;->b()Lkc/m;

    move-result-object v0

    const-string v2, "getResult(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkc/m;->OVERRIDABLE:Lkc/m;

    if-ne v0, v2, :cond_0

    invoke-static {p1, p0}, LG5/o2;->c(LJb/b;LJb/b;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static E(LMb/M;LMb/M;)Z
    .locals 2

    sget v0, LSb/d;->l:I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    invoke-virtual {v0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeAt"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LG5/W3;->c(LJb/b;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LSb/H;->g:LSb/D;

    iget-object v1, v1, LSb/D;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LMb/M;->g1()LMb/M;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1, p0}, LWb/p;->D(LJb/v;LJb/v;)Z

    move-result p0

    return p0
.end method

.method public static F(LJb/P;Ljava/lang/String;Lsb/k;)LMb/M;
    .locals 4

    invoke-static {p1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LMb/M;

    invoke-virtual {p2}, LMb/v;->H()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lzc/d;->a:Lzc/l;

    iget-object v2, p2, LMb/v;->h:Lyc/w;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, LJb/Y;->getType()Lyc/w;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lzc/l;->b(Lyc/w;Lyc/w;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    move-object v0, p2

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    :cond_4
    return-object v0
.end method

.method public static H(LJb/P;Lsb/k;)LMb/M;
    .locals 5

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object v0

    invoke-virtual {v0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LSb/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/M;

    invoke-virtual {v0}, LMb/v;->H()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, LMb/v;->h:Lyc/w;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, LGb/i;->e:Lhc/f;

    sget-object v3, LGb/p;->d:Lhc/d;

    invoke-static {v2, v3}, LGb/i;->E(Lyc/w;Lhc/d;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lzc/d;->a:Lzc/l;

    invoke-virtual {v0}, LMb/v;->H()Ljava/util/List;

    move-result-object v3

    const-string v4, "getValueParameters(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMb/T;

    check-cast v3, LMb/U;

    invoke-virtual {v3}, LMb/U;->getType()Lyc/w;

    move-result-object v3

    invoke-interface {p0}, LJb/Y;->getType()Lyc/w;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lzc/l;->a(Lyc/w;Lyc/w;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v1, v0

    :cond_4
    :goto_0
    if-eqz v1, :cond_0

    :cond_5
    return-object v1
.end method

.method public static K(LMb/M;LJb/v;)Z
    .locals 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, LJb/v;->a()LJb/v;

    move-result-object v2

    const-string v3, "getOriginal(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, LWb/p;->D(LJb/v;LJb/v;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final C(LJb/P;Lsb/k;)Z
    .locals 2

    invoke-static {p1}, LG5/n3;->b(LJb/P;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, LWb/p;->G(LJb/P;Lsb/k;)LMb/M;

    move-result-object p0

    invoke-static {p1, p2}, LWb/p;->H(LJb/P;Lsb/k;)LMb/M;

    move-result-object p2

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, LJb/Z;->M()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, LMb/v;->r()LJb/B;

    move-result-object p1

    invoke-virtual {p0}, LMb/v;->r()LJb/B;

    move-result-object p0

    if-ne p1, p0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public final G(LJb/P;Lsb/k;)LMb/M;
    .locals 4

    invoke-interface {p1}, LJb/P;->b()LMb/K;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, LG5/q2;->e(LJb/d;)LJb/d;

    move-result-object v0

    check-cast v0, LMb/K;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, LGb/i;->A(LJb/l;)Z

    invoke-static {v0}, Loc/d;->k(LJb/d;)LJb/d;

    move-result-object v2

    sget-object v3, LSb/a;->e:LSb/a;

    invoke-static {v2, v3}, Loc/d;->b(LJb/d;Lsb/k;)LJb/d;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, LSb/f;->a:Ljava/lang/Object;

    invoke-static {v2}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhc/f;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object p0, p0, LWb/p;->n:LJb/f;

    invoke-static {p0, v0}, LG5/q2;->g(LJb/f;LJb/d;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1, v1, p2}, LWb/p;->F(LJb/P;Ljava/lang/String;Lsb/k;)LMb/M;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "asString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LSb/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, LWb/p;->F(LJb/P;Ljava/lang/String;Lsb/k;)LMb/M;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lhc/f;)Ljava/util/LinkedHashSet;
    .locals 3

    invoke-virtual {p0}, LWb/p;->z()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/w;

    invoke-virtual {v1}, Lyc/w;->G()Lrc/o;

    move-result-object v1

    sget-object v2, LRb/c;->WHEN_GET_SUPER_MEMBERS:LRb/c;

    invoke-interface {v1, p1, v2}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final J(Lhc/f;)Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, LWb/p;->z()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/w;

    invoke-virtual {v1}, Lyc/w;->G()Lrc/o;

    move-result-object v1

    sget-object v2, LRb/c;->WHEN_GET_SUPER_MEMBERS:LRb/c;

    invoke-interface {v1, p1, v2}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJb/P;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v2, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final L(LMb/M;)Z
    .locals 10

    invoke-virtual {p1}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asString(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, LSb/w;->a:Lhc/c;

    const-string v4, "get"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "is"

    const-string v9, "set"

    if-nez v6, :cond_2

    invoke-static {v2, v8, v5}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v9, v5}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-static {v0, v9, v7, v2}, LG5/p2;->c(Lhc/f;Ljava/lang/String;Ljava/lang/String;I)Lhc/f;

    move-result-object v4

    invoke-static {v0, v9, v8, v2}, LG5/p2;->c(Lhc/f;Ljava/lang/String;Ljava/lang/String;I)Lhc/f;

    move-result-object v0

    filled-new-array {v4, v0}, [Lhc/f;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->q([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v2, LSb/f;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    sget-object v0, Lfb/v;->a:Lfb/v;

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v2, 0xc

    invoke-static {v0, v4, v7, v2}, LG5/p2;->c(Lhc/f;Ljava/lang/String;Ljava/lang/String;I)Lhc/f;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v2, 0x8

    invoke-static {v0, v8, v7, v2}, LG5/p2;->c(Lhc/f;Ljava/lang/String;Ljava/lang/String;I)Lhc/f;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lfb/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_4
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhc/f;

    invoke-virtual {p0, v2}, LWb/p;->J(Lhc/f;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_7

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJb/P;

    new-instance v6, LWb/m;

    invoke-direct {v6, p1, p0}, LWb/m;-><init>(LMb/M;LWb/p;)V

    invoke-virtual {p0, v4, v6}, LWb/p;->C(LJb/P;Lsb/k;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, LJb/Z;->M()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, LMb/n;->getName()Lhc/f;

    move-result-object v4

    invoke-virtual {v4}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9, v5}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_9
    return v5

    :cond_a
    :goto_3
    sget-object v0, LSb/H;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LSb/H;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/f;

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v0}, LWb/p;->I(Lhc/f;)Ljava/util/LinkedHashSet;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, LMb/M;

    const-string v7, "<this>"

    invoke-static {v6, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, LG5/q2;->e(LJb/d;)LJb/d;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    invoke-interface {p1}, LJb/v;->y0()LJb/u;

    move-result-object v2

    invoke-interface {v2, v0}, LJb/u;->M(Lhc/f;)LJb/u;

    invoke-interface {v2}, LJb/u;->R()LJb/u;

    invoke-interface {v2}, LJb/u;->F()LJb/u;

    invoke-interface {v2}, LJb/u;->build()LJb/v;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, LMb/M;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMb/M;

    invoke-static {v3, v0}, LWb/p;->E(LMb/M;LMb/M;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_9

    :cond_11
    :goto_5
    sget v0, LSb/e;->l:I

    invoke-virtual {p1}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LSb/e;->b(Lhc/f;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {p1}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LWb/p;->I(Lhc/f;)Ljava/util/LinkedHashSet;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMb/M;

    invoke-static {v3}, LSb/e;->a(LJb/v;)LJb/v;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJb/v;

    invoke-static {p1, v2}, LWb/p;->K(LMb/M;LJb/v;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_9

    :cond_17
    :goto_7
    invoke-static {p1}, LWb/p;->B(LMb/M;)LMb/M;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_8

    :cond_18
    invoke-virtual {p1}, LMb/n;->getName()Lhc/f;

    move-result-object p1

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LWb/p;->I(Lhc/f;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_8

    :cond_19
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LMb/M;

    invoke-interface {p1}, LJb/v;->o()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1}, LWb/p;->D(LJb/v;LJb/v;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_9

    :cond_1b
    :goto_8
    const/4 v5, 0x1

    :goto_9
    return v5
.end method

.method public final M(Lhc/f;LRb/a;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LWb/B;->b:Lo3/i;

    iget-object p1, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    const-string p2, "<this>"

    iget-object p1, p1, LVb/a;->n:LRb/b;

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopeOwner"

    iget-object p0, p0, LWb/p;->n:LJb/f;

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final N(Lhc/f;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, LWb/B;->e:Lxc/i;

    invoke-virtual {v0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWb/c;

    invoke-interface {v0, p1}, LWb/c;->f(Lhc/f;)Ljava/util/Collection;

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

    check-cast v1, LPb/w;

    invoke-virtual {p0, v1}, LWb/B;->t(LPb/w;)LUb/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final O(Lhc/f;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0, p1}, LWb/p;->I(Lhc/f;)Ljava/util/LinkedHashSet;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LMb/M;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LG5/q2;->e(LJb/d;)LJb/d;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, LSb/e;->a(LJb/v;)LJb/v;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final c(Lhc/f;LRb/a;)LJb/i;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LWb/p;->M(Lhc/f;LRb/a;)V

    iget-object p2, p0, LWb/B;->c:LWb/B;

    check-cast p2, LWb/p;

    if-eqz p2, :cond_0

    iget-object p2, p2, LWb/p;->u:Lxc/j;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LJb/f;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LWb/p;->u:Lxc/j;

    invoke-virtual {p0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, LJb/i;

    :goto_0
    return-object p2
.end method

.method public final d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LWb/p;->M(Lhc/f;LRb/a;)V

    invoke-super {p0, p1, p2}, LWb/B;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LWb/p;->M(Lhc/f;LRb/a;)V

    invoke-super {p0, p1, p2}, LWb/B;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lrc/f;Lrc/l;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LWb/p;->r:Lxc/i;

    invoke-virtual {p1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p0, p0, LWb/p;->t:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lrc/f;Lrc/l;)Ljava/util/Set;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LWb/p;->n:LJb/f;

    invoke-interface {v0}, LJb/i;->w()Lyc/L;

    move-result-object v1

    invoke-interface {v1}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "getSupertypes(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/w;

    invoke-virtual {v3}, Lyc/w;->G()Lrc/o;

    move-result-object v3

    invoke-interface {v3}, Lrc/o;->b()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v2}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LWb/B;->e:Lxc/i;

    invoke-virtual {v1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWb/c;

    invoke-interface {v3}, LWb/c;->a()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWb/c;

    invoke-interface {v1}, LWb/c;->b()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2}, LWb/p;->h(Lrc/f;Lrc/l;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, LWb/B;->b:Lo3/i;

    iget-object p1, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-object p1, p1, LVb/a;->x:Lpc/e;

    check-cast p1, Lpc/a;

    invoke-virtual {p1, v0, p0}, Lpc/a;->e(LJb/f;Lo3/i;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public final j(Lhc/f;Ljava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "name"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, LWb/p;->o:LPb/n;

    invoke-virtual {v3}, LPb/n;->g()Z

    move-result v3

    iget-object v4, v0, LWb/p;->n:LJb/f;

    iget-object v5, v0, LWb/B;->b:Lo3/i;

    if-eqz v3, :cond_3

    iget-object v3, v0, LWb/B;->e:Lxc/i;

    invoke-virtual {v3}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LWb/c;

    invoke-interface {v6, v1}, LWb/c;->c(Lhc/f;)LPb/z;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LMb/M;

    invoke-virtual {v7}, LMb/v;->H()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWb/c;

    invoke-interface {v3, v1}, LWb/c;->c(Lhc/f;)LPb/z;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v5, v3}, LG5/V2;->f(Lo3/i;LYb/b;)LVb/c;

    move-result-object v6

    invoke-virtual {v3}, LPb/v;->c()Lhc/f;

    move-result-object v7

    iget-object v8, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast v8, LVb/a;

    iget-object v9, v8, LVb/a;->j:LOb/d;

    invoke-virtual {v9, v3}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v4, v6, v7, v9, v10}, LUb/g;->j1(LJb/l;LVb/c;Lhc/f;LOb/f;Z)LUb/g;

    move-result-object v6

    sget-object v7, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v15, 0x0

    invoke-static {v7, v15, v15, v9, v11}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v7

    invoke-virtual {v3}, LPb/z;->f()LYb/d;

    move-result-object v3

    iget-object v9, v5, Lo3/i;->d:Ljava/lang/Object;

    check-cast v9, Lo3/t;

    invoke-virtual {v9, v3, v7}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, LWb/p;->p()LMb/w;

    move-result-object v13

    sget-object v16, Lfb/v;->a:Lfb/v;

    sget-object v0, LJb/B;->Companion:LJb/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v15, v10}, LJb/A;->a(ZZZ)LJb/B;

    move-result-object v18

    sget-object v19, LJb/q;->e:LJb/p;

    const/16 v20, 0x0

    const/4 v12, 0x0

    move-object v11, v6

    move-object/from16 v14, v16

    move v0, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v11 .. v20}, LUb/g;->i1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;Lfb/w;)LMb/M;

    invoke-virtual {v6, v0, v0}, LUb/g;->k1(ZZ)V

    iget-object v0, v8, LVb/a;->g:LTb/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v0, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->x:Lpc/e;

    check-cast v0, Lpc/a;

    invoke-virtual {v0, v4, v1, v2, v5}, Lpc/a;->b(LJb/f;Lhc/f;Ljava/util/ArrayList;Lo3/i;)V

    return-void
.end method

.method public final k()LWb/c;
    .locals 2

    new-instance v0, LWb/a;

    sget-object v1, LWb/n;->b:LWb/n;

    iget-object p0, p0, LWb/p;->o:LPb/n;

    invoke-direct {v0, p0, v1}, LWb/a;-><init>(LPb/n;Lsb/k;)V

    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Lhc/f;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v0, "name"

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, LWb/p;->I(Lhc/f;)Ljava/util/LinkedHashSet;

    move-result-object v11

    sget-object v0, LSb/H;->a:Ljava/util/ArrayList;

    sget-object v0, LSb/H;->j:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static/range {p2 .. p2}, LSb/e;->b(Lhc/f;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/v;

    invoke-interface {v1}, LJb/v;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LMb/M;

    invoke-virtual {p0, v3}, LWb/p;->L(LMb/M;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v9, v10, v0, v1}, LWb/p;->w(Ljava/util/LinkedHashSet;Lhc/f;Ljava/util/ArrayList;Z)V

    return-void

    :cond_5
    :goto_2
    new-instance v12, LHc/i;

    invoke-direct {v12}, Lfb/h;-><init>()V

    sget-object v2, Lfb/v;->a:Lfb/v;

    sget-object v4, Luc/o;->a:Luc/l;

    iget-object v0, v8, LWb/B;->b:Lo3/i;

    iget-object v0, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->u:Lzc/l;

    iget-object v5, v0, Lzc/l;->d:Lkc/o;

    iget-object v3, v8, LWb/p;->n:LJb/f;

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-static/range {v0 .. v5}, LG5/v2;->i(Lhc/f;Ljava/util/AbstractCollection;Ljava/util/Collection;LJb/f;Luc/o;Lkc/o;)Ljava/util/LinkedHashSet;

    move-result-object v13

    new-instance v14, LJ2/p;

    const-class v3, LWb/p;

    const-string v4, "searchMethodsByNameWithoutBuiltinMagic"

    const/4 v1, 0x1

    const-string v5, "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v0, v14

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, LJ2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, p1

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, LWb/p;->x(Lhc/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lsb/k;)V

    new-instance v14, LJ2/p;

    const-class v3, LWb/p;

    const-string v4, "searchMethodsInSupertypesWithoutBuiltinMagic"

    const/4 v1, 0x1

    const-string v5, "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, v14

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, LJ2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v12

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, LWb/p;->x(Lhc/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lsb/k;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LMb/M;

    invoke-virtual {p0, v3}, LWb/p;->L(LMb/M;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v12, v0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v9, v10, v0, v1}, LWb/p;->w(Ljava/util/LinkedHashSet;Lhc/f;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final n(Lhc/f;Ljava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const-string v2, "name"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LWb/p;->o:LPb/n;

    iget-object v2, v2, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isAnnotation()Z

    move-result v2

    iget-object v3, v0, LWb/B;->b:Lo3/i;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, LWb/B;->e:Lxc/i;

    invoke-virtual {v2}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LWb/c;

    invoke-interface {v2, v1}, LWb/c;->f(Lhc/f;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lfb/n;->V(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LPb/w;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v9, LJb/B;->FINAL:LJb/B;

    invoke-static {v3, v2}, LG5/V2;->f(Lo3/i;LYb/b;)LVb/c;

    move-result-object v8

    invoke-virtual {v2}, LPb/v;->e()LJb/k0;

    move-result-object v5

    invoke-static {v5}, LG5/r2;->i(LJb/k0;)LJb/p;

    move-result-object v10

    invoke-virtual {v2}, LPb/v;->c()Lhc/f;

    move-result-object v12

    iget-object v5, v3, Lo3/i;->a:Ljava/lang/Object;

    check-cast v5, LVb/a;

    iget-object v5, v5, LVb/a;->j:LOb/d;

    invoke-virtual {v5, v2}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v13

    iget-object v7, v0, LWb/p;->n:LJb/f;

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, LUb/h;->c1(LJb/l;LVb/c;LJb/B;LJb/p;ZLhc/f;LOb/f;Z)LUb/h;

    move-result-object v5

    sget-object v7, LKb/g;->a:LKb/f;

    invoke-static {v5, v7}, Lkc/p;->f(LJb/P;LKb/h;)LMb/K;

    move-result-object v7

    invoke-virtual {v5, v7, v4, v4, v4}, LMb/J;->Y0(LMb/K;LMb/L;LMb/t;LMb/t;)V

    const-string v8, "<this>"

    invoke-static {v3, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v3, Lo3/i;->c:Ljava/lang/Object;

    iget-object v9, v3, Lo3/i;->a:Ljava/lang/Object;

    check-cast v9, LVb/a;

    new-instance v10, LP9/a;

    const/4 v11, 0x0

    invoke-direct {v10, v3, v5, v2, v11}, LP9/a;-><init>(Lo3/i;LJb/m;LYb/e;I)V

    new-instance v11, Lo3/i;

    invoke-direct {v11, v9, v10, v8}, Lo3/i;-><init>(LVb/a;LVb/e;Ldb/f;)V

    invoke-static {v2, v11}, LWb/B;->l(LPb/w;Lo3/i;)Lyc/w;

    move-result-object v2

    sget-object v20, Lfb/v;->a:Lfb/v;

    invoke-virtual/range {p0 .. p0}, LWb/p;->p()LMb/w;

    move-result-object v18

    const/16 v19, 0x0

    move-object v15, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v20

    invoke-virtual/range {v15 .. v20}, LMb/J;->b1(Lyc/w;Ljava/util/List;LMb/w;LMb/w;Ljava/util/List;)V

    iput-object v2, v7, LMb/K;->n:Lyc/w;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p1}, LWb/p;->J(Lhc/f;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    new-instance v5, LHc/i;

    invoke-direct {v5}, Lfb/h;-><init>()V

    new-instance v7, LHc/i;

    invoke-direct {v7}, Lfb/h;-><init>()V

    new-instance v8, LWb/o;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, LWb/o;-><init>(LWb/p;I)V

    invoke-virtual {v0, v2, v6, v5, v8}, LWb/p;->y(Ljava/util/Set;Ljava/util/AbstractCollection;LHc/i;Lsb/k;)V

    invoke-static {v2, v5}, Lfb/F;->c(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v5

    new-instance v8, LWb/o;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, LWb/o;-><init>(LWb/p;I)V

    invoke-virtual {v0, v5, v7, v4, v8}, LWb/p;->y(Ljava/util/Set;Ljava/util/AbstractCollection;LHc/i;Lsb/k;)V

    invoke-static {v2, v7}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v2

    iget-object v3, v3, Lo3/i;->a:Ljava/lang/Object;

    check-cast v3, LVb/a;

    iget-object v4, v3, LVb/a;->u:Lzc/l;

    iget-object v5, v4, Lzc/l;->d:Lkc/o;

    iget-object v4, v0, LWb/p;->n:LJb/f;

    iget-object v7, v3, LVb/a;->f:LOb/d;

    move-object/from16 v0, p1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v7

    invoke-static/range {v0 .. v5}, LG5/v2;->i(Lhc/f;Ljava/util/AbstractCollection;Ljava/util/Collection;LJb/f;Luc/o;Lkc/o;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final o(Lrc/f;)Ljava/util/Set;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LWb/p;->o:LPb/n;

    iget-object p1, p1, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LWb/B;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object v0, p0, LWb/B;->e:Lxc/i;

    invoke-virtual {v0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWb/c;

    invoke-interface {v0}, LWb/c;->d()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, LWb/p;->n:LJb/f;

    invoke-interface {p0}, LJb/i;->w()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getSupertypes(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/w;

    invoke-virtual {v0}, Lyc/w;->G()Lrc/o;

    move-result-object v0

    invoke-interface {v0}, Lrc/o;->f()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final p()LMb/w;
    .locals 1

    iget-object p0, p0, LWb/p;->n:LJb/f;

    if-eqz p0, :cond_0

    sget v0, Lkc/e;->a:I

    invoke-interface {p0}, LJb/f;->C0()LMb/w;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lkc/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q()LJb/l;
    .locals 0

    iget-object p0, p0, LWb/p;->n:LJb/f;

    return-object p0
.end method

.method public final r(LUb/g;)Z
    .locals 1

    iget-object v0, p0, LWb/p;->o:LPb/n;

    iget-object v0, v0, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, LWb/p;->L(LMb/M;)Z

    move-result p0

    return p0
.end method

.method public final s(LPb/w;Ljava/util/ArrayList;Lyc/w;Ljava/util/List;)LWb/A;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LWb/B;->b:Lo3/i;

    iget-object p1, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-object p1, p1, LVb/a;->e:LTb/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LWb/p;->n:LJb/f;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, LWb/A;

    invoke-direct {p1, p3, p4, p2, p0}, LWb/A;-><init>(Lyc/w;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    return-object p1

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "signatureErrors"

    const/4 p3, 0x0

    aput-object p2, p0, p3

    const-string p2, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature"

    aput-object p2, p0, p1

    const-string p1, "<init>"

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "method"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_0
    const-string p1, "signatureErrors"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_1
    const-string p1, "descriptor"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_2
    const-string p1, "typeParameters"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_3
    const-string p1, "valueParameters"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_4
    const-string p1, "returnType"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_5
    const-string p1, "owner"

    aput-object p1, p0, p2

    :goto_0
    const/4 p1, 0x1

    const-string p2, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "resolvePropagatedSignature"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java member scope for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LWb/p;->o:LPb/n;

    invoke-virtual {p0}, LPb/n;->c()Lhc/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Ljava/util/ArrayList;LUb/b;ILPb/w;Lyc/w;Lyc/w;)V
    .locals 14

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    sget-object v4, LKb/g;->a:LKb/f;

    invoke-virtual/range {p4 .. p4}, LPb/v;->c()Lhc/f;

    move-result-object v5

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lyc/b0;->g(Lyc/w;Z)Lyc/d0;

    move-result-object v7

    iget-object v1, v0, LPb/w;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, LPb/c;->a:Ljava/util/List;

    const-class v9, Ljava/lang/Enum;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, LPb/s;

    check-cast v1, Ljava/lang/Enum;

    invoke-direct {v8, v3, v1}, LPb/s;-><init>(Lhc/f;Ljava/lang/Enum;)V

    goto :goto_0

    :cond_0
    instance-of v8, v1, Ljava/lang/annotation/Annotation;

    if-eqz v8, :cond_1

    new-instance v8, LPb/f;

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v3, v1}, LPb/f;-><init>(Lhc/f;Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    :cond_1
    instance-of v8, v1, [Ljava/lang/Object;

    if-eqz v8, :cond_2

    new-instance v8, LPb/g;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v8, v3, v1}, LPb/g;-><init>(Lhc/f;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v8, v1, Ljava/lang/Class;

    if-eqz v8, :cond_3

    new-instance v8, LPb/o;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v8, v3, v1}, LPb/o;-><init>(Lhc/f;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    new-instance v8, LPb/u;

    invoke-direct {v8, v3, v1}, LPb/u;-><init>(Lhc/f;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move-object v8, v3

    :goto_0
    if-eqz v8, :cond_5

    const/4 v1, 0x1

    move v8, v1

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_1
    if-eqz v2, :cond_6

    invoke-static {v2, v6}, Lyc/b0;->g(Lyc/w;Z)Lyc/d0;

    move-result-object v1

    move-object v10, v1

    move-object v1, p0

    goto :goto_2

    :cond_6
    move-object v1, p0

    move-object v10, v3

    :goto_2
    iget-object v1, v1, LWb/B;->b:Lo3/i;

    iget-object v1, v1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v1, v1, LVb/a;->j:LOb/d;

    invoke-virtual {v1, v0}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v11

    new-instance v12, LMb/T;

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object v0, v12

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v13

    invoke-direct/range {v0 .. v11}, LMb/T;-><init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V

    move-object v0, p1

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    const/4 v0, 0x2

    invoke-static {v0}, Lyc/b0;->a(I)V

    throw v3
.end method

.method public final w(Ljava/util/LinkedHashSet;Lhc/f;Ljava/util/ArrayList;Z)V
    .locals 8

    iget-object v0, p0, LWb/B;->b:Lo3/i;

    iget-object v0, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v1, v0, LVb/a;->u:Lzc/l;

    iget-object v7, v1, Lzc/l;->d:Lkc/o;

    iget-object v5, p0, LWb/p;->n:LJb/f;

    iget-object v6, v0, LVb/a;->f:LOb/d;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-static/range {v2 .. v7}, LG5/v2;->i(Lhc/f;Ljava/util/AbstractCollection;Ljava/util/Collection;LJb/f;Luc/o;Lkc/o;)Ljava/util/LinkedHashSet;

    move-result-object p0

    if-nez p4, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    invoke-static {p0, p1}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p0, p4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LMb/M;

    invoke-static {p4}, LG5/q2;->f(LJb/d;)LJb/d;

    move-result-object v0

    check-cast v0, LMb/M;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4, v0, p2}, LWb/p;->A(LMb/M;LJb/v;Ljava/util/AbstractCollection;)LMb/M;

    move-result-object p4

    :goto_1
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public final x(Lhc/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lsb/k;)V
    .locals 10

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/M;

    invoke-static {v0}, LG5/q2;->e(LJb/d;)LJb/d;

    move-result-object v1

    check-cast v1, LMb/M;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, LG5/q2;->d(LJb/v;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-interface {p5, v3}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LMb/M;

    invoke-interface {v4}, LJb/v;->y0()LJb/u;

    move-result-object v4

    invoke-interface {v4, p1}, LJb/u;->M(Lhc/f;)LJb/u;

    invoke-interface {v4}, LJb/u;->R()LJb/u;

    invoke-interface {v4}, LJb/u;->F()LJb/u;

    invoke-interface {v4}, LJb/u;->build()LJb/v;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v4, LMb/M;

    invoke-static {v1, v4}, LWb/p;->E(LMb/M;LMb/M;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4, v1, p2}, LWb/p;->A(LMb/M;LJb/v;Ljava/util/AbstractCollection;)LMb/M;

    move-result-object v1

    :goto_1
    invoke-static {p4, v1}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-static {v0}, LSb/e;->a(LJb/v;)LJb/v;

    move-result-object v1

    const-string v3, "getName(...)"

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v2

    goto/16 :goto_6

    :cond_4
    move-object v4, v1

    check-cast v4, LMb/n;

    invoke-virtual {v4}, LMb/n;->getName()Lhc/f;

    move-result-object v4

    invoke-static {v4, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5, v4}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LMb/M;

    invoke-static {v6, v1}, LWb/p;->K(LMb/M;LJb/v;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_6
    move-object v5, v2

    :goto_2
    check-cast v5, LMb/M;

    if-eqz v5, :cond_8

    invoke-interface {v5}, LJb/v;->y0()LJb/u;

    move-result-object v4

    invoke-interface {v1}, LJb/b;->H()Ljava/util/List;

    move-result-object v6

    const-string v7, "getValueParameters(...)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LMb/T;

    check-cast v9, LMb/U;

    invoke-virtual {v9}, LMb/U;->getType()Lyc/w;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, LMb/v;->H()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Collection;

    invoke-static {v8, v5, v1}, LG5/H2;->b(Ljava/util/List;Ljava/util/Collection;LJb/v;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v4, v5}, LJb/u;->h(Ljava/util/List;)LJb/u;

    invoke-interface {v4}, LJb/u;->R()LJb/u;

    invoke-interface {v4}, LJb/u;->F()LJb/u;

    invoke-interface {v4}, LJb/u;->G()LJb/u;

    invoke-interface {v4}, LJb/u;->build()LJb/v;

    move-result-object v4

    check-cast v4, LMb/M;

    goto :goto_4

    :cond_8
    move-object v4, v2

    :goto_4
    if-eqz v4, :cond_3

    invoke-virtual {p0, v4}, LWb/p;->L(LMb/M;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move-object v4, v2

    :goto_5
    if-eqz v4, :cond_3

    invoke-static {v4, v1, p2}, LWb/p;->A(LMb/M;LJb/v;Ljava/util/AbstractCollection;)LMb/M;

    move-result-object v1

    :goto_6
    invoke-static {p4, v1}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-interface {v0}, LJb/v;->o()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMb/M;

    invoke-static {v3}, LWb/p;->B(LMb/M;)LMb/M;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3, v0}, LWb/p;->D(LJb/v;LJb/v;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_b

    move-object v2, v3

    :cond_d
    :goto_8
    invoke-static {p4, v2}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public final y(Ljava/util/Set;Ljava/util/AbstractCollection;LHc/i;Lsb/k;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJb/P;

    invoke-virtual {v0, v4, v2}, LWb/p;->C(LJb/P;Lsb/k;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v4, v2}, LWb/p;->G(LJb/P;Lsb/k;)LMb/M;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v4}, LJb/Z;->M()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4, v2}, LWb/p;->H(LJb/P;Lsb/k;)LMb/M;

    move-result-object v7

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, LMb/v;->r()LJb/B;

    invoke-virtual {v5}, LMb/v;->r()LJb/B;

    :cond_3
    new-instance v15, LUb/d;

    const-string v8, "ownerDescriptor"

    iget-object v9, v0, LWb/p;->n:LJb/f;

    invoke-static {v9, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, LKb/g;->a:LKb/f;

    invoke-virtual {v5}, LMb/v;->r()LJb/B;

    move-result-object v11

    invoke-virtual {v5}, LMb/v;->getVisibility()LJb/p;

    move-result-object v12

    const/4 v14, 0x0

    if-eqz v7, :cond_4

    const/4 v8, 0x1

    move v13, v8

    goto :goto_1

    :cond_4
    move v13, v14

    :goto_1
    invoke-interface {v4}, LJb/l;->getName()Lhc/f;

    move-result-object v16

    invoke-virtual {v5}, LMb/o;->e()LJb/S;

    move-result-object v17

    sget-object v18, LJb/c;->DECLARATION:LJb/c;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v8, v15

    move v6, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v21

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v8 .. v19}, LUb/h;-><init>(LJb/l;LKb/h;LJb/B;LJb/p;ZLhc/f;LJb/S;LJb/P;LJb/c;ZLdb/j;)V

    iget-object v9, v5, LMb/v;->h:Lyc/w;

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v13, Lfb/v;->a:Lfb/v;

    invoke-virtual/range {p0 .. p0}, LWb/p;->p()LMb/w;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v8, v22

    move-object v10, v13

    invoke-virtual/range {v8 .. v13}, LMb/J;->b1(Lyc/w;Ljava/util/List;LMb/w;LMb/w;Ljava/util/List;)V

    invoke-virtual {v5}, LF3/f;->u()LKb/h;

    move-result-object v8

    invoke-virtual {v5}, LMb/o;->e()LJb/S;

    move-result-object v9

    move-object/from16 v14, v22

    invoke-static {v14, v8, v6, v9}, Lkc/p;->l(LJb/P;LKb/h;ZLJb/S;)LMb/K;

    move-result-object v6

    iput-object v5, v6, LMb/H;->m:LJb/v;

    invoke-virtual {v14}, LMb/U;->getType()Lyc/w;

    move-result-object v5

    invoke-virtual {v6, v5}, LMb/K;->X0(Lyc/w;)V

    if-eqz v7, :cond_6

    invoke-virtual {v7}, LMb/v;->H()Ljava/util/List;

    move-result-object v5

    const-string v8, "getValueParameters(...)"

    invoke-static {v5, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LMb/T;

    if-eqz v5, :cond_5

    invoke-virtual {v7}, LF3/f;->u()LKb/h;

    move-result-object v9

    check-cast v5, LF3/f;

    invoke-virtual {v5}, LF3/f;->u()LKb/h;

    move-result-object v10

    invoke-virtual {v7}, LMb/v;->getVisibility()LJb/p;

    move-result-object v12

    invoke-virtual {v7}, LMb/o;->e()LJb/S;

    move-result-object v13

    const/4 v11, 0x0

    move-object v8, v14

    invoke-static/range {v8 .. v13}, Lkc/p;->m(LJb/P;LKb/h;LKb/h;ZLJb/p;LJb/S;)LMb/L;

    move-result-object v5

    iput-object v7, v5, LMb/H;->m:LJb/v;

    :goto_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No parameter found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {v14, v6, v5, v7, v7}, LMb/J;->Y0(LMb/K;LMb/L;LMb/t;LMb/t;)V

    move-object v6, v14

    :goto_4
    move-object/from16 v5, p2

    if-eqz v6, :cond_0

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, LHc/i;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final z()Ljava/util/Collection;
    .locals 3

    iget-boolean v0, p0, LWb/p;->p:Z

    const-string v1, "getSupertypes(...)"

    iget-object v2, p0, LWb/p;->n:LJb/f;

    if-eqz v0, :cond_0

    invoke-interface {v2}, LJb/i;->w()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object p0, p0, LWb/B;->b:Lo3/i;

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->u:Lzc/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "classDescriptor"

    invoke-static {v2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, LJb/i;->w()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
