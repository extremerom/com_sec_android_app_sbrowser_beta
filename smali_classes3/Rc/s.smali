.class public final LRc/s;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:[LQc/h;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:LPc/i;


# direct methods
.method public constructor <init>([LQc/h;ILjava/util/concurrent/atomic/AtomicInteger;LPc/i;Lib/c;)V
    .locals 0

    iput-object p1, p0, LRc/s;->b:[LQc/h;

    iput p2, p0, LRc/s;->c:I

    iput-object p3, p0, LRc/s;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, LRc/s;->e:LPc/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, LRc/s;

    iget-object v3, p0, LRc/s;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, LRc/s;->e:LPc/i;

    iget-object v1, p0, LRc/s;->b:[LQc/h;

    iget v2, p0, LRc/s;->c:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LRc/s;-><init>([LQc/h;ILjava/util/concurrent/atomic/AtomicInteger;LPc/i;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LRc/s;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LRc/s;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LRc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LRc/s;->a:I

    iget-object v2, p0, LRc/s;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, LRc/s;->e:LPc/i;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, LRc/s;->b:[LQc/h;

    iget v1, p0, LRc/s;->c:I

    aget-object p1, p1, v1

    new-instance v6, LRc/r;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v3}, LRc/r;-><init>(IILjava/lang/Object;)V

    iput v5, p0, LRc/s;->a:I

    invoke-interface {p1, v6, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v3, v4}, LPc/i;->f(Ljava/lang/Throwable;)Z

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v3, v4}, LPc/i;->f(Ljava/lang/Throwable;)Z

    :cond_4
    throw p0
.end method
