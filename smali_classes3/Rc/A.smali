.class public final LRc/A;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LNc/m0;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LQc/h;

.field public final synthetic e:LQc/h;

.field public final synthetic f:LQc/i;

.field public final synthetic g:Lsb/o;


# direct methods
.method public constructor <init>(LQc/h;LQc/h;LQc/i;Lsb/o;Lib/c;)V
    .locals 0

    iput-object p1, p0, LRc/A;->d:LQc/h;

    iput-object p2, p0, LRc/A;->e:LQc/h;

    iput-object p3, p0, LRc/A;->f:LQc/i;

    iput-object p4, p0, LRc/A;->g:Lsb/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, LRc/A;

    iget-object v3, p0, LRc/A;->f:LQc/i;

    iget-object v4, p0, LRc/A;->g:Lsb/o;

    iget-object v1, p0, LRc/A;->d:LQc/h;

    iget-object v2, p0, LRc/A;->e:LQc/h;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LRc/A;-><init>(LQc/h;LQc/h;LQc/i;Lsb/o;Lib/c;)V

    iput-object p1, v6, LRc/A;->c:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LRc/A;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LRc/A;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LRc/A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LRc/A;->b:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v1, v0, LRc/A;->a:LNc/m0;

    iget-object v0, v0, LRc/A;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LPc/A;

    :try_start_0
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LRc/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, LRc/A;->c:Ljava/lang/Object;

    check-cast v2, LNc/B;

    new-instance v6, LRc/z;

    iget-object v7, v0, LRc/A;->d:LQc/h;

    invoke-direct {v6, v7, v4}, LRc/z;-><init>(LQc/h;Lib/c;)V

    sget-object v7, Lib/i;->a:Lib/i;

    sget-object v8, LPc/a;->SUSPEND:LPc/a;

    sget-object v9, LNc/D;->DEFAULT:LNc/D;

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static {v11, v10, v8}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v8

    invoke-static {v2, v7}, LNc/E;->z(LNc/B;Lib/h;)Lib/h;

    move-result-object v7

    new-instance v15, LPc/x;

    invoke-direct {v15, v7, v8}, LPc/x;-><init>(Lib/h;LPc/i;)V

    invoke-virtual {v15, v9, v15, v6}, LNc/a;->i0(LNc/D;LNc/a;Lsb/n;)V

    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object v6

    new-instance v7, LB0/a;

    const/16 v8, 0x8

    invoke-direct {v7, v8, v6}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v15, v7}, LPc/B;->p(Lsb/k;)V

    :try_start_1
    invoke-interface {v2}, LNc/B;->v()Lib/h;

    move-result-object v12

    invoke-static {v12}, LUc/a;->m(Lib/h;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v2}, LNc/B;->v()Lib/h;

    move-result-object v2

    invoke-interface {v2, v6}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v2

    new-instance v7, LRc/x;

    iget-object v11, v0, LRc/A;->e:LQc/h;

    iget-object v8, v0, LRc/A;->f:LQc/i;

    iget-object v9, v0, LRc/A;->g:Lsb/o;
    :try_end_1
    .catch LRc/a; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v18, 0x0

    move-object v10, v7

    move-object v14, v15

    move-object v4, v15

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v6

    :try_start_2
    invoke-direct/range {v10 .. v18}, LRc/x;-><init>(LQc/h;Lib/h;Ljava/lang/Object;LPc/x;LQc/i;Lsb/o;LNc/m0;Lib/c;)V

    iput-object v4, v0, LRc/A;->c:Ljava/lang/Object;

    iput-object v6, v0, LRc/A;->a:LNc/m0;

    iput v5, v0, LRc/A;->b:I

    invoke-static {v2}, LUc/a;->m(Lib/h;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3, v5, v7, v0}, LRc/c;->c(Lib/h;Ljava/lang/Object;Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch LRc/a; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    move-object v2, v4

    goto :goto_5

    :goto_0
    invoke-interface {v2, v1}, LPc/A;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_6

    :goto_1
    move-object v2, v4

    :goto_2
    const/4 v1, 0x0

    goto :goto_7

    :goto_3
    move-object v2, v4

    move-object v1, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v15

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v15

    goto :goto_3

    :goto_4
    :try_start_3
    iget-object v4, v0, LRc/a;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-ne v4, v1, :cond_3

    :goto_5
    const/4 v1, 0x0

    goto :goto_0

    :goto_6
    return-object v3

    :cond_3
    const/4 v1, 0x0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_2

    :goto_7
    invoke-interface {v2, v1}, LPc/A;->a(Ljava/util/concurrent/CancellationException;)V

    throw v0
.end method
