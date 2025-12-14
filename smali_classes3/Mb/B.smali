.class public final LMb/B;
.super LMb/n;
.source "SourceFile"

# interfaces
.implements LJb/C;


# instance fields
.field public final d:Lxc/l;

.field public final e:LGb/i;

.field public final f:Ljava/util/Map;

.field public final g:LMb/G;

.field public h:LI3/c;

.field public i:LJb/I;

.field public final j:Z

.field public final k:Lxc/e;

.field public final l:Ldb/o;


# direct methods
.method public constructor <init>(Lhc/f;Lxc/l;LGb/i;I)V
    .locals 1

    sget-object p4, Lfb/w;->a:Lfb/w;

    const-string v0, "moduleName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LKb/g;->a:LKb/f;

    invoke-direct {p0, v0, p1}, LMb/n;-><init>(LKb/h;Lhc/f;)V

    iput-object p2, p0, LMb/B;->d:Lxc/l;

    iput-object p3, p0, LMb/B;->e:LGb/i;

    iget-boolean p3, p1, Lhc/f;->b:Z

    if-eqz p3, :cond_1

    iput-object p4, p0, LMb/B;->f:Ljava/util/Map;

    sget-object p1, LMb/G;->a:LMb/E;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LMb/E;->b:LP7/c;

    invoke-virtual {p0, p1}, LMb/B;->T(LP7/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LMb/G;

    if-nez p1, :cond_0

    sget-object p1, LMb/F;->b:LMb/F;

    :cond_0
    iput-object p1, p0, LMb/B;->g:LMb/G;

    const/4 p1, 0x1

    iput-boolean p1, p0, LMb/B;->j:Z

    new-instance p1, LMb/a;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p1

    iput-object p1, p0, LMb/B;->k:Lxc/e;

    new-instance p1, LGb/m;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LGb/m;-><init>(LMb/B;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, LMb/B;->l:Ldb/o;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Module name must be special: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final C(LJb/C;)Z
    .locals 2

    const-string v0, "targetModule"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LMb/B;->h:LI3/c;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v0, Lfb/x;->a:Lfb/x;

    invoke-static {v0, p1}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, LMb/B;->t0()Ljava/util/List;

    sget-object v0, Lfb/v;->a:Lfb/v;

    invoke-virtual {v0, p1}, Lfb/v;->contains(Ljava/lang/Object;)Z

    invoke-interface {p1}, LJb/C;->t0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final T(LP7/c;)Ljava/lang/Object;
    .locals 1

    const-string v0, "capability"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LMb/B;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final T0()V
    .locals 3

    iget-boolean v0, p0, LMb/B;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, LJb/y;->a:LP7/c;

    invoke-virtual {p0, v0}, LMb/B;->T(LP7/c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, LJb/x;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accessing invalid module descriptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "message"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LJb/n;->v(LMb/B;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j()LGb/i;
    .locals 0

    iget-object p0, p0, LMb/B;->e:LGb/i;

    return-object p0
.end method

.method public final k()LJb/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final q0(Lhc/c;)LJb/M;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/B;->T0()V

    iget-object p0, p0, LMb/B;->k:Lxc/e;

    invoke-virtual {p0, p1}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/M;

    return-object p0
.end method

.method public final t(Lhc/c;Lsb/k;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/B;->T0()V

    invoke-virtual {p0}, LMb/B;->T0()V

    iget-object p0, p0, LMb/B;->l:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMb/m;

    invoke-virtual {p0, p1, p2}, LMb/m;->t(Lhc/c;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final t0()Ljava/util/List;
    .locals 2

    iget-object v0, p0, LMb/B;->h:LI3/c;

    if-eqz v0, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependencies of module "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    iget-object p0, p0, Lhc/f;->a:Ljava/lang/String;

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " were not set"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LMb/n;->S0(LJb/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LMb/B;->j:Z

    if-nez v1, :cond_0

    const-string v1, " !isValid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " packageFragmentProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LMb/B;->i:LJb/I;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
