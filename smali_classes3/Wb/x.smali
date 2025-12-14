.class public final LWb/x;
.super LWb/F;
.source "SourceFile"


# instance fields
.field public final n:LPb/x;

.field public final o:LWb/s;

.field public final p:Lxc/h;

.field public final q:Lxc/j;


# direct methods
.method public constructor <init>(Lo3/i;LPb/x;LWb/s;)V
    .locals 1

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LWb/B;-><init>(Lo3/i;LWb/B;)V

    iput-object p2, p0, LWb/x;->n:LPb/x;

    iput-object p3, p0, LWb/x;->o:LWb/s;

    iget-object p2, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p2, LVb/a;

    iget-object p2, p2, LVb/a;->a:Lxc/l;

    new-instance p3, LDb/J;

    const/16 v0, 0xe

    invoke-direct {p3, v0, p1, p0}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/h;

    invoke-direct {v0, p2, p3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LWb/x;->p:Lxc/h;

    new-instance p3, LWb/m;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p0, p1}, LWb/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, LWb/x;->q:Lxc/j;

    return-void
.end method


# virtual methods
.method public final a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lrc/f;->l:I

    sget v1, Lrc/f;->e:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lrc/f;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    goto :goto_1

    :cond_0
    iget-object p0, p0, LWb/B;->d:Lxc/c;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LJb/l;

    instance-of v2, v1, LJb/f;

    if-eqz v2, :cond_1

    check-cast v1, LJb/f;

    invoke-interface {v1}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public final c(Lhc/f;LRb/a;)LJb/i;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, LWb/x;->v(Lhc/f;LPb/n;)LJb/f;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final h(Lrc/f;Lrc/l;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lrc/f;->e:I

    invoke-virtual {p1, p2}, Lrc/f;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0

    :cond_0
    iget-object p1, p0, LWb/x;->p:Lxc/h;

    invoke-virtual {p1}, Lxc/h;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    iget-object p0, p0, LWb/x;->n:LPb/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public final i(Lrc/f;Lrc/l;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final k()LWb/c;
    .locals 0

    sget-object p0, LWb/b;->a:LWb/b;

    return-object p0
.end method

.method public final m(Ljava/util/LinkedHashSet;Lhc/f;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lrc/f;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final q()LJb/l;
    .locals 0

    iget-object p0, p0, LWb/x;->o:LWb/s;

    return-object p0
.end method

.method public final v(Lhc/f;LPb/n;)LJb/f;
    .locals 3

    sget-object v0, Lhc/h;->a:Lhc/f;

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-boolean v0, p1, Lhc/f;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LWb/x;->p:Lxc/h;

    invoke-virtual {v0}, Lxc/h;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, LWb/x;->q:Lxc/j;

    new-instance v0, LWb/t;

    invoke-direct {v0, p1, p2}, LWb/t;-><init>(Lhc/f;LPb/n;)V

    invoke-virtual {p0, v0}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/f;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final w()Lec/f;
    .locals 0

    iget-object p0, p0, LWb/B;->b:Lo3/i;

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->d:Lac/f;

    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object p0

    iget-object p0, p0, Luc/k;->c:Luc/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lec/f;->g:Lec/f;

    return-object p0
.end method
