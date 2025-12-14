.class public final LVb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJb/L;


# instance fields
.field public final a:Lo3/i;

.field public final b:Lxc/e;


# direct methods
.method public constructor <init>(LVb/a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo3/i;

    sget-object v1, LVb/b;->b:LVb/b;

    new-instance v2, Ldb/c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lo3/i;-><init>(LVb/a;LVb/e;Ldb/f;)V

    iput-object v0, p0, LVb/d;->a:Lo3/i;

    iget-object p1, p1, LVb/a;->a:Lxc/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/e;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    new-instance v2, Lxc/f;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lxc/e;-><init>(Lxc/l;Ljava/util/concurrent/ConcurrentHashMap;Lsb/k;I)V

    iput-object v0, p0, LVb/d;->b:Lxc/e;

    return-void
.end method


# virtual methods
.method public final a(Lhc/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LVb/d;->d(Lhc/c;)LWb/s;

    move-result-object p0

    invoke-static {p2, p0}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lhc/c;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LVb/d;->a:Lo3/i;

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->b:LB3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lhc/c;)Ljava/util/List;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LVb/d;->d(Lhc/c;)LWb/s;

    move-result-object p0

    invoke-static {p0}, Lfb/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lhc/c;)LWb/s;
    .locals 3

    iget-object v0, p0, LVb/d;->a:Lo3/i;

    iget-object v0, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->b:LB3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LPb/x;

    invoke-direct {v0, p1}, LPb/x;-><init>(Lhc/c;)V

    new-instance v1, LDb/J;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0, v0}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, LVb/d;->b:Lxc/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/g;

    invoke-direct {v0, p1, v1}, Lxc/g;-><init>(Lhc/c;Lsb/a;)V

    invoke-virtual {p0, v0}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, LWb/s;

    return-object p0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Lxc/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t(Lhc/c;Lsb/k;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LVb/d;->d(Lhc/c;)LWb/s;

    move-result-object p0

    iget-object p0, p0, LWb/s;->l:Lxc/c;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_0
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LazyJavaPackageFragmentProvider of module "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LVb/d;->a:Lo3/i;

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->o:LMb/B;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
