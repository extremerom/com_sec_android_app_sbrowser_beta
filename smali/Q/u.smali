.class public final LQ/u;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LYc/a;

.field public b:Ljava/lang/Object;

.field public c:LQ/v;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LQ/s;

.field public final synthetic g:LQ/v;

.field public final synthetic h:Lkb/i;


# direct methods
.method public constructor <init>(LQ/s;LQ/v;Lsb/k;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQ/u;->f:LQ/s;

    iput-object p2, p0, LQ/u;->g:LQ/v;

    check-cast p3, Lkb/i;

    iput-object p3, p0, LQ/u;->h:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, LQ/u;

    iget-object v1, p0, LQ/u;->h:Lkb/i;

    iget-object v2, p0, LQ/u;->f:LQ/s;

    iget-object p0, p0, LQ/u;->g:LQ/v;

    invoke-direct {v0, v2, p0, v1, p2}, LQ/u;-><init>(LQ/s;LQ/v;Lsb/k;Lib/c;)V

    iput-object p1, v0, LQ/u;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LQ/u;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LQ/u;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LQ/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LQ/u;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, LQ/u;->b:Ljava/lang/Object;

    check-cast v0, LQ/v;

    iget-object v1, p0, LQ/u;->a:LYc/a;

    iget-object p0, p0, LQ/u;->e:Ljava/lang/Object;

    check-cast p0, LQ/t;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, LQ/u;->c:LQ/v;

    iget-object v4, p0, LQ/u;->b:Ljava/lang/Object;

    check-cast v4, Lsb/k;

    iget-object v5, p0, LQ/u;->a:LYc/a;

    iget-object v6, p0, LQ/u;->e:Ljava/lang/Object;

    check-cast v6, LQ/t;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LQ/u;->e:Ljava/lang/Object;

    check-cast p1, LNc/B;

    new-instance v1, LQ/t;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    sget-object v5, LNc/i0;->a:LNc/i0;

    invoke-interface {p1, v5}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p1, LNc/j0;

    iget-object v5, p0, LQ/u;->f:LQ/s;

    invoke-direct {v1, v5, p1}, LQ/t;-><init>(LQ/s;LNc/j0;)V

    :goto_0
    iget-object p1, p0, LQ/u;->g:LQ/v;

    iget-object v5, p1, LQ/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LQ/t;

    if-eqz v6, :cond_4

    iget-object v7, v1, LQ/t;->a:LQ/s;

    iget-object v8, v6, LQ/t;->a:LQ/s;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-ltz v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string p1, "Current mutation had a higher priority"

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v6, :cond_5

    iget-object v5, v6, LQ/t;->b:LNc/j0;

    invoke-interface {v5, v2}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v1, p0, LQ/u;->e:Ljava/lang/Object;

    iget-object v5, p1, LQ/v;->b:LYc/d;

    iput-object v5, p0, LQ/u;->a:LYc/a;

    iget-object v6, p0, LQ/u;->h:Lkb/i;

    iput-object v6, p0, LQ/u;->b:Ljava/lang/Object;

    iput-object p1, p0, LQ/u;->c:LQ/v;

    iput v4, p0, LQ/u;->d:I

    invoke-virtual {v5, p0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_6

    return-object v0

    :cond_6
    move-object v4, v6

    :goto_2
    :try_start_1
    iput-object v1, p0, LQ/u;->e:Ljava/lang/Object;

    iput-object v5, p0, LQ/u;->a:LYc/a;

    iput-object p1, p0, LQ/u;->b:Ljava/lang/Object;

    iput-object v2, p0, LQ/u;->c:LQ/v;

    iput v3, p0, LQ/u;->d:I

    invoke-interface {v4, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v5

    :goto_3
    :try_start_2
    iget-object v0, v0, LQ/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_8
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v3, p0, :cond_8

    :goto_4
    invoke-interface {v1, v2}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v5

    :goto_5
    :try_start_3
    iget-object v0, v0, LQ/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_6
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_a

    goto :goto_6

    :cond_a
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    invoke-interface {v1, v2}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0

    :cond_b
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v6, :cond_4

    goto/16 :goto_0
.end method
