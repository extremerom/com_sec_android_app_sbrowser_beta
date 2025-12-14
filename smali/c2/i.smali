.class public final Lc2/i;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Lc2/j;


# direct methods
.method public constructor <init>(Lc2/j;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/i;->b:Lc2/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0

    new-instance p1, Lc2/i;

    iget-object p0, p0, Lc2/i;->b:Lc2/j;

    invoke-direct {p1, p0, p2}, Lc2/i;-><init>(Lc2/j;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/i;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/i;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/i;->a:I

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

    iget-object p1, p0, Lc2/i;->b:Lc2/j;

    invoke-virtual {p1}, Lc2/j;->g()V

    iget-object p1, p0, Lc2/i;->b:Lc2/j;

    iput v2, p0, Lc2/i;->a:I

    new-instance v1, LNc/k;

    invoke-static {p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p0

    invoke-direct {v1, v2, p0}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v1}, LNc/k;->q()V

    const-string p0, "GWT:InteractiveFrameClock"

    iget v2, p1, Lc2/j;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting interactive mode at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "hz"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    const-string v4, " "

    invoke-static {v3, v4, v2, p0}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lc2/j;->g:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget v2, p1, Lc2/j;->c:I

    iput v2, p1, Lc2/j;->h:I

    iput-object v1, p1, Lc2/j;->j:LNc/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance p0, LB0/a;

    const/16 v2, 0x13

    invoke-direct {p0, v2, p1}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, LNc/k;->t(Lsb/k;)V

    invoke-virtual {v1}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
