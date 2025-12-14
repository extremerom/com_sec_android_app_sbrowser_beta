.class public final LPc/x;
.super LNc/a;
.source "SourceFile"

# interfaces
.implements LPc/y;
.implements LPc/m;


# instance fields
.field public final d:LPc/i;


# direct methods
.method public constructor <init>(Lib/h;LPc/i;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LNc/a;-><init>(Lib/h;Z)V

    iput-object p2, p0, LPc/x;->d:LPc/i;

    return-void
.end method


# virtual methods
.method public final C(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, LPc/x;->d:LPc/i;

    invoke-virtual {v1, v0, p1}, LPc/i;->h(ZLjava/lang/Throwable;)Z

    invoke-virtual {p0, p1}, LNc/t0;->A(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, LNc/t0;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, LNc/k0;

    invoke-virtual {p0}, LNc/a;->F()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LNc/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LNc/t0;)V

    :cond_1
    invoke-virtual {p0, p1}, LPc/x;->C(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-interface {p0, p1, p2}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g0(ZLjava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LPc/x;->d:LPc/i;

    invoke-virtual {v1, v0, p2}, LPc/i;->h(ZLjava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, LNc/a;->c:Lib/h;

    invoke-static {p0, p2}, LNc/E;->s(Lib/h;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final h0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ldb/r;

    const/4 p1, 0x0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-virtual {p0, p1}, LPc/i;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final iterator()LPc/b;
    .locals 1

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LPc/b;

    invoke-direct {v0, p0}, LPc/b;-><init>(LPc/i;)V

    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-interface {p0, p1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lkb/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, LPc/i;->E(LPc/i;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method

.method public final m()Lo3/c;
    .locals 0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-virtual {p0}, LPc/i;->m()Lo3/c;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-virtual {p0}, LPc/i;->n()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lsb/k;)V
    .locals 0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-virtual {p0, p1}, LPc/i;->p(Lsb/k;)V

    return-void
.end method

.method public final r(Lkb/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-virtual {p0, p1}, LPc/i;->r(Lkb/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
