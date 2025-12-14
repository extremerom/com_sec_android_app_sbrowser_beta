.class public final LVb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKb/h;


# instance fields
.field public final a:Lo3/i;

.field public final b:LYb/b;

.field public final c:Z

.field public final d:Lxc/j;


# direct methods
.method public constructor <init>(Lo3/i;LYb/b;Z)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVb/c;->a:Lo3/i;

    iput-object p2, p0, LVb/c;->b:LYb/b;

    iput-boolean p3, p0, LVb/c;->c:Z

    iget-object p1, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-object p1, p1, LVb/a;->a:Lxc/l;

    new-instance p2, LMb/a;

    const/4 p3, 0x7

    invoke-direct {p2, p3, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, LVb/c;->d:Lxc/j;

    return-void
.end method


# virtual methods
.method public final B(Lhc/c;)LKb/b;
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LVb/c;->b:LYb/b;

    invoke-interface {v0, p1}, LYb/b;->a(Lhc/c;)LPb/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, LVb/c;->d:Lxc/j;

    invoke-virtual {v2, v1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LKb/b;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, LTb/c;->a:Lhc/f;

    iget-object p0, p0, LVb/c;->a:Lo3/i;

    invoke-static {p1, v0, p0}, LTb/c;->a(Lhc/c;LYb/b;Lo3/i;)LUb/i;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, LVb/c;->b:LYb/b;

    invoke-interface {p0}, LYb/b;->u()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, LVb/c;->b:LYb/b;

    invoke-interface {v1}, LYb/b;->u()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object v2

    iget-object v3, p0, LVb/c;->d:Lxc/j;

    invoke-static {v2, v3}, LJc/n;->t(LJc/l;Lsb/k;)LJc/t;

    move-result-object v2

    sget-object v3, LTb/c;->a:Lhc/f;

    sget-object v3, LGb/p;->m:Lhc/c;

    iget-object p0, p0, LVb/c;->a:Lo3/i;

    invoke-static {v3, v1, p0}, LTb/c;->a(Lhc/c;LYb/b;Lo3/i;)LUb/i;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lfb/l;->e([Ljava/lang/Object;)LJc/l;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [LJc/l;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lfb/l;->e([Ljava/lang/Object;)LJc/l;

    move-result-object p0

    new-instance v1, LC9/a;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, LC9/a;-><init>(I)V

    invoke-static {p0, v1}, LJc/n;->p(LJc/l;Lsb/k;)LJc/i;

    move-result-object p0

    new-instance v1, LC9/a;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, LC9/a;-><init>(I)V

    new-instance v2, LJc/h;

    invoke-direct {v2, p0, v0, v1}, LJc/h;-><init>(LJc/l;ZLsb/k;)V

    new-instance p0, LJc/g;

    invoke-direct {p0, v2}, LJc/g;-><init>(LJc/h;)V

    return-object p0
.end method

.method public final m0(Lhc/c;)Z
    .locals 0

    invoke-static {p0, p1}, LG5/U3;->d(LKb/h;Lhc/c;)Z

    move-result p0

    return p0
.end method
