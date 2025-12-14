.class public final LWb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/o;


# static fields
.field public static final synthetic f:[LAb/u;


# instance fields
.field public final b:Lo3/i;

.field public final c:LWb/s;

.field public final d:LWb/x;

.field public final e:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LWb/d;

    const-string v2, "kotlinScopes"

    const-string v3, "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LWb/d;->f:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lo3/i;LPb/x;LWb/s;)V
    .locals 1

    const-string v0, "packageFragment"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWb/d;->b:Lo3/i;

    iput-object p3, p0, LWb/d;->c:LWb/s;

    new-instance v0, LWb/x;

    invoke-direct {v0, p1, p2, p3}, LWb/x;-><init>(Lo3/i;LPb/x;LWb/s;)V

    iput-object v0, p0, LWb/d;->d:LWb/x;

    iget-object p1, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-object p1, p1, LVb/a;->a:Lxc/l;

    new-instance p2, LDb/E;

    const/16 p3, 0x11

    invoke-direct {p2, p3, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lxc/i;

    invoke-direct {p3, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p3, p0, LWb/d;->e:Lxc/i;

    return-void
.end method


# virtual methods
.method public final a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LWb/d;->h()[Lrc/o;

    move-result-object v0

    iget-object p0, p0, LWb/d;->d:LWb/x;

    invoke-virtual {p0, p1, p2}, LWb/x;->a(Lrc/f;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lrc/q;->a(Lrc/f;Lsb/k;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, LG5/L2;->e(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lfb/x;->a:Lfb/x;

    :cond_1
    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, LWb/d;->h()[Lrc/o;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, Lrc/o;->b()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v1}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, LWb/d;->d:LWb/x;

    invoke-virtual {p0}, LWb/B;->b()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final c(Lhc/f;LRb/a;)LJb/i;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LWb/d;->i(Lhc/f;LRb/a;)V

    iget-object v0, p0, LWb/d;->d:LWb/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LWb/x;->v(Lhc/f;LPb/n;)LJb/f;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LWb/d;->h()[Lrc/o;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, Lrc/q;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, LJb/j;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, LJb/z;

    invoke-interface {v4}, LJb/z;->g0()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LWb/d;->i(Lhc/f;LRb/a;)V

    invoke-virtual {p0}, LWb/d;->h()[Lrc/o;

    move-result-object v0

    iget-object p0, p0, LWb/d;->d:LWb/x;

    invoke-virtual {p0, p1, p2}, LWb/B;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, LG5/L2;->e(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lfb/x;->a:Lfb/x;

    :cond_1
    return-object p0
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, LWb/d;->h()[Lrc/o;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->c([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, LG5/F;->b(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LWb/d;->d:LWb/x;

    invoke-virtual {p0}, LWb/B;->e()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, LWb/d;->h()[Lrc/o;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, Lrc/o;->f()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v1}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, LWb/d;->d:LWb/x;

    invoke-virtual {p0}, LWb/B;->f()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LWb/d;->i(Lhc/f;LRb/a;)V

    invoke-virtual {p0}, LWb/d;->h()[Lrc/o;

    move-result-object v0

    iget-object p0, p0, LWb/d;->d:LWb/x;

    invoke-virtual {p0, p1, p2}, LWb/x;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    sget-object p0, Lfb/v;->a:Lfb/v;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, LG5/L2;->e(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lfb/x;->a:Lfb/x;

    :cond_1
    return-object p0
.end method

.method public final h()[Lrc/o;
    .locals 2

    iget-object p0, p0, LWb/d;->e:Lxc/i;

    sget-object v0, LWb/d;->f:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lrc/o;

    return-object p0
.end method

.method public final i(Lhc/f;LRb/a;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LWb/d;->b:Lo3/i;

    iget-object v0, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object p0, p0, LWb/d;->c:LWb/s;

    iget-object v0, v0, LVb/a;->n:LRb/b;

    invoke-static {v0, p2, p0, p1}, LG5/B;->j(LRb/b;LRb/a;LJb/H;Lhc/f;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scope for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LWb/d;->c:LWb/s;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
