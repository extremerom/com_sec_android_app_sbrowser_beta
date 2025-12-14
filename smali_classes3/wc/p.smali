.class public abstract Lwc/p;
.super Lrc/p;
.source "SourceFile"


# static fields
.field public static final synthetic f:[LAb/u;


# instance fields
.field public final b:Luc/m;

.field public final c:Lwc/o;

.field public final d:Lxc/i;

.field public final e:Lxc/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb/p;

    const-class v1, Lwc/p;

    const-string v2, "classNames"

    const-string v3, "getClassNames$deserialization()Ljava/util/Set;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "classifierNamesLazy"

    const-string v5, "getClassifierNamesLazy()Ljava/util/Set;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lwc/p;->f:[LAb/u;

    return-void
.end method

.method public constructor <init>(Luc/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lsb/a;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc/p;->b:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object v0, p1, Luc/k;->c:Luc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lwc/o;

    invoke-direct {v0, p0, p2, p3, p4}, Lwc/o;-><init>(Lwc/p;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lwc/p;->c:Lwc/o;

    new-instance p2, Lrc/j;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p5}, Lrc/j;-><init>(ILsb/a;)V

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    move-object p3, p1

    check-cast p3, Lxc/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lxc/i;

    invoke-direct {p4, p3, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p4, p0, Lwc/p;->d:Lxc/i;

    new-instance p2, LDb/E;

    const/16 p3, 0x1a

    invoke-direct {p2, p3, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lxc/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lxc/h;

    invoke-direct {p3, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p3, p0, Lwc/p;->e:Lxc/h;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lwc/p;->c:Lwc/o;

    iget-object p0, p0, Lwc/o;->g:Lxc/i;

    sget-object v0, Lwc/o;->j:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public c(Lhc/f;LRb/a;)LJb/i;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lwc/p;->q(Lhc/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lwc/p;->b:Luc/m;

    iget-object p2, p2, Luc/m;->a:Ljava/lang/Object;

    check-cast p2, Luc/k;

    invoke-virtual {p0, p1}, Lwc/p;->l(Lhc/f;)Lhc/b;

    move-result-object p0

    invoke-virtual {p2, p0}, Luc/k;->b(Lhc/b;)LJb/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lwc/p;->c:Lwc/o;

    iget-object p2, p0, Lwc/o;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lwc/o;->f:Lxc/j;

    invoke-virtual {p0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/V;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc/p;->c:Lwc/o;

    invoke-virtual {p0, p1, p2}, Lwc/o;->a(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lwc/p;->e:Lxc/h;

    sget-object v0, Lwc/p;->f:[LAb/u;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "p"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lxc/h;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lwc/p;->c:Lwc/o;

    iget-object p0, p0, Lwc/o;->h:Lxc/i;

    sget-object v0, Lwc/o;->j:[LAb/u;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc/p;->c:Lwc/o;

    invoke-virtual {p0, p1, p2}, Lwc/o;->b(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public abstract h(Ljava/util/ArrayList;Lsb/k;)V
.end method

.method public final i(Lrc/f;Lsb/k;LRb/c;)Ljava/util/Collection;
    .locals 8

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget v2, Lrc/f;->f:I

    invoke-virtual {p1, v2}, Lrc/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p2}, Lwc/p;->h(Ljava/util/ArrayList;Lsb/k;)V

    :cond_0
    iget-object v2, p0, Lwc/p;->c:Lwc/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lrc/f;->j:I

    invoke-virtual {p1, v3}, Lrc/f;->a(I)Z

    move-result v3

    sget-object v4, Lkc/j;->b:Lkc/j;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lwc/o;->h:Lxc/i;

    sget-object v5, Lwc/o;->j:[LAb/u;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v3, v5}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    check-cast v3, Ljava/util/Collection;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhc/f;

    invoke-interface {p2, v6}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v6, p3}, Lwc/o;->b(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-static {v5, v4}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget v3, Lrc/f;->i:I

    invoke-virtual {p1, v3}, Lrc/f;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Lwc/o;->g:Lxc/i;

    sget-object v5, Lwc/o;->j:[LAb/u;

    aget-object v1, v5, v1

    invoke-static {v3, v1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/f;

    invoke-interface {p2, v5}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v5, p3}, Lwc/o;->a(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    invoke-static {v3, v4}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    sget p3, Lrc/f;->l:I

    invoke-virtual {p1, p3}, Lrc/f;->a(I)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Lwc/p;->m()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhc/f;

    invoke-interface {p2, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lwc/p;->b:Luc/m;

    iget-object v3, v3, Luc/m;->a:Ljava/lang/Object;

    check-cast v3, Luc/k;

    invoke-virtual {p0, v1}, Lwc/p;->l(Lhc/f;)Lhc/b;

    move-result-object v1

    invoke-virtual {v3, v1}, Luc/k;->b(Lhc/b;)LJb/f;

    move-result-object v1

    invoke-static {v0, v1}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    sget p0, Lrc/f;->g:I

    invoke-virtual {p1, p0}, Lrc/f;->a(I)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, v2, Lwc/o;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhc/f;

    invoke-interface {p2, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "name"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, v2, Lwc/o;->f:Lxc/j;

    invoke-virtual {p3, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJb/V;

    invoke-static {v0, p1}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-static {v0}, LHc/l;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public j(Lhc/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public k(Lhc/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract l(Lhc/f;)Lhc/b;
.end method

.method public final m()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lwc/p;->d:Lxc/i;

    sget-object v0, Lwc/p;->f:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract n()Ljava/util/Set;
.end method

.method public abstract o()Ljava/util/Set;
.end method

.method public abstract p()Ljava/util/Set;
.end method

.method public q(Lhc/f;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc/p;->m()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public r(Lwc/s;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
