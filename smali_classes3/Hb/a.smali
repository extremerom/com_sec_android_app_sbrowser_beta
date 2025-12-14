.class public final LHb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLb/c;


# instance fields
.field public final a:Lxc/l;

.field public final b:LMb/B;


# direct methods
.method public constructor <init>(Lxc/l;LMb/B;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHb/a;->a:Lxc/l;

    iput-object p2, p0, LHb/a;->b:LMb/B;

    return-void
.end method


# virtual methods
.method public final a(Lhc/c;Lhc/f;)Z
    .locals 1

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string p2, "asString(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Function"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "KFunction"

    invoke-static {p0, p2, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "SuspendFunction"

    invoke-static {p0, p2, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "KSuspendFunction"

    invoke-static {p0, p2, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, LHb/n;->c:LHb/n;

    invoke-virtual {p2, p1, p0}, LHb/n;->a(Lhc/c;Ljava/lang/String;)LHb/m;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final b(Lhc/c;)Ljava/util/Collection;
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final c(Lhc/b;)LJb/f;
    .locals 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lhc/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lhc/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lhc/b;->b:Lhc/c;

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    iget-object v0, v0, Lhc/d;->a:Ljava/lang/String;

    const-string v2, "Function"

    invoke-static {v0, v2}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    sget-object v2, LHb/n;->c:LHb/n;

    iget-object p1, p1, Lhc/b;->a:Lhc/c;

    invoke-virtual {v2, p1, v0}, LHb/n;->a(Lhc/c;Ljava/lang/String;)LHb/m;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, LHb/a;->b:LMb/B;

    invoke-virtual {v1, p1}, LMb/B;->q0(Lhc/c;)LJb/M;

    move-result-object p1

    check-cast p1, LMb/y;

    iget-object p1, p1, LMb/y;->f:Lxc/i;

    sget-object v1, LMb/y;->i:[LAb/u;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, v1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lvc/c;

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvc/c;

    new-instance v1, LHb/c;

    iget-object p0, p0, LHb/a;->a:Lxc/l;

    iget-object v2, v0, LHb/m;->a:LHb/l;

    iget v0, v0, LHb/m;->b:I

    invoke-direct {v1, p0, p1, v2, v0}, LHb/c;-><init>(Lxc/l;Lvc/c;LHb/l;I)V

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_7
    :goto_2
    return-object v1
.end method
