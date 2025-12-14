.class public final Lwc/g;
.super Lwc/p;
.source "SourceFile"


# instance fields
.field public final g:Lzc/f;

.field public final h:Lxc/i;

.field public final i:Lxc/i;

.field public final synthetic j:Lwc/i;


# direct methods
.method public constructor <init>(Lwc/i;Lzc/f;)V
    .locals 7

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lwc/g;->j:Lwc/i;

    iget-object v0, p1, Lwc/i;->l:Luc/m;

    iget-object v1, p1, Lwc/i;->e:Lcc/k;

    iget-object v3, v1, Lcc/k;->q:Ljava/util/List;

    const-string v2, "getFunctionList(...)"

    invoke-static {v3, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcc/k;->r:Ljava/util/List;

    const-string v2, "getPropertyList(...)"

    invoke-static {v4, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lcc/k;->s:Ljava/util/List;

    const-string v2, "getTypeAliasList(...)"

    invoke-static {v5, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcc/k;->k:Ljava/util/List;

    const-string v2, "getNestedClassNameList(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    iget-object p1, p1, Lwc/i;->l:Luc/m;

    iget-object p1, p1, Luc/m;->b:Ljava/lang/Object;

    check-cast p1, Lec/g;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {p1, v6}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v6, Lwc/e;

    const/4 p1, 0x0

    invoke-direct {v6, p1, v2}, Lwc/e;-><init>(ILjava/util/ArrayList;)V

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lwc/p;-><init>(Luc/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lsb/a;)V

    iput-object p2, p0, Lwc/g;->g:Lzc/f;

    iget-object p1, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p2, p1, Luc/k;->a:Lxc/o;

    new-instance v0, Lwc/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lwc/f;-><init>(Lwc/g;I)V

    check-cast p2, Lxc/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lxc/i;

    invoke-direct {v1, p2, v0}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v1, p0, Lwc/g;->h:Lxc/i;

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    new-instance p2, Lwc/f;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lwc/f;-><init>(Lwc/g;I)V

    check-cast p1, Lxc/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, Lwc/g;->i:Lxc/i;

    return-void
.end method


# virtual methods
.method public final a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc/g;->h:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final c(Lhc/f;LRb/a;)LJb/i;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lwc/g;->s(Lhc/f;LRb/a;)V

    iget-object v0, p0, Lwc/g;->j:Lwc/i;

    iget-object v0, v0, Lwc/i;->p:Lcom/google/firebase/messaging/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v0, Lxc/j;

    invoke-virtual {v0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJb/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lwc/p;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lwc/g;->s(Lhc/f;LRb/a;)V

    invoke-super {p0, p1, p2}, Lwc/p;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lwc/g;->s(Lhc/f;LRb/a;)V

    invoke-super {p0, p1, p2}, Lwc/p;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/ArrayList;Lsb/k;)V
    .locals 3

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc/g;->j:Lwc/i;

    iget-object p0, p0, Lwc/i;->p:Lcom/google/firebase/messaging/q;

    if-eqz p0, :cond_1

    iget-object p2, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhc/f;

    const-string v2, "name"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v2, Lxc/j;

    invoke-virtual {v2, v1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/f;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    sget-object v0, Lfb/v;->a:Lfb/v;

    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final j(Lhc/f;Ljava/util/ArrayList;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lwc/g;->i:Lxc/i;

    invoke-virtual {v0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/w;

    invoke-virtual {v1}, Lyc/w;->G()Lrc/o;

    move-result-object v1

    sget-object v2, LRb/c;->FOR_ALREADY_TRACKED:LRb/c;

    invoke-interface {v1, p1, v2}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwc/p;->b:Luc/m;

    iget-object v1, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v1, Luc/k;

    iget-object v1, v1, Luc/k;->n:LLb/b;

    iget-object v2, p0, Lwc/g;->j:Lwc/i;

    invoke-interface {v1, p1, v2}, LLb/b;->d(Lhc/f;LJb/f;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->q:Lzc/k;

    check-cast v0, Lzc/l;

    iget-object v1, v0, Lzc/l;->d:Lkc/o;

    new-instance v6, LMb/q;

    const/4 v0, 0x1

    invoke-direct {v6, p2, v0}, LMb/q;-><init>(Ljava/util/AbstractCollection;I)V

    iget-object v5, p0, Lwc/g;->j:Lwc/i;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lkc/o;->h(Lhc/f;Ljava/util/Collection;Ljava/util/Collection;LJb/f;Lkc/p;)V

    return-void
.end method

.method public final k(Lhc/f;Ljava/util/ArrayList;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lwc/g;->i:Lxc/i;

    invoke-virtual {v0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/w;

    invoke-virtual {v1}, Lyc/w;->G()Lrc/o;

    move-result-object v1

    sget-object v2, LRb/c;->FOR_ALREADY_TRACKED:LRb/c;

    invoke-interface {v1, p1, v2}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lwc/p;->b:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->q:Lzc/k;

    check-cast v0, Lzc/l;

    iget-object v1, v0, Lzc/l;->d:Lkc/o;

    new-instance v6, LMb/q;

    const/4 v0, 0x1

    invoke-direct {v6, p2, v0}, LMb/q;-><init>(Ljava/util/AbstractCollection;I)V

    iget-object v5, p0, Lwc/g;->j:Lwc/i;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lkc/o;->h(Lhc/f;Ljava/util/Collection;Ljava/util/Collection;LJb/f;Lkc/p;)V

    return-void
.end method

.method public final l(Lhc/f;)Lhc/b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc/g;->j:Lwc/i;

    iget-object p0, p0, Lwc/i;->h:Lhc/b;

    invoke-virtual {p0, p1}, Lhc/b;->d(Lhc/f;)Lhc/b;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lwc/g;->j:Lwc/i;

    iget-object p0, p0, Lwc/i;->n:LWb/h;

    invoke-virtual {p0}, Lyc/h;->i()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

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

    invoke-interface {v1}, Lrc/o;->e()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lwc/g;->j:Lwc/i;

    iget-object v1, v0, Lwc/i;->n:LWb/h;

    invoke-virtual {v1}, Lyc/h;->i()Ljava/util/List;

    move-result-object v1

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
    iget-object p0, p0, Lwc/p;->b:Luc/m;

    iget-object p0, p0, Luc/m;->a:Ljava/lang/Object;

    check-cast p0, Luc/k;

    iget-object p0, p0, Luc/k;->n:LLb/b;

    invoke-interface {p0, v0}, LLb/b;->e(LJb/f;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public final p()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lwc/g;->j:Lwc/i;

    iget-object p0, p0, Lwc/i;->n:LWb/h;

    invoke-virtual {p0}, Lyc/h;->i()Ljava/util/List;

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

    invoke-interface {v1}, Lrc/o;->f()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final r(Lwc/s;)Z
    .locals 1

    iget-object v0, p0, Lwc/p;->b:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->o:LLb/d;

    iget-object p0, p0, Lwc/g;->j:Lwc/i;

    invoke-interface {v0, p0, p1}, LLb/d;->b(LJb/f;Lwc/s;)Z

    move-result p0

    return p0
.end method

.method public final s(Lhc/f;LRb/a;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lwc/p;->b:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p1, p1, Luc/k;->i:LRb/b;

    const-string p2, "<this>"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopeOwner"

    iget-object p0, p0, Lwc/g;->j:Lwc/i;

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
