.class public abstract LNc/a;
.super LNc/t0;
.source "SourceFile"

# interfaces
.implements Lib/c;
.implements LNc/B;


# instance fields
.field public final c:Lib/h;


# direct methods
.method public constructor <init>(Lib/h;Z)V
    .locals 0

    invoke-direct {p0, p2}, LNc/t0;-><init>(Z)V

    sget-object p2, LNc/i0;->a:LNc/i0;

    invoke-interface {p1, p2}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p2

    check-cast p2, LNc/j0;

    invoke-virtual {p0, p2}, LNc/t0;->S(LNc/j0;)V

    invoke-interface {p1, p0}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p1

    iput-object p1, p0, LNc/a;->c:Lib/h;

    return-void
.end method


# virtual methods
.method public final F()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final R(LI5/b;)V
    .locals 0

    iget-object p0, p0, LNc/a;->c:Lib/h;

    invoke-static {p0, p1}, LNc/E;->s(Lib/h;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a0(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, LNc/s;

    if-eqz v0, :cond_1

    check-cast p1, LNc/s;

    iget-object v0, p1, LNc/s;->a:Ljava/lang/Throwable;

    sget-object v1, LNc/s;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, LNc/a;->g0(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, LNc/a;->h0(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public g0(ZLjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final getContext()Lib/h;
    .locals 0

    iget-object p0, p0, LNc/a;->c:Lib/h;

    return-object p0
.end method

.method public h0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final i0(LNc/D;LNc/a;Lsb/n;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LNc/C;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    goto :goto_3

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :try_start_0
    iget-object p1, p0, LNc/a;->c:Lib/h;

    const/4 v1, 0x0

    invoke-static {p1, v1}, LUc/a;->n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v2, p3, Lkb/a;

    if-nez v2, :cond_2

    invoke-static {p2, p3, p0}, LG5/U3;->f(Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_2
    invoke-static {v0, p3}, Ltb/z;->e(ILjava/lang/Object;)V

    invoke-interface {p3, p2, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {p1, v1}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-eq p2, p1, :cond_5

    invoke-virtual {p0, p2}, LNc/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-static {p1, v1}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LNc/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    const-string p1, "<this>"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p3}, LG5/U3;->a(Lib/c;Lib/c;Lsb/n;)Lib/c;

    move-result-object p0

    invoke-static {p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p0

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p3, p2, p0}, LG5/W2;->d(Lsb/n;LNc/a;LNc/a;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LNc/s;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0, p1}, LNc/t0;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LNc/E;->e:LQ6/i;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, LNc/a;->y(Ljava/lang/Object;)V

    return-void
.end method

.method public final v()Lib/h;
    .locals 0

    iget-object p0, p0, LNc/a;->c:Lib/h;

    return-object p0
.end method
