.class public abstract Loc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "value"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    return-void
.end method

.method public static final a(LMb/T;)Z
    .locals 2

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    sget-object v0, Loc/a;->a:Loc/a;

    sget-object v1, Loc/c;->a:Loc/c;

    invoke-static {p0, v0, v1}, LHc/l;->g(Ljava/util/Collection;LHc/b;Lsb/k;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "ifAny(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(LJb/d;Lsb/k;)LJb/d;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltb/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance v1, La0/x;

    const/4 v2, 0x0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, v1, La0/x;->a:Z

    new-instance v2, LHc/a;

    invoke-direct {v2, v0, p1}, LHc/a;-><init>(Ltb/w;Lsb/k;)V

    invoke-static {p0, v1, v2}, LHc/l;->e(Ljava/util/Collection;LHc/b;LHc/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/d;

    return-object p0
.end method

.method public static final c(LJb/m;)Lhc/c;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object p0

    invoke-virtual {p0}, Lhc/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lhc/d;->g()Lhc/c;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final d(LKb/b;)LJb/f;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LKb/b;->getType()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    instance-of v0, p0, LJb/f;

    if-eqz v0, :cond_0

    check-cast p0, LJb/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(LJb/l;)LGb/i;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Loc/d;->j(LJb/l;)LJb/C;

    move-result-object p0

    invoke-interface {p0}, LJb/C;->j()LGb/i;

    move-result-object p0

    return-object p0
.end method

.method public static final f(LJb/i;)Lhc/b;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, LJb/H;

    const-string v3, "getName(...)"

    if-eqz v2, :cond_0

    new-instance v0, Lhc/b;

    check-cast v1, LJb/H;

    check-cast v1, LMb/D;

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    invoke-static {p0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, LMb/D;->f:Lhc/c;

    invoke-direct {v0, v1, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, LJb/j;

    if-eqz v2, :cond_1

    check-cast v1, LJb/i;

    invoke-static {v1}, Loc/d;->f(LJb/i;)Lhc/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    invoke-static {p0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lhc/b;->d(Lhc/f;)Lhc/b;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final g(LJb/l;)Lhc/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkc/e;->h(LJb/l;)Lhc/c;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    invoke-static {v0}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object v0

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lhc/d;->a(Lhc/f;)Lhc/d;

    move-result-object p0

    invoke-virtual {p0}, Lhc/d;->g()Lhc/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final h(LJb/l;)Lhc/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object p0

    const-string v0, "getFqName(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final i(LJb/C;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lzc/g;->a:LP7/c;

    invoke-interface {p0, v0}, LJb/C;->T(LP7/c;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static final j(LJb/l;)LJb/C;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkc/e;->d(LJb/l;)LJb/C;

    move-result-object p0

    const-string v0, "getContainingModule(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final k(LJb/d;)LJb/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LJb/O;

    if-eqz v0, :cond_0

    check-cast p0, LJb/O;

    check-cast p0, LMb/H;

    invoke-virtual {p0}, LMb/H;->U0()LJb/P;

    move-result-object p0

    const-string v0, "getCorrespondingProperty(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final l(LJb/d;)LJc/i;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "<this>"

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v1, [LJb/d;

    aput-object p0, v2, v0

    invoke-static {v2}, Lfb/l;->e([Ljava/lang/Object;)LJc/l;

    move-result-object v2

    invoke-interface {p0}, LJb/d;->l()Ljava/util/Collection;

    move-result-object p0

    const-string v3, "getOverriddenDescriptors(...)"

    invoke-static {p0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p0

    new-instance v3, Loc/b;

    invoke-direct {v3, v1}, Loc/b;-><init>(I)V

    new-instance v4, LJc/i;

    sget-object v5, LJc/r;->a:LJc/r;

    invoke-direct {v4, p0, v3, v5}, LJc/i;-><init>(LJc/l;Lsb/k;Lsb/k;)V

    const/4 p0, 0x2

    new-array p0, p0, [LJc/l;

    aput-object v2, p0, v0

    aput-object v4, p0, v1

    invoke-static {p0}, Lfb/l;->e([Ljava/lang/Object;)LJc/l;

    move-result-object p0

    new-instance v0, LC9/a;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LC9/a;-><init>(I)V

    invoke-static {p0, v0}, LJc/n;->p(LJc/l;Lsb/k;)LJc/i;

    move-result-object p0

    return-object p0
.end method
