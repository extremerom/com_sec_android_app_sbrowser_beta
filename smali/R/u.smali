.class public final LR/u;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LYc/a;

.field public b:Ljava/lang/Object;

.field public c:LS/j;

.field public d:LR/v;

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:LR/s;

.field public final synthetic h:LR/v;

.field public final synthetic i:LS/h;

.field public final synthetic j:LS/j;


# direct methods
.method public constructor <init>(LR/s;LR/v;LS/h;LS/j;Lib/c;)V
    .locals 0

    iput-object p1, p0, LR/u;->g:LR/s;

    iput-object p2, p0, LR/u;->h:LR/v;

    iput-object p3, p0, LR/u;->i:LS/h;

    iput-object p4, p0, LR/u;->j:LS/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, LR/u;

    iget-object v3, p0, LR/u;->i:LS/h;

    iget-object v4, p0, LR/u;->j:LS/j;

    iget-object v1, p0, LR/u;->g:LR/s;

    iget-object v2, p0, LR/u;->h:LR/v;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LR/u;-><init>(LR/s;LR/v;LS/h;LS/j;Lib/c;)V

    iput-object p1, v6, LR/u;->f:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LR/u;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LR/u;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LR/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LR/u;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, LR/u;->b:Ljava/lang/Object;

    check-cast v0, LR/v;

    iget-object v1, p0, LR/u;->a:LYc/a;

    iget-object p0, p0, LR/u;->f:Ljava/lang/Object;

    check-cast p0, LR/t;

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
    iget-object v1, p0, LR/u;->d:LR/v;

    iget-object v4, p0, LR/u;->c:LS/j;

    iget-object v5, p0, LR/u;->b:Ljava/lang/Object;

    check-cast v5, Lsb/n;

    iget-object v6, p0, LR/u;->a:LYc/a;

    iget-object v7, p0, LR/u;->f:Ljava/lang/Object;

    check-cast v7, LR/t;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, v7

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    goto :goto_2

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LR/u;->f:Ljava/lang/Object;

    check-cast p1, LNc/B;

    new-instance v1, LR/t;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    sget-object v5, LNc/i0;->a:LNc/i0;

    invoke-interface {p1, v5}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p1, LNc/j0;

    iget-object v5, p0, LR/u;->g:LR/s;

    invoke-direct {v1, v5, p1}, LR/t;-><init>(LR/s;LNc/j0;)V

    :goto_0
    iget-object p1, p0, LR/u;->h:LR/v;

    iget-object v5, p1, LR/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LR/t;

    if-eqz v6, :cond_4

    iget-object v7, v1, LR/t;->a:LR/s;

    iget-object v8, v6, LR/t;->a:LR/s;

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

    iget-object v5, v6, LR/t;->b:LNc/j0;

    invoke-interface {v5, v2}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v1, p0, LR/u;->f:Ljava/lang/Object;

    iget-object v5, p1, LR/v;->b:LYc/d;

    iput-object v5, p0, LR/u;->a:LYc/a;

    iget-object v6, p0, LR/u;->i:LS/h;

    iput-object v6, p0, LR/u;->b:Ljava/lang/Object;

    iget-object v7, p0, LR/u;->j:LS/j;

    iput-object v7, p0, LR/u;->c:LS/j;

    iput-object p1, p0, LR/u;->d:LR/v;

    iput v4, p0, LR/u;->e:I

    invoke-virtual {v5, p0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_6

    return-object v0

    :cond_6
    move-object v4, v7

    :goto_2
    :try_start_1
    iput-object v1, p0, LR/u;->f:Ljava/lang/Object;

    iput-object v5, p0, LR/u;->a:LYc/a;

    iput-object p1, p0, LR/u;->b:Ljava/lang/Object;

    iput-object v2, p0, LR/u;->c:LS/j;

    iput-object v2, p0, LR/u;->d:LR/v;

    iput v3, p0, LR/u;->e:I

    invoke-interface {v6, v4, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, v0, LR/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget-object v0, v0, LR/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

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
