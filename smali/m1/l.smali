.class public final Lm1/l;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Lm1/r;

.field public b:I

.field public final synthetic c:Lo3/i;


# direct methods
.method public constructor <init>(Lo3/i;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lm1/l;->c:Lo3/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0

    new-instance p1, Lm1/l;

    iget-object p0, p0, Lm1/l;->c:Lo3/i;

    invoke-direct {p1, p0, p2}, Lm1/l;-><init>(Lo3/i;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lm1/l;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lm1/l;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lm1/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lm1/l;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lm1/l;->c:Lo3/i;

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lm1/l;->a:Lm1/r;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, v4, Lo3/i;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_6

    :cond_3
    iget-object p1, v4, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LNc/B;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    invoke-static {p1}, LNc/E;->l(Lib/h;)V

    iget-object p1, v4, Lo3/i;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lm1/r;

    iput-object v1, p0, Lm1/l;->a:Lm1/r;

    iput v3, p0, Lm1/l;->b:I

    iget-object p1, v4, Lo3/i;->c:Ljava/lang/Object;

    check-cast p1, LPc/i;

    invoke-virtual {p1, p0}, LPc/i;->r(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lm1/l;->a:Lm1/r;

    iput v2, p0, Lm1/l;->b:I

    invoke-interface {v1, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, v4, Lo3/i;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
