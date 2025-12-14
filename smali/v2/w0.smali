.class public final Lv2/w0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Lv2/D0;

.field public b:LYc/d;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lv2/C0;


# direct methods
.method public constructor <init>(Lv2/C0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/w0;->e:Lv2/C0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lv2/w0;

    iget-object p0, p0, Lv2/w0;->e:Lv2/C0;

    invoke-direct {v0, p0, p2}, Lv2/w0;-><init>(Lv2/C0;Lib/c;)V

    iput-object p1, v0, Lv2/w0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv2/q1;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/w0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/w0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/w0;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lv2/w0;->e:Lv2/C0;

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lv2/w0;->b:LYc/d;

    iget-object v1, p0, Lv2/w0;->a:Lv2/D0;

    iget-object p0, p0, Lv2/w0;->d:Ljava/lang/Object;

    check-cast p0, Lv2/q1;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lv2/w0;->d:Ljava/lang/Object;

    check-cast v1, Lv2/q1;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lv2/w0;->b:LYc/d;

    check-cast v0, Lv2/D0;

    iget-object v1, p0, Lv2/w0;->a:Lv2/D0;

    if-nez v1, :cond_3

    iget-object p0, p0, Lv2/w0;->d:Ljava/lang/Object;

    check-cast p0, Lv2/q1;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, v0, Lv2/D0;->b:Lv2/H0;

    invoke-virtual {p0, v3}, Lv2/H0;->a(Lv2/z1;)Lv2/h1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :catchall_0
    throw v3

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/w0;->d:Ljava/lang/Object;

    check-cast p1, Lv2/q1;

    iget-object v1, v6, Lv2/C0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lv2/q0;

    invoke-direct {v1, v6, p1, v3}, Lv2/q0;-><init>(Lv2/C0;Lv2/q1;Lib/c;)V

    invoke-static {p1, v3, v3, v1, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    const/4 v1, 0x6

    invoke-static {v7, v1, v3}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v1

    new-instance v5, Lv2/r0;

    invoke-direct {v5, v1, v3, v6}, Lv2/r0;-><init>(LPc/i;Lib/c;Lv2/C0;)V

    invoke-static {p1, v3, v3, v5, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    new-instance v5, Lv2/v0;

    invoke-direct {v5, v1, v3, v6}, Lv2/v0;-><init>(LPc/i;Lib/c;Lv2/C0;)V

    invoke-static {p1, v3, v3, v5, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    iput-object p1, p0, Lv2/w0;->d:Ljava/lang/Object;

    iput-object v3, p0, Lv2/w0;->a:Lv2/D0;

    iput-object v3, p0, Lv2/w0;->b:LYc/d;

    iput v4, p0, Lv2/w0;->c:I

    invoke-virtual {v6, p0}, Lv2/C0;->f(Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    iget-object v1, v6, Lv2/C0;->i:Lv2/D0;

    iget-object v4, v1, Lv2/D0;->a:LYc/d;

    iput-object p1, p0, Lv2/w0;->d:Ljava/lang/Object;

    iput-object v1, p0, Lv2/w0;->a:Lv2/D0;

    iput-object v4, p0, Lv2/w0;->b:LYc/d;

    iput v2, p0, Lv2/w0;->c:I

    invoke-virtual {v4, p0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    move-object p0, p1

    move-object v0, v4

    :goto_1
    :try_start_1
    iget-object p1, v1, Lv2/D0;->b:Lv2/H0;

    iget-object p1, p1, Lv2/H0;->l:LZ3/x;

    sget-object v1, Lv2/P;->REFRESH:Lv2/P;

    invoke-virtual {p1, v1}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v0, v3}, LYc/a;->b(Ljava/lang/Object;)V

    instance-of p1, p1, Lv2/K;

    if-nez p1, :cond_7

    invoke-static {v6, p0}, Lv2/C0;->d(Lv2/C0;LNc/B;)V

    :cond_7
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_1
    move-exception p0

    invoke-interface {v0, v3}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to collect twice from pageEventFlow, which is an illegal operation. Did you forget to call Flow<PagingData<*>>.cachedIn(coroutineScope)?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
