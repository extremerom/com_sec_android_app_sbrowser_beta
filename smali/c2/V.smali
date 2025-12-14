.class public final Lc2/V;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lc2/D;

.field public final synthetic d:LA9/b;

.field public final synthetic e:LNc/B;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lc2/D;LA9/b;LNc/B;Ljava/util/concurrent/atomic/AtomicReference;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/V;->c:Lc2/D;

    iput-object p2, p0, Lc2/V;->d:LA9/b;

    iput-object p3, p0, Lc2/V;->e:LNc/B;

    iput-object p4, p0, Lc2/V;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, Lc2/V;

    iget-object v4, p0, Lc2/V;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lc2/V;->c:Lc2/D;

    iget-object v2, p0, Lc2/V;->d:LA9/b;

    iget-object v3, p0, Lc2/V;->e:LNc/B;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc2/V;-><init>(Lc2/D;LA9/b;LNc/B;Ljava/util/concurrent/atomic/AtomicReference;Lib/c;)V

    iput-object p1, v6, Lc2/V;->b:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/V;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/V;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/V;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lc2/V;->b:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, LNc/B;

    new-instance p1, Lc2/U;

    iget-object v8, p0, Lc2/V;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lc2/V;->d:LA9/b;

    iget-object v6, p0, Lc2/V;->e:LNc/B;

    iget-object v7, p0, Lc2/V;->c:Lc2/D;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lc2/U;-><init>(LNc/B;LA9/b;LNc/B;Lc2/D;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput v2, p0, Lc2/V;->a:I

    iget-object v1, p0, Lc2/V;->c:Lc2/D;

    invoke-virtual {v1, p1, p0}, Lc2/D;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
