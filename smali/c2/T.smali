.class public final Lc2/T;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Lc2/U;

.field public final synthetic c:LA9/b;

.field public final synthetic d:LNc/B;

.field public final synthetic e:Lc2/D;


# direct methods
.method public constructor <init>(Lc2/U;LA9/b;LNc/B;Lc2/D;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/T;->b:Lc2/U;

    iput-object p2, p0, Lc2/T;->c:LA9/b;

    iput-object p3, p0, Lc2/T;->d:LNc/B;

    iput-object p4, p0, Lc2/T;->e:Lc2/D;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, Lc2/T;

    iget-object v1, p0, Lc2/T;->b:Lc2/U;

    iget-object v2, p0, Lc2/T;->c:LA9/b;

    iget-object v3, p0, Lc2/T;->d:LNc/B;

    iget-object v4, p0, Lc2/T;->e:Lc2/D;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc2/T;-><init>(Lc2/U;LA9/b;LNc/B;Lc2/D;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/T;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/T;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/T;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/T;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lc2/T;->b:Lc2/U;

    iget-object v1, p1, Lc2/U;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lc2/T;->c:LA9/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    sget-object v3, Ldb/r;->a:Ldb/r;

    if-lez v1, :cond_4

    invoke-virtual {p1}, Lc2/U;->a()J

    move-result-wide v4

    iput v2, p0, Lc2/T;->a:I

    invoke-static {v4, v5}, LNc/E;->H(J)J

    move-result-wide v4

    invoke-static {v4, v5, p0}, LNc/E;->k(JLkb/i;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p1, v1, :cond_3

    move-object v3, p1

    :cond_3
    if-ne v3, v0, :cond_2

    return-object v0

    :cond_4
    new-instance p1, Lc2/P;

    iget-object v0, p0, Lc2/T;->e:Lc2/D;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "Timed out of executing block."

    invoke-direct {p1, v1, v0}, Lc2/P;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lc2/T;->d:LNc/B;

    invoke-static {p0, p1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    return-object v3
.end method
