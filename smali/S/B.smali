.class public final LS/B;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lx0/k;

.field public final synthetic d:La0/a0;

.field public final synthetic e:La0/a0;

.field public final synthetic f:LS/I;

.field public final synthetic g:LPc/m;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lx0/k;La0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V
    .locals 0

    iput-object p1, p0, LS/B;->c:Lx0/k;

    iput-object p2, p0, LS/B;->d:La0/a0;

    iput-object p3, p0, LS/B;->e:La0/a0;

    iput-object p4, p0, LS/B;->f:LS/I;

    iput-object p5, p0, LS/B;->g:LPc/m;

    iput-boolean p6, p0, LS/B;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 9

    new-instance v8, LS/B;

    iget-object v2, p0, LS/B;->d:La0/a0;

    iget-object v3, p0, LS/B;->e:La0/a0;

    iget-object v4, p0, LS/B;->f:LS/I;

    iget-object v1, p0, LS/B;->c:Lx0/k;

    iget-object v5, p0, LS/B;->g:LPc/m;

    iget-boolean v6, p0, LS/B;->h:Z

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, LS/B;-><init>(Lx0/k;La0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V

    iput-object p1, v8, LS/B;->b:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/B;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/B;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/B;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/B;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, LS/B;->b:Ljava/lang/Object;

    check-cast p0, LNc/B;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LS/B;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    :try_start_1
    iget-object v1, p0, LS/B;->c:Lx0/k;

    new-instance v11, LS/A;

    iget-object v5, p0, LS/B;->d:La0/a0;

    iget-object v6, p0, LS/B;->e:La0/a0;

    iget-object v7, p0, LS/B;->f:LS/I;

    iget-object v8, p0, LS/B;->g:LPc/m;

    iget-boolean v9, p0, LS/B;->h:Z

    const/4 v10, 0x0

    move-object v3, v11

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, LS/A;-><init>(LNc/B;La0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V

    iput-object p1, p0, LS/B;->b:Ljava/lang/Object;

    iput v2, p0, LS/B;->a:I

    invoke-virtual {v1, v11, p0}, Lx0/k;->y(Lsb/n;Lkb/i;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v0, :cond_2

    return-object v0

    :goto_0
    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    invoke-static {p0}, LNc/E;->u(LNc/B;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_3
    throw p1
.end method
