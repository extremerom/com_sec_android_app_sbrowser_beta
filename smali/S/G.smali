.class public final LS/G;
.super Lkb/h;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lib/h;

.field public final synthetic e:LR/b;


# direct methods
.method public constructor <init>(Lib/h;LR/b;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/G;->d:Lib/h;

    iput-object p2, p0, LS/G;->e:LR/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/h;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LS/G;

    iget-object v1, p0, LS/G;->e:LR/b;

    iget-object p0, p0, LS/G;->d:Lib/h;

    invoke-direct {v0, p0, v1, p2}, LS/G;-><init>(Lib/h;LR/b;Lib/c;)V

    iput-object p1, v0, LS/G;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx0/j;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/G;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/G;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/G;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/G;->b:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, LS/G;->d:Lib/h;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, LS/G;->c:Ljava/lang/Object;

    check-cast v1, Lx0/j;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, LS/G;->c:Ljava/lang/Object;

    check-cast v1, Lx0/j;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    move-object p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    iget-object v1, p0, LS/G;->c:Ljava/lang/Object;

    check-cast v1, Lx0/j;

    :try_start_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LS/G;->c:Ljava/lang/Object;

    check-cast p1, Lx0/j;

    :goto_1
    invoke-static {v3}, LNc/E;->v(Lib/h;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_2
    iget-object v1, p0, LS/G;->e:LR/b;

    iput-object p1, p0, LS/G;->c:Ljava/lang/Object;

    iput v6, p0, LS/G;->b:I

    invoke-virtual {v1, p1, p0}, LR/b;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p1

    :goto_2
    :try_start_3
    iput-object v1, p0, LS/G;->c:Ljava/lang/Object;

    iput v5, p0, LS/G;->b:I

    invoke-static {v1, p0}, LG5/g2;->a(Lx0/j;Lkb/a;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v2, v0, :cond_2

    return-object v0

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_3
    invoke-static {v3}, LNc/E;->v(Lib/h;)Z

    move-result v7

    if-eqz v7, :cond_6

    iput-object v1, p0, LS/G;->c:Ljava/lang/Object;

    iput v4, p0, LS/G;->b:I

    invoke-static {v1, p0}, LG5/g2;->a(Lx0/j;Lkb/a;)Ljava/lang/Object;

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_6
    throw p1

    :cond_7
    return-object v2
.end method
