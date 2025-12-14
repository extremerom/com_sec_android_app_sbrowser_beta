.class public final LWb/E;
.super LWb/F;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public final n:LPb/n;

.field public final o:LWb/j;


# direct methods
.method public constructor <init>(Lo3/i;LPb/n;LWb/j;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LWb/B;-><init>(Lo3/i;LWb/B;)V

    iput-object p2, p0, LWb/E;->n:LPb/n;

    iput-object p3, p0, LWb/E;->o:LWb/j;

    return-void
.end method

.method public static v(LJb/P;)LJb/P;
    .locals 2

    invoke-interface {p0}, LJb/d;->d()LJb/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LJb/c;->FAKE_OVERRIDE:LJb/c;

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, LJb/d;->l()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getOverriddenDescriptors(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/P;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v1}, LWb/E;->v(LJb/P;)LJb/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lfb/n;->y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/P;

    return-object p0
.end method


# virtual methods
.method public final c(Lhc/f;LRb/a;)LJb/i;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Lrc/f;Lrc/l;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final i(Lrc/f;Lrc/l;)Ljava/util/Set;
    .locals 2

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LWb/B;->e:Lxc/i;

    invoke-virtual {p1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LWb/c;

    invoke-interface {p1}, LWb/c;->a()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lfb/n;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, LWb/E;->o:LWb/j;

    invoke-static {p2}, LG5/H2;->c(LJb/f;)LWb/E;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LWb/B;->b()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lfb/x;->a:Lfb/x;

    :cond_1
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LWb/E;->n:LPb/n;

    iget-object v0, v0, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LGb/q;->c:Lhc/f;

    sget-object v1, LGb/q;->a:Lhc/f;

    filled-new-array {v0, v1}, [Lhc/f;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object p0, p0, LWb/B;->b:Lo3/i;

    iget-object v0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->x:Lpc/e;

    check-cast v0, Lpc/a;

    invoke-virtual {v0, p2, p0}, Lpc/a;->g(LWb/j;Lo3/i;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final j(Lhc/f;Ljava/util/ArrayList;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LWb/B;->b:Lo3/i;

    iget-object v1, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v1, v1, LVb/a;->x:Lpc/e;

    check-cast v1, Lpc/a;

    iget-object p0, p0, LWb/E;->o:LWb/j;

    invoke-virtual {v1, p0, p1, p2, v0}, Lpc/a;->d(LWb/j;Lhc/f;Ljava/util/ArrayList;Lo3/i;)V

    return-void
.end method

.method public final k()LWb/c;
    .locals 2

    new-instance v0, LWb/a;

    sget-object v1, LWb/n;->d:LWb/n;

    iget-object p0, p0, LWb/E;->n:LPb/n;

    invoke-direct {v0, p0, v1}, LWb/a;-><init>(LPb/n;Lsb/k;)V

    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Lhc/f;)V
    .locals 8

    const-string v0, "name"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LWb/E;->o:LWb/j;

    invoke-static {v0}, LG5/H2;->c(LJb/f;)LWb/E;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lfb/x;->a:Lfb/x;

    goto :goto_0

    :cond_0
    sget-object v2, LRb/c;->WHEN_GET_SUPER_MEMBERS:LRb/c;

    invoke-virtual {v1, p2, v2}, LWb/B;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    iget-object v1, p0, LWb/B;->b:Lo3/i;

    iget-object v1, v1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v2, v1, LVb/a;->u:Lzc/l;

    iget-object v7, v2, Lzc/l;->d:Lkc/o;

    iget-object v5, p0, LWb/E;->o:LWb/j;

    iget-object v6, v1, LVb/a;->f:LOb/d;

    move-object v2, p2

    move-object v4, p1

    invoke-static/range {v2 .. v7}, LG5/v2;->j(Lhc/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LWb/j;LOb/d;Lkc/o;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, LWb/E;->n:LPb/n;

    iget-object p0, p0, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, LGb/q;->c:Lhc/f;

    invoke-virtual {p2, p0}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lkc/p;->i(LMb/c;)LMb/M;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object p0, LGb/q;->a:Lhc/f;

    invoke-virtual {p2, p0}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lkc/p;->j(LMb/c;)LMb/M;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final n(Lhc/f;Ljava/util/ArrayList;)V
    .locals 11

    const-string v1, "name"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, LMb/a;

    const/16 v3, 0xb

    invoke-direct {v1, v3, p1}, LMb/a;-><init>(ILjava/lang/Object;)V

    iget-object v7, p0, LWb/E;->o:LWb/j;

    invoke-static {v7}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    sget-object v4, LWb/C;->a:LWb/C;

    new-instance v5, LWb/D;

    invoke-direct {v5, v7, v2, v1}, LWb/D;-><init>(LWb/j;Ljava/util/Set;Lsb/k;)V

    invoke-static {v3, v4, v5}, LHc/l;->e(Ljava/util/Collection;LHc/b;LHc/l;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v8, p0, LWb/B;->b:Lo3/i;

    if-nez v1, :cond_0

    iget-object v1, v8, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v3, v1, LVb/a;->u:Lzc/l;

    iget-object v6, v3, Lzc/l;->d:Lkc/o;

    iget-object v4, p0, LWb/E;->o:LWb/j;

    iget-object v5, v1, LVb/a;->f:LOb/d;

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, LG5/v2;->j(Lhc/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LWb/j;LOb/d;Lkc/o;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, LJb/P;

    invoke-static {v4}, LWb/E;->v(LJb/P;)LJb/P;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    iget-object v1, v8, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v3, v1, LVb/a;->u:Lzc/l;

    iget-object v6, v3, Lzc/l;->d:Lkc/o;

    iget-object v4, p0, LWb/E;->o:LWb/j;

    iget-object v5, v1, LVb/a;->f:LOb/d;

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, LG5/v2;->j(Lhc/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LWb/j;LOb/d;Lkc/o;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v1, v9}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    iget-object v0, p0, LWb/E;->n:LPb/n;

    iget-object v0, v0, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, LGb/q;->b:Lhc/f;

    invoke-virtual {p1, v0}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7}, Lkc/p;->h(LMb/c;)LMb/J;

    move-result-object v0

    invoke-static {p2, v0}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final o(Lrc/f;)Ljava/util/Set;
    .locals 5

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LWb/B;->e:Lxc/i;

    invoke-virtual {p1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LWb/c;

    invoke-interface {p1}, LWb/c;->d()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lfb/n;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, LWb/n;->e:LWb/n;

    iget-object v1, p0, LWb/E;->o:LWb/j;

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    sget-object v3, LWb/C;->a:LWb/C;

    new-instance v4, LWb/D;

    invoke-direct {v4, v1, p1, v0}, LWb/D;-><init>(LWb/j;Ljava/util/Set;Lsb/k;)V

    invoke-static {v2, v3, v4}, LHc/l;->e(Ljava/util/Collection;LHc/b;LHc/l;)Ljava/lang/Object;

    iget-object p0, p0, LWb/E;->n:LPb/n;

    iget-object p0, p0, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LGb/q;->b:Lhc/f;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public final q()LJb/l;
    .locals 0

    iget-object p0, p0, LWb/E;->o:LWb/j;

    return-object p0
.end method
