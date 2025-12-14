.class public final LDb/C;
.super LDb/I;
.source "SourceFile"

# interfaces
.implements LAb/c;
.implements LDb/y0;


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const-string v0, "jClass"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/C;->b:Ljava/lang/Class;

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance v0, LDb/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LDb/t;-><init>(LDb/C;I)V

    invoke-static {p1, v0}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LDb/C;->c:Ljava/lang/Object;

    return-void
.end method

.method public static r(Lhc/b;LOb/e;)LMb/l;
    .locals 8

    new-instance v7, LMb/l;

    new-instance v1, LIb/p;

    iget-object p1, p1, LOb/e;->a:Luc/k;

    iget-object v0, p1, Luc/k;->b:LJb/C;

    iget-object v2, p0, Lhc/b;->a:Lhc/c;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, LIb/p;-><init>(LJb/C;Lhc/c;I)V

    invoke-virtual {p0}, Lhc/b;->f()Lhc/f;

    move-result-object v2

    sget-object v3, LJb/B;->FINAL:LJb/B;

    sget-object v4, LJb/g;->CLASS:LJb/g;

    iget-object p0, p1, Luc/k;->b:LJb/C;

    invoke-interface {p0}, LJb/C;->j()LGb/i;

    move-result-object p0

    const-string v0, "Any"

    invoke-virtual {p0, v0}, LGb/i;->k(Ljava/lang/String;)LJb/f;

    move-result-object p0

    invoke-interface {p0}, LJb/f;->n()Lyc/A;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/Collection;

    iget-object v6, p1, Luc/k;->a:Lxc/o;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LMb/l;-><init>(LJb/l;Lhc/f;LJb/B;LJb/g;Ljava/util/Collection;Lxc/o;)V

    new-instance p0, LDb/A;

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    invoke-direct {p0, p1, v7}, Lrc/h;-><init>(Lxc/o;LMb/c;)V

    sget-object p1, Lfb/x;->a:Lfb/x;

    const/4 v0, 0x0

    invoke-virtual {v7, p0, p1, v0}, LMb/l;->D0(Lrc/o;Ljava/util/Set;LMb/j;)V

    return-object v7
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, LDb/C;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public final e()Ljava/util/Collection;
    .locals 2

    invoke-virtual {p0}, LDb/C;->y()LJb/f;

    move-result-object p0

    invoke-interface {p0}, LJb/f;->d()LJb/g;

    move-result-object v0

    sget-object v1, LJb/g;->INTERFACE:LJb/g;

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, LJb/f;->d()LJb/g;

    move-result-object v0

    sget-object v1, LJb/g;->OBJECT:LJb/g;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LJb/f;->h()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getConstructors(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LDb/C;

    if-eqz v0, :cond_0

    invoke-static {p0}, LG5/D;->d(LAb/c;)Ljava/lang/Class;

    move-result-object p0

    check-cast p1, LAb/c;

    invoke-static {p1}, LG5/D;->d(LAb/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Lhc/f;)Ljava/util/Collection;
    .locals 3

    invoke-virtual {p0}, LDb/C;->y()LJb/f;

    move-result-object v0

    invoke-interface {v0}, LJb/f;->n()Lyc/A;

    move-result-object v0

    invoke-virtual {v0}, Lyc/w;->G()Lrc/o;

    move-result-object v0

    sget-object v1, LRb/c;->FROM_REFLECTION:LRb/c;

    invoke-interface {v0, p1, v1}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, LDb/C;->y()LJb/f;

    move-result-object p0

    invoke-interface {p0}, LJb/f;->j0()Lrc/o;

    move-result-object p0

    const-string v2, "getStaticScope(...)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final g(I)LJb/P;
    .locals 9

    iget-object v0, p0, LDb/C;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultImpls"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LG5/D;->f(Ljava/lang/Class;)LAb/c;

    move-result-object p0

    check-cast p0, LDb/C;

    invoke-virtual {p0, p1}, LDb/C;->g(I)LJb/P;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LDb/C;->y()LJb/f;

    move-result-object v0

    instance-of v1, v0, Lwc/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lwc/i;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lfc/k;->j:Lic/o;

    const-string v3, "classLocalVariable"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lwc/i;->e:Lcc/k;

    invoke-static {v3, v1, p1}, LG5/L2;->g(Lic/m;Lic/o;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcc/I;

    if-eqz v4, :cond_2

    iget-object p1, v0, Lwc/i;->l:Luc/m;

    iget-object v1, p1, Luc/m;->b:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lec/g;

    sget-object v8, LDb/B;->a:LDb/B;

    iget-object v3, p0, LDb/C;->b:Ljava/lang/Class;

    iget-object v7, v0, Lwc/i;->f:Lec/a;

    iget-object p0, p1, Luc/m;->d:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, LX4/i;

    invoke-static/range {v3 .. v8}, LDb/I0;->f(Ljava/lang/Class;Lic/m;Lec/g;LX4/i;Lec/a;Lsb/n;)LJb/b;

    move-result-object p0

    move-object v2, p0

    check-cast v2, LJb/P;

    :cond_2
    return-object v2
.end method

.method public final h()Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, LDb/C;->c:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LDb/y;->o:[LAb/u;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/y;->f:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, LG5/D;->d(LAb/c;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Ljava/util/List;
    .locals 2

    iget-object p0, p0, LDb/C;->c:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LDb/y;->o:[LAb/u;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/y;->h:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final l(Lhc/f;)Ljava/util/Collection;
    .locals 3

    invoke-virtual {p0}, LDb/C;->y()LJb/f;

    move-result-object v0

    invoke-interface {v0}, LJb/f;->n()Lyc/A;

    move-result-object v0

    invoke-virtual {v0}, Lyc/w;->G()Lrc/o;

    move-result-object v0

    sget-object v1, LRb/c;->FROM_REFLECTION:LRb/c;

    invoke-interface {v0, p1, v1}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, LDb/C;->y()LJb/f;

    move-result-object p0

    invoke-interface {p0}, LJb/f;->j0()Lrc/o;

    move-result-object p0

    const-string v2, "getStaticScope(...)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final s()Z
    .locals 0

    invoke-virtual {p0}, LDb/C;->y()LJb/f;

    move-result-object p0

    invoke-interface {p0}, LJb/f;->s()Z

    move-result p0

    return p0
.end method

.method public final t()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LDb/C;->c:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/y;

    iget-object p0, p0, LDb/y;->g:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LDb/C;->x()Lhc/b;

    move-result-object p0

    iget-object v1, p0, Lhc/b;->a:Lhc/c;

    iget-object v2, v1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->c()Z

    move-result v2

    const/16 v3, 0x2e

    if-eqz v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    iget-object v1, v1, Lhc/d;->a:Ljava/lang/String;

    invoke-static {v2, v1, v3}, LV0/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Lhc/b;->b:Lhc/c;

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    const/16 v2, 0x24

    invoke-static {p0, v3, v2}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, LPb/c;->a:Ljava/util/List;

    iget-object p0, p0, LDb/C;->b:Ljava/lang/Class;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LPb/c;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Ltb/z;->f(ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, LPb/c;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, LDb/C;->c:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LDb/y;->o:[LAb/u;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/y;->e:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, LDb/C;->c:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LDb/y;->o:[LAb/u;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/y;->d:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final x()Lhc/b;
    .locals 2

    sget-object v0, LDb/G0;->a:Lhc/b;

    iget-object p0, p0, LDb/C;->b:Ljava/lang/Class;

    const-string v0, "klass"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getComponentType(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpc/c;->d(Ljava/lang/String;)Lpc/c;

    move-result-object p0

    invoke-virtual {p0}, Lpc/c;->g()LGb/l;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    new-instance p0, Lhc/b;

    sget-object v0, LGb/q;->l:Lhc/c;

    invoke-virtual {v1}, LGb/l;->e()Lhc/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    goto :goto_1

    :cond_1
    sget-object p0, LGb/p;->g:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->g()Lhc/c;

    move-result-object p0

    new-instance v0, Lhc/b;

    invoke-virtual {p0}, Lhc/c;->b()Lhc/c;

    move-result-object v1

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, LDb/G0;->a:Lhc/b;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpc/c;->d(Ljava/lang/String;)Lpc/c;

    move-result-object v0

    invoke-virtual {v0}, Lpc/c;->g()LGb/l;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    new-instance p0, Lhc/b;

    sget-object v0, LGb/q;->l:Lhc/c;

    invoke-virtual {v1}, LGb/l;->g()Lhc/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object p0

    iget-boolean v0, p0, Lhc/b;->c:Z

    if-nez v0, :cond_6

    sget-object v0, LIb/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lhc/b;->a()Lhc/c;

    move-result-object v0

    const-string v1, "fqName"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LIb/d;->h:Ljava/util/HashMap;

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/b;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return-object p0
.end method

.method public final y()LJb/f;
    .locals 0

    iget-object p0, p0, LDb/C;->c:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/y;

    invoke-virtual {p0}, LDb/y;->a()LJb/f;

    move-result-object p0

    return-object p0
.end method
