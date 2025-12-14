.class public final LS/d;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LS/e;


# direct methods
.method public constructor <init>(LS/e;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/d;->c:LS/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LS/d;

    iget-object p0, p0, LS/d;->c:LS/e;

    invoke-direct {v0, p0, p2}, LS/d;-><init>(LS/e;Lib/c;)V

    iput-object p1, v0, LS/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/d;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/d;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/d;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, LS/d;->c:LS/e;

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v5, p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LS/d;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    invoke-static {p1}, LNc/E;->q(Lib/h;)LNc/j0;

    move-result-object p1

    :try_start_1
    iput-boolean v2, v4, LS/e;->k:Z

    iget-object v1, v4, LS/e;->c:LV/J;

    new-instance v6, LS/c;

    invoke-direct {v6, v4, p1, v5}, LS/c;-><init>(LS/e;LNc/j0;Lib/c;)V

    iput v2, p0, LS/d;->a:I

    sget-object p1, LR/s;->Default:LR/s;

    invoke-virtual {v1, p1, v6, p0}, LV/J;->a(LR/s;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, v4, LS/e;->e:Lo3/f;

    invoke-virtual {p0}, Lo3/f;->o()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v3, v4, LS/e;->k:Z

    iget-object p0, v4, LS/e;->e:Lo3/f;

    invoke-virtual {p0, v5}, Lo3/f;->k(Ljava/util/concurrent/CancellationException;)V

    iput-boolean v3, v4, LS/e;->i:Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_1
    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iput-boolean v3, v4, LS/e;->k:Z

    iget-object p1, v4, LS/e;->e:Lo3/f;

    invoke-virtual {p1, v5}, Lo3/f;->k(Ljava/util/concurrent/CancellationException;)V

    iput-boolean v3, v4, LS/e;->i:Z

    throw p0
.end method
