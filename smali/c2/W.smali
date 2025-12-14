.class public final Lc2/W;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lc2/D;

.field public final synthetic d:LA9/b;


# direct methods
.method public constructor <init>(Lc2/D;LA9/b;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/W;->c:Lc2/D;

    iput-object p2, p0, Lc2/W;->d:LA9/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lc2/W;

    iget-object v1, p0, Lc2/W;->c:Lc2/D;

    iget-object p0, p0, Lc2/W;->d:LA9/b;

    invoke-direct {v0, v1, p0, p2}, Lc2/W;-><init>(Lc2/D;LA9/b;Lib/c;)V

    iput-object p1, v0, Lc2/W;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/W;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/W;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/W;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/W;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lc2/W;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lc2/W;->b:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, LNc/B;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lc2/V;

    const/4 v9, 0x0

    iget-object v5, p0, Lc2/W;->c:Lc2/D;

    iget-object v6, p0, Lc2/W;->d:LA9/b;

    move-object v4, v1

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lc2/V;-><init>(Lc2/D;LA9/b;LNc/B;Ljava/util/concurrent/atomic/AtomicReference;Lib/c;)V

    iput-object p1, p0, Lc2/W;->b:Ljava/lang/Object;

    iput v3, p0, Lc2/W;->a:I

    invoke-static {v1, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/j0;

    if-eqz p0, :cond_3

    invoke-interface {p0, v2}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    return-object p1
.end method
