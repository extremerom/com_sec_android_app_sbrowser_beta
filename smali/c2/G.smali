.class public final Lc2/G;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:I

.field public final synthetic c:La0/u;

.field public final synthetic d:Lc2/m;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:La0/p0;

.field public final synthetic g:Lc2/U;


# direct methods
.method public constructor <init>(La0/u;Lc2/m;Landroid/content/Context;La0/p0;Lc2/U;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/G;->c:La0/u;

    iput-object p2, p0, Lc2/G;->d:Lc2/m;

    iput-object p3, p0, Lc2/G;->e:Landroid/content/Context;

    iput-object p4, p0, Lc2/G;->f:La0/p0;

    iput-object p5, p0, Lc2/G;->g:Lc2/U;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance p1, Lc2/G;

    iget-object v4, p0, Lc2/G;->f:La0/p0;

    iget-object v1, p0, Lc2/G;->c:La0/u;

    iget-object v2, p0, Lc2/G;->d:Lc2/m;

    iget-object v3, p0, Lc2/G;->e:Landroid/content/Context;

    iget-object v5, p0, Lc2/G;->g:Lc2/U;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lc2/G;-><init>(La0/u;Lc2/m;Landroid/content/Context;La0/p0;Lc2/U;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/G;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/G;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/G;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/G;->b:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, Lc2/G;->e:Landroid/content/Context;

    iget-object v4, p0, Lc2/G;->d:Lc2/m;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v0, p0, Lc2/G;->a:Ljava/lang/Throwable;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lc2/G;->c:La0/u;

    invoke-virtual {v4, v3}, Lc2/m;->g(Landroid/content/Context;)Li0/a;

    move-result-object v1

    invoke-virtual {p1, v1}, La0/u;->k(Lsb/n;)V

    iget-object p1, p0, Lc2/G;->f:La0/p0;

    iput v6, p0, Lc2/G;->b:I

    invoke-virtual {p1, p0}, La0/p0;->C(Lkb/i;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v0, :cond_4

    return-object v0

    :goto_0
    iput-object p1, p0, Lc2/G;->a:Ljava/lang/Throwable;

    iput v5, p0, Lc2/G;->b:I

    invoke-virtual {v4, v3, p1}, Lc2/m;->d(Landroid/content/Context;Ljava/lang/Throwable;)V

    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    :goto_1
    const-string p1, "Error in recomposition coroutine"

    invoke-static {p1, v0}, LNc/E;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object p0, p0, Lc2/G;->g:Lc2/U;

    invoke-static {p0, p1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    :catch_0
    :cond_4
    :goto_2
    return-object v2
.end method
