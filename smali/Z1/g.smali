.class public final LZ1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/f;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:LPc/y;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;LPc/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ1/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, LZ1/g;->b:LPc/y;

    return-void
.end method


# virtual methods
.method public final d(Li0/a;Lkb/c;)Ljb/a;
    .locals 4

    instance-of v0, p2, LZ1/f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LZ1/f;

    iget v1, v0, LZ1/f;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LZ1/f;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LZ1/f;

    invoke-direct {v0, p0, p2}, LZ1/f;-><init>(LZ1/g;Lkb/c;)V

    :goto_0
    iget-object p2, v0, LZ1/f;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LZ1/f;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LZ1/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, LZ1/g;->b:LPc/y;

    iput v3, v0, LZ1/f;->c:I

    new-instance v2, LNc/k;

    invoke-static {v0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object v0

    invoke-direct {v2, v3, v0}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v2}, LNc/k;->q()V

    new-instance v0, LZ1/e;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, LZ1/e;-><init>(LPc/y;I)V

    invoke-virtual {v2, v0}, LNc/k;->t(Lsb/k;)V

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LNc/j;

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    invoke-interface {p2, v0}, LNc/j;->i(Ljava/lang/Throwable;)Z

    :cond_3
    check-cast p0, LPc/x;

    invoke-virtual {p0, p1}, LPc/x;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lib/g;)Lib/f;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LG5/P3;->e(Lib/f;Lib/g;)Lib/f;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lib/g;
    .locals 0

    sget-object p0, LZ1/b;->a:LZ1/b;

    return-object p0
.end method

.method public final minusKey(Lib/g;)Lib/h;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LG5/P3;->g(Lib/f;Lib/g;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lib/h;)Lib/h;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LG5/O3;->c(Lib/h;Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method
