.class public final LI1/l;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/e;

.field public final synthetic d:Lz1/V;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lib/c;Lz1/e;Lz1/V;)V
    .locals 0

    iput-object p4, p0, LI1/l;->c:Lz1/e;

    iput-object p5, p0, LI1/l;->d:Lz1/V;

    iput-object p2, p0, LI1/l;->e:Landroid/os/Bundle;

    iput-object p1, p0, LI1/l;->f:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method

.method public static final f(La0/u;Lc2/j;LNc/C0;La0/p0;LNc/B;Lz1/e;Lkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p6, LI1/j;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, LI1/j;

    iget v1, v0, LI1/j;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LI1/j;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LI1/j;

    invoke-direct {v0, p6}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p6, v0, LI1/j;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LI1/j;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p5, v0, LI1/j;->b:Lz1/e;

    iget-object p4, v0, LI1/j;->a:LNc/B;

    invoke-static {p6}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p6}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, La0/u;->a()V

    invoke-virtual {p1}, Lc2/j;->g()V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    iget-object p1, p3, La0/p0;->t:LNc/m0;

    sget-object p2, Ldb/r;->a:Ldb/r;

    invoke-virtual {p1, p2}, LNc/t0;->V(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p3, La0/p0;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-boolean v3, p3, La0/p0;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_3
    :goto_1
    iput-object p4, v0, LI1/j;->a:LNc/B;

    iput-object p5, v0, LI1/j;->b:Lz1/e;

    iput v3, v0, LI1/j;->d:I

    iget-object p1, p3, La0/p0;->s:LQc/A0;

    new-instance p3, La0/k0;

    const/4 p6, 0x2

    invoke-direct {p3, p6, p0}, Lkb/i;-><init>(ILib/c;)V

    invoke-static {p1, p3, v0}, LQc/n0;->o(LQc/h;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    move-object p2, p0

    :cond_4
    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {p4}, LNc/B;->v()Lib/h;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Clear "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " resource"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, LNc/E;->i(Lib/h;Ljava/util/concurrent/CancellationException;)V

    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, LI1/l;

    iget-object v2, p0, LI1/l;->e:Landroid/os/Bundle;

    iget-object v1, p0, LI1/l;->f:Landroid/content/Context;

    iget-object v4, p0, LI1/l;->c:Lz1/e;

    iget-object v5, p0, LI1/l;->d:Lz1/V;

    move-object v0, v6

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, LI1/l;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lib/c;Lz1/e;Lz1/V;)V

    iput-object p1, v6, LI1/l;->b:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LI1/l;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LI1/l;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LI1/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LI1/l;->a:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, LI1/l;->b:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, LNc/B;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Update AppWidget-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v0, LI1/l;->c:Lz1/e;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for one time"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "msg"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Le7/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GWT:OneTimeUpdate"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lc2/j;

    invoke-direct {v5, v13}, Lc2/j;-><init>(LNc/B;)V

    new-instance v2, LI1/k;

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Lkb/i;-><init>(ILib/c;)V

    const/4 v4, 0x3

    invoke-static {v13, v6, v6, v2, v4}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object v12

    new-instance v8, Lz1/p;

    iget-object v2, v0, LI1/l;->e:Landroid/os/Bundle;

    iget-object v4, v0, LI1/l;->d:Lz1/V;

    const/16 v6, 0xf8

    invoke-direct {v8, v4, v14, v2, v6}, Lz1/p;-><init>(Lz1/V;Lz1/e;Landroid/os/Bundle;I)V

    new-instance v11, Lz1/Q0;

    const/16 v2, 0x32

    invoke-direct {v11, v2}, Lz1/Q0;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v6

    new-instance v10, La0/p0;

    invoke-interface {v13}, LNc/B;->v()Lib/h;

    move-result-object v2

    invoke-direct {v10, v2}, La0/p0;-><init>(Lib/h;)V

    new-instance v2, Lx1/b;

    invoke-direct {v2, v11}, Lx1/b;-><init>(Lx1/n;)V

    new-instance v7, La0/u;

    invoke-direct {v7, v10, v2}, La0/u;-><init>(La0/s;LJ2/i0;)V

    new-instance v2, LI1/i;

    const/4 v15, 0x0

    iget-object v9, v0, LI1/l;->f:Landroid/content/Context;

    move-object v4, v2

    invoke-direct/range {v4 .. v15}, LI1/i;-><init>(Lc2/j;LQc/A0;La0/u;Lz1/p;Landroid/content/Context;La0/p0;Lz1/Q0;LNc/C0;LNc/B;Lz1/e;Lib/c;)V

    iput v3, v0, LI1/l;->a:I

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4, v2, v0}, LNc/E;->L(JLsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
