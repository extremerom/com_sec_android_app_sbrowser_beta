.class public abstract Lkc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.jvm.JvmInline"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v0

    sget-object v1, Lhc/c;->c:Lhc/c;

    invoke-static {v0}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object v0

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->c()Z

    return-void
.end method

.method public static final a(LJb/d;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LMb/K;

    if-eqz v0, :cond_1

    check-cast p0, LMb/K;

    check-cast p0, LMb/H;

    invoke-virtual {p0}, LMb/H;->U0()LJb/P;

    move-result-object p0

    const-string v0, "getCorrespondingProperty(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LJb/b;->N()LMb/w;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    instance-of v1, v0, LJb/f;

    if-eqz v1, :cond_0

    check-cast v0, LJb/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, LJb/f;->R()LJb/X;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    const-string v1, "getName(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, LJb/X;->a(Lhc/f;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final b(LJb/l;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LJb/f;

    if-eqz v0, :cond_0

    check-cast p0, LJb/f;

    invoke-interface {p0}, LJb/f;->R()LJb/X;

    move-result-object p0

    instance-of p0, p0, LJb/w;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Lyc/w;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkc/i;->b(LJb/l;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(LJb/l;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LJb/f;

    if-eqz v0, :cond_0

    check-cast p0, LJb/f;

    invoke-interface {p0}, LJb/f;->R()LJb/X;

    move-result-object p0

    instance-of p0, p0, LJb/D;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(LJb/Z;)Z
    .locals 3

    invoke-interface {p0}, LJb/b;->N()LMb/w;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    instance-of v1, v0, LJb/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, LJb/f;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    sget v1, Loc/d;->a:I

    invoke-interface {v0}, LJb/f;->R()LJb/X;

    move-result-object v0

    instance-of v1, v0, LJb/w;

    if-eqz v1, :cond_1

    check-cast v0, LJb/w;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, LJb/w;->a:Lhc/f;

    :cond_2
    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    invoke-static {v2, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static final f(LJb/l;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkc/i;->b(LJb/l;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lkc/i;->d(LJb/l;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final g(Lyc/w;)Z
    .locals 0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkc/i;->f(LJb/l;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final h(Lyc/w;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkc/i;->d(LJb/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lyc/b0;->e(Lyc/w;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final i(Lyc/w;)Lyc/A;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    instance-of v0, p0, LJb/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, LJb/f;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    sget v0, Loc/d;->a:I

    invoke-interface {p0}, LJb/f;->R()LJb/X;

    move-result-object p0

    instance-of v0, p0, LJb/w;

    if-eqz v0, :cond_1

    check-cast p0, LJb/w;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    iget-object p0, p0, LJb/w;->b:LBc/e;

    move-object v1, p0

    check-cast v1, Lyc/A;

    :cond_2
    return-object v1
.end method
