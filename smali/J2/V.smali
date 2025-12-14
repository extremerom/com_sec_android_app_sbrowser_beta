.class public final LJ2/V;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LJ2/U;

.field public final synthetic d:LNc/k;

.field public final synthetic e:LJ2/W;


# direct methods
.method public constructor <init>(LJ2/U;LNc/k;LJ2/W;Lib/c;)V
    .locals 0

    iput-object p1, p0, LJ2/V;->c:LJ2/U;

    iput-object p2, p0, LJ2/V;->d:LNc/k;

    iput-object p3, p0, LJ2/V;->e:LJ2/W;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, LJ2/V;

    iget-object v1, p0, LJ2/V;->d:LNc/k;

    iget-object v2, p0, LJ2/V;->e:LJ2/W;

    iget-object p0, p0, LJ2/V;->c:LJ2/U;

    invoke-direct {v0, p0, v1, v2, p2}, LJ2/V;-><init>(LJ2/U;LNc/k;LJ2/W;Lib/c;)V

    iput-object p1, v0, LJ2/V;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LJ2/V;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LJ2/V;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LJ2/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LJ2/V;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, LJ2/V;->b:Ljava/lang/Object;

    check-cast p0, Lib/c;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LJ2/V;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    sget-object v1, Lib/d;->a:Lib/d;

    invoke-interface {p1, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p1, Lib/e;

    new-instance v1, LJ2/j0;

    invoke-direct {v1, p1}, LJ2/j0;-><init>(Lib/e;)V

    iget-object v3, p0, LJ2/V;->c:LJ2/U;

    invoke-virtual {v3}, LJ2/U;->getSuspendingTransactionId()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, LUc/B;

    invoke-direct {v5, v4, v3}, LUc/B;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    check-cast p1, Lib/a;

    invoke-virtual {p1, v1}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p1

    invoke-interface {p1, v5}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p1

    iget-object v1, p0, LJ2/V;->d:LNc/k;

    iput-object v1, p0, LJ2/V;->b:Ljava/lang/Object;

    iput v2, p0, LJ2/V;->a:I

    iget-object v2, p0, LJ2/V;->e:LJ2/W;

    invoke-static {p1, v2, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    :goto_0
    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
