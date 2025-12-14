.class public final Lv2/C0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lv2/g1;

.field public final c:Lv2/L0;

.field public final d:LQc/k;

.field public final e:LJ2/T;

.field public final f:LX4/i;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:LPc/i;

.field public final i:Lv2/D0;

.field public final j:LNc/m0;

.field public final k:LQc/y;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lv2/g1;Lv2/L0;LQc/k;Lv2/h1;LJ2/T;)V
    .locals 0

    const-string p5, "pagingSource"

    invoke-static {p2, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "retryFlow"

    invoke-static {p4, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/C0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lv2/C0;->b:Lv2/g1;

    iput-object p3, p0, Lv2/C0;->c:Lv2/L0;

    iput-object p4, p0, Lv2/C0;->d:LQc/k;

    iput-object p6, p0, Lv2/C0;->e:LJ2/T;

    iget p1, p3, Lv2/L0;->d:I

    const/high16 p4, -0x80000000

    if-eq p1, p4, :cond_1

    invoke-virtual {p2}, Lv2/g1;->getJumpingSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PagingConfig.jumpThreshold was set, but the associated PagingSource has not marked support for jumps by overriding PagingSource.jumpingSupported to true."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p1, LX4/i;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, LX4/i;-><init>(I)V

    iput-object p1, p0, Lv2/C0;->f:LX4/i;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lv2/C0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, -0x2

    const/4 p2, 0x6

    const/4 p4, 0x0

    invoke-static {p1, p2, p4}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object p1

    iput-object p1, p0, Lv2/C0;->h:LPc/i;

    new-instance p1, Lv2/D0;

    invoke-direct {p1, p3}, Lv2/D0;-><init>(Lv2/L0;)V

    iput-object p1, p0, Lv2/C0;->i:Lv2/D0;

    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object p1

    iput-object p1, p0, Lv2/C0;->j:LNc/m0;

    new-instance p2, Lv2/w0;

    invoke-direct {p2, p0, p4}, Lv2/w0;-><init>(Lv2/C0;Lib/c;)V

    new-instance p3, Lv2/r;

    invoke-direct {p3, p1, p2, p4}, Lv2/r;-><init>(LNc/m0;Lsb/n;Lib/c;)V

    invoke-static {p3}, Lv2/F;->c(Lsb/n;)LQc/h;

    move-result-object p1

    new-instance p2, Lv2/x0;

    invoke-direct {p2, p0, p4}, Lv2/x0;-><init>(Lv2/C0;Lib/c;)V

    new-instance p3, LQc/y;

    invoke-direct {p3, p2, p1}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    iput-object p3, p0, Lv2/C0;->k:LQc/y;

    return-void
.end method

.method public static final a(Lv2/C0;LQc/y;Lv2/P;Lkb/i;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lv2/j0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Lv2/j0;-><init>(Lib/c;Lv2/C0;Lv2/P;)V

    new-instance v2, Lv2/E;

    invoke-direct {v2, p1, v0, v1}, Lv2/E;-><init>(LQc/h;Lsb/o;Lib/c;)V

    invoke-static {v2}, Lv2/F;->c(Lsb/n;)LQc/h;

    move-result-object p1

    new-instance v0, Lv2/k0;

    invoke-direct {v0, p2, v1}, Lv2/k0;-><init>(Lv2/P;Lib/c;)V

    const-string v2, "<this>"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lv2/A;

    invoke-direct {v2, p1, v0, v1}, Lv2/A;-><init>(LQc/h;Lsb/o;Lib/c;)V

    new-instance p1, LQc/k;

    invoke-direct {p1, v2}, LQc/k;-><init>(Lsb/n;)V

    const/4 v0, -0x1

    invoke-static {p1, v0}, LQc/n0;->f(LQc/h;I)LQc/h;

    move-result-object p1

    new-instance v0, LJ2/u;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p2}, LJ2/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0, p3}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0
.end method

.method public static final b(Lv2/C0;Lv2/P;Lv2/G;Lib/c;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lv2/o0;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lv2/o0;

    iget v4, v3, Lv2/o0;->n:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lv2/o0;->n:I

    goto :goto_0

    :cond_0
    new-instance v3, Lv2/o0;

    invoke-direct {v3, v0, v2}, Lv2/o0;-><init>(Lv2/C0;Lib/c;)V

    :goto_0
    iget-object v2, v3, Lv2/o0;->l:Ljava/lang/Object;

    sget-object v4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, v3, Lv2/o0;->n:I

    sget-object v6, Ldb/r;->a:Ldb/r;

    const-string v8, "Use doInitialLoad for LoadType == REFRESH"

    const-string v9, "message"

    const-string v12, "Paging"

    const/4 v14, 0x0

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v3, Lv2/o0;->h:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LYc/a;

    iget-object v0, v3, Lv2/o0;->g:Ljava/lang/Object;

    check-cast v0, Lv2/D0;

    iget-object v5, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v5, Ltb/s;

    iget-object v15, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v15, Ltb/w;

    iget-object v10, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v10, Ltb/u;

    iget-object v11, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v11, Lv2/G;

    iget-object v13, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v13, Lv2/P;

    iget-object v7, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v7, Lv2/C0;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, v0, Lv2/D0;->b:Lv2/H0;

    iget-object v2, v7, Lv2/C0;->f:LX4/i;

    iget-object v2, v2, LX4/i;->b:Ljava/lang/Object;

    check-cast v2, Lo3/n;

    iget-object v2, v2, Lo3/n;->c:Ljava/lang/Object;

    check-cast v2, Lv2/z1;

    invoke-virtual {v0, v2}, Lv2/H0;->a(Lv2/z1;)Lv2/h1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v14}, LYc/a;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v6

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    invoke-interface {v1, v14}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    iget-object v0, v3, Lv2/o0;->i:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LYc/a;

    iget-object v0, v3, Lv2/o0;->h:Ljava/lang/Object;

    check-cast v0, Lv2/f1;

    iget-object v5, v3, Lv2/o0;->g:Ljava/lang/Object;

    check-cast v5, Lv2/c1;

    iget-object v7, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v7, Ltb/s;

    iget-object v10, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v10, Ltb/w;

    iget-object v11, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v11, Ltb/u;

    iget-object v13, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v13, Lv2/G;

    iget-object v15, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v15, Lv2/P;

    iget-object v14, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v14, Lv2/C0;

    :try_start_1
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move-object v2, v10

    move-object/from16 v19, v12

    const/4 v10, 0x0

    goto/16 :goto_27

    :catchall_1
    move-exception v0

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_28

    :pswitch_2
    iget-object v0, v3, Lv2/o0;->j:Ljava/lang/Object;

    check-cast v0, Lv2/H0;

    iget-object v1, v3, Lv2/o0;->i:Ljava/lang/Object;

    check-cast v1, LYc/a;

    iget-object v5, v3, Lv2/o0;->h:Ljava/lang/Object;

    check-cast v5, Lv2/f1;

    iget-object v7, v3, Lv2/o0;->g:Ljava/lang/Object;

    check-cast v7, Lv2/c1;

    iget-object v10, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v10, Ltb/s;

    iget-object v11, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v11, Ltb/w;

    iget-object v13, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v13, Ltb/u;

    iget-object v14, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v14, Lv2/G;

    iget-object v15, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v15, Lv2/P;

    move-object/from16 p0, v0

    iget-object v0, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v0, Lv2/C0;

    :try_start_2
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move-object v6, v1

    move-object/from16 v1, p0

    goto/16 :goto_24

    :pswitch_3
    iget-object v0, v3, Lv2/o0;->k:LYc/d;

    iget-object v1, v3, Lv2/o0;->j:Ljava/lang/Object;

    check-cast v1, Lv2/D0;

    iget-object v5, v3, Lv2/o0;->i:Ljava/lang/Object;

    check-cast v5, Lv2/P;

    iget-object v7, v3, Lv2/o0;->h:Ljava/lang/Object;

    check-cast v7, Lv2/f1;

    iget-object v10, v3, Lv2/o0;->g:Ljava/lang/Object;

    check-cast v10, Lv2/c1;

    iget-object v11, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v11, Ltb/s;

    iget-object v13, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v13, Ltb/w;

    iget-object v14, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v14, Ltb/u;

    iget-object v15, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v15, Lv2/G;

    move-object/from16 p0, v0

    iget-object v0, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v0, Lv2/P;

    move-object/from16 p1, v0

    iget-object v0, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v0, Lv2/C0;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    move-object/from16 v17, v6

    move-object/from16 v6, p0

    goto/16 :goto_23

    :pswitch_4
    iget-object v0, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v0, Lv2/H0;

    iget-object v1, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v1, LYc/a;

    iget-object v4, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v4, Lv2/G;

    iget-object v3, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v3, Lv2/P;

    :try_start_3
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v6

    goto/16 :goto_1d

    :catchall_2
    move-exception v0

    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_20

    :pswitch_5
    iget-object v0, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v0, LYc/a;

    iget-object v1, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v1, Lv2/D0;

    iget-object v5, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v5, Lv2/f1;

    iget-object v7, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v7, Lv2/G;

    iget-object v8, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v8, Lv2/P;

    iget-object v9, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v9, Lv2/C0;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v3

    move-object/from16 v17, v6

    move-object v14, v7

    move-object v3, v8

    goto/16 :goto_1c

    :pswitch_6
    iget-object v0, v3, Lv2/o0;->j:Ljava/lang/Object;

    check-cast v0, LYc/a;

    iget-object v1, v3, Lv2/o0;->i:Ljava/lang/Object;

    check-cast v1, Lv2/D0;

    iget-object v5, v3, Lv2/o0;->h:Ljava/lang/Object;

    check-cast v5, Lv2/f1;

    iget-object v7, v3, Lv2/o0;->g:Ljava/lang/Object;

    check-cast v7, Lv2/c1;

    iget-object v10, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v10, Ltb/s;

    iget-object v11, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v11, Ltb/w;

    iget-object v13, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v13, Ltb/u;

    iget-object v14, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v14, Lv2/G;

    iget-object v15, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v15, Lv2/P;

    move-object/from16 p0, v0

    iget-object v0, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v0, Lv2/C0;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    move-object/from16 v17, v6

    goto/16 :goto_16

    :pswitch_7
    iget-object v0, v3, Lv2/o0;->g:Ljava/lang/Object;

    check-cast v0, Lv2/c1;

    iget-object v1, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v1, Ltb/s;

    iget-object v5, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v5, Ltb/w;

    iget-object v7, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v7, Ltb/u;

    iget-object v10, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v10, Lv2/G;

    iget-object v11, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v11, Lv2/P;

    iget-object v13, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v13, Lv2/C0;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v17, v6

    move-object v14, v10

    move-object v15, v11

    move-object v10, v1

    move-object v11, v5

    move-object/from16 v20, v7

    move-object v7, v0

    move-object/from16 v0, v20

    goto/16 :goto_12

    :pswitch_8
    iget-object v0, v3, Lv2/o0;->h:Ljava/lang/Object;

    check-cast v0, Ltb/w;

    iget-object v1, v3, Lv2/o0;->g:Ljava/lang/Object;

    iget-object v5, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v5, LYc/a;

    iget-object v7, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v7, Ltb/w;

    iget-object v10, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v10, Ltb/u;

    iget-object v11, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v11, Lv2/G;

    iget-object v13, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v13, Lv2/P;

    iget-object v14, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v14, Lv2/C0;

    :try_start_4
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v17, v6

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_2a

    :pswitch_9
    iget-object v0, v3, Lv2/o0;->h:Ljava/lang/Object;

    check-cast v0, Ltb/w;

    iget-object v1, v3, Lv2/o0;->g:Ljava/lang/Object;

    check-cast v1, LYc/a;

    iget-object v5, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v5, Lv2/D0;

    iget-object v7, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v7, Ltb/w;

    iget-object v10, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v10, Ltb/u;

    iget-object v11, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v11, Lv2/G;

    iget-object v13, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v13, Lv2/P;

    iget-object v14, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v14, Lv2/C0;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_a
    iget-object v0, v3, Lv2/o0;->f:Ljava/lang/Object;

    check-cast v0, LYc/a;

    iget-object v1, v3, Lv2/o0;->e:Ljava/lang/Object;

    check-cast v1, Lv2/D0;

    iget-object v5, v3, Lv2/o0;->d:Ljava/lang/Object;

    check-cast v5, Ltb/u;

    iget-object v7, v3, Lv2/o0;->c:Ljava/lang/Object;

    check-cast v7, Lv2/G;

    iget-object v10, v3, Lv2/o0;->b:Ljava/lang/Object;

    check-cast v10, Lv2/P;

    iget-object v11, v3, Lv2/o0;->a:Ljava/lang/Object;

    check-cast v11, Lv2/C0;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v11

    move-object/from16 v20, v5

    move-object v5, v1

    move-object v1, v10

    :goto_4
    move-object/from16 v10, v20

    goto :goto_5

    :pswitch_b
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object v2, Lv2/P;->REFRESH:Lv2/P;

    if-eq v1, v2, :cond_29

    new-instance v5, Ltb/u;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Lv2/C0;->i:Lv2/D0;

    iget-object v7, v2, Lv2/D0;->a:LYc/d;

    iput-object v0, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v1, v3, Lv2/o0;->b:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v5, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v2, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v7, v3, Lv2/o0;->f:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, v3, Lv2/o0;->n:I

    invoke-virtual {v7, v3}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_1

    goto/16 :goto_29

    :cond_1
    move-object/from16 v20, v5

    move-object v5, v2

    move-object v2, v7

    move-object v7, v10

    goto :goto_4

    :goto_5
    :try_start_5
    iget-object v5, v5, Lv2/D0;->b:Lv2/H0;

    sget-object v11, Lv2/i0;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v11, v11, v13

    const/4 v13, 0x1

    if-eq v11, v13, :cond_28

    const/16 v13, 0xc

    const/4 v14, 0x2

    if-eq v11, v14, :cond_5

    const/4 v14, 0x3

    if-eq v11, v14, :cond_3

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_3
    iget v11, v5, Lv2/H0;->d:I

    iget-object v14, v7, Lv2/G;->b:Lv2/C1;

    iget v14, v14, Lv2/C1;->d:I

    add-int/2addr v11, v14

    const/4 v14, 0x1

    add-int/2addr v11, v14

    if-gez v11, :cond_4

    iget v14, v10, Ltb/u;->a:I

    iget-object v15, v0, Lv2/C0;->c:Lv2/L0;

    neg-int v11, v11

    mul-int/2addr v13, v11

    add-int/2addr v13, v14

    iput v13, v10, Ltb/u;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v11, 0x0

    goto :goto_6

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_2b

    :cond_4
    :goto_6
    iget-object v5, v5, Lv2/H0;->c:Ljava/util/ArrayList;

    :try_start_6
    invoke-static {v5}, Lfb/o;->f(Ljava/util/List;)I

    move-result v13

    if-gt v11, v13, :cond_2

    :goto_7
    iget v14, v10, Ltb/u;->a:I

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lv2/e1;

    iget-object v15, v15, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v10, Ltb/u;->a:I

    if-eq v11, v13, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_5
    iget v11, v5, Lv2/H0;->d:I

    iget-object v14, v7, Lv2/G;->b:Lv2/C1;

    iget v14, v14, Lv2/C1;->c:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    add-int/2addr v11, v14

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    iget-object v5, v5, Lv2/H0;->c:Ljava/util/ArrayList;

    :try_start_7
    invoke-static {v5}, Lfb/o;->f(Ljava/util/List;)I

    move-result v14

    if-le v11, v14, :cond_6

    iget v14, v10, Ltb/u;->a:I

    iget-object v15, v0, Lv2/C0;->c:Lv2/L0;

    invoke-static {v5}, Lfb/o;->f(Ljava/util/List;)I

    move-result v15

    sub-int/2addr v11, v15

    mul-int/2addr v11, v13

    add-int/2addr v11, v14

    iput v11, v10, Ltb/u;->a:I

    invoke-static {v5}, Lfb/o;->f(Ljava/util/List;)I

    move-result v11

    :cond_6
    if-ltz v11, :cond_2

    const/4 v13, 0x0

    :goto_8
    iget v14, v10, Ltb/u;->a:I

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lv2/e1;

    iget-object v15, v15, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v10, Ltb/u;->a:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eq v13, v11, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :goto_9
    invoke-interface {v2, v5}, LYc/a;->b(Ljava/lang/Object;)V

    new-instance v2, Ltb/w;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v5, v0, Lv2/C0;->i:Lv2/D0;

    iget-object v11, v5, Lv2/D0;->a:LYc/d;

    iput-object v0, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v1, v3, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v7, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v10, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v2, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v5, v3, Lv2/o0;->f:Ljava/lang/Object;

    iput-object v11, v3, Lv2/o0;->g:Ljava/lang/Object;

    iput-object v2, v3, Lv2/o0;->h:Ljava/lang/Object;

    const/4 v13, 0x2

    iput v13, v3, Lv2/o0;->n:I

    invoke-virtual {v11, v3}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_7

    goto/16 :goto_29

    :cond_7
    move-object v14, v0

    move-object v13, v1

    move-object v0, v2

    move-object v1, v11

    move-object v11, v7

    move-object v7, v0

    :goto_a
    :try_start_8
    iget-object v2, v5, Lv2/D0;->b:Lv2/H0;

    iget v5, v11, Lv2/G;->a:I

    iget-object v15, v11, Lv2/G;->b:Lv2/C1;

    invoke-virtual {v15, v13}, Lv2/C1;->a(Lv2/P;)I

    move-result v15

    move-object/from16 v17, v6

    iget v6, v10, Ltb/u;->a:I

    add-int/2addr v15, v6

    invoke-virtual {v14, v2, v13, v5, v15}, Lv2/C0;->i(Lv2/H0;Lv2/P;II)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    iput-object v14, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v13, v3, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v11, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v10, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v7, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v1, v3, Lv2/o0;->f:Ljava/lang/Object;

    iput-object v5, v3, Lv2/o0;->g:Ljava/lang/Object;

    iput-object v0, v3, Lv2/o0;->h:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v3, Lv2/o0;->n:I

    invoke-virtual {v14, v2, v13, v3}, Lv2/C0;->k(Lv2/H0;Lv2/P;Lkb/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-ne v2, v4, :cond_8

    goto/16 :goto_29

    :cond_8
    move-object/from16 v20, v5

    move-object v5, v1

    move-object/from16 v1, v20

    :goto_b
    move-object v2, v1

    move-object v1, v5

    move-object v15, v7

    move-object v7, v14

    :goto_c
    const/4 v5, 0x0

    goto :goto_e

    :goto_d
    move-object v5, v1

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    goto :goto_d

    :cond_9
    move-object v15, v7

    move-object v7, v14

    const/4 v2, 0x0

    goto :goto_c

    :goto_e
    invoke-interface {v1, v5}, LYc/a;->b(Ljava/lang/Object;)V

    iput-object v2, v0, Ltb/w;->a:Ljava/lang/Object;

    new-instance v5, Ltb/s;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    :goto_f
    iget-object v0, v15, Ltb/w;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    invoke-virtual {v7, v13, v0}, Lv2/C0;->g(Lv2/P;Ljava/lang/Object;)Lv2/c1;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    invoke-static {v12, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_10

    :cond_a
    const/4 v1, 0x0

    :goto_10
    iget-object v2, v7, Lv2/C0;->b:Lv2/g1;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Start "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with loadKey "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Ltb/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v12, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :cond_b
    const/4 v6, 0x0

    :goto_11
    iput-object v7, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v13, v3, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v11, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v10, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v15, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v5, v3, Lv2/o0;->f:Ljava/lang/Object;

    iput-object v0, v3, Lv2/o0;->g:Ljava/lang/Object;

    iput-object v6, v3, Lv2/o0;->h:Ljava/lang/Object;

    iput-object v6, v3, Lv2/o0;->i:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v3, Lv2/o0;->n:I

    invoke-virtual {v2, v0, v3}, Lv2/g1;->load(Lv2/c1;Lib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_c

    goto/16 :goto_29

    :cond_c
    move-object v14, v11

    move-object v11, v15

    move-object v15, v13

    move-object v13, v7

    move-object v7, v0

    move-object v0, v10

    move-object v10, v5

    :goto_12
    move-object v5, v2

    check-cast v5, Lv2/f1;

    instance-of v1, v5, Lv2/e1;

    if-eqz v1, :cond_19

    sget-object v1, Lv2/i0;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    move-object v1, v5

    check-cast v1, Lv2/e1;

    iget-object v1, v1, Lv2/e1;->c:Ljava/lang/Integer;

    goto :goto_13

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v1, v5

    check-cast v1, Lv2/e1;

    iget-object v1, v1, Lv2/e1;->b:Ljava/lang/Integer;

    :goto_13
    iget-object v2, v13, Lv2/C0;->b:Lv2/g1;

    invoke-virtual {v2}, Lv2/g1;->getKeyReuseSupported()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v11, Ltb/w;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_15

    :cond_f
    sget-object v0, Lv2/P;->PREPEND:Lv2/P;

    if-ne v15, v0, :cond_10

    const-string v0, "prevKey"

    goto :goto_14

    :cond_10
    const-string v0, "nextKey"

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The same value, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Ltb/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", was passed as the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in two\n                            | sequential Pages loaded from a PagingSource. Re-using load keys in\n                            | PagingSource is often an error, and must be explicitly enabled by\n                            | overriding PagingSource.keyReuseSupported.\n                            "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LKc/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_15
    iget-object v1, v13, Lv2/C0;->i:Lv2/D0;

    iget-object v2, v1, Lv2/D0;->a:LYc/d;

    iput-object v13, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v15, v3, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v14, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v0, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v11, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v10, v3, Lv2/o0;->f:Ljava/lang/Object;

    iput-object v7, v3, Lv2/o0;->g:Ljava/lang/Object;

    iput-object v5, v3, Lv2/o0;->h:Ljava/lang/Object;

    iput-object v1, v3, Lv2/o0;->i:Ljava/lang/Object;

    iput-object v2, v3, Lv2/o0;->j:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v3, Lv2/o0;->n:I

    invoke-virtual {v2, v3}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_12

    goto/16 :goto_29

    :cond_12
    move-object/from16 v20, v13

    move-object v13, v0

    move-object/from16 v0, v20

    :goto_16
    :try_start_9
    iget-object v1, v1, Lv2/D0;->b:Lv2/H0;

    iget v6, v14, Lv2/G;->a:I

    move-object/from16 p0, v3

    move-object v3, v5

    check-cast v3, Lv2/e1;

    invoke-virtual {v1, v6, v15, v3}, Lv2/H0;->e(ILv2/P;Lv2/e1;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const/4 v3, 0x0

    invoke-interface {v2, v3}, LYc/a;->b(Ljava/lang/Object;)V

    if-nez v1, :cond_13

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v1, :cond_1d

    const/4 v1, 0x2

    invoke-static {v12, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v11, Ltb/w;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v1, v3}, Lv2/C0;->h(Lv2/P;Ljava/lang/Object;Lv2/f1;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    :cond_13
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v1, :cond_14

    const/4 v1, 0x3

    invoke-static {v12, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v11, Ltb/w;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v2, v5}, Lv2/C0;->h(Lv2/P;Ljava/lang/Object;Lv2/f1;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_14
    const/4 v1, 0x3

    :cond_15
    :goto_17
    iget v2, v13, Ltb/u;->a:I

    move-object v3, v5

    check-cast v3, Lv2/e1;

    iget-object v6, v3, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v13, Ltb/u;->a:I

    sget-object v2, Lv2/P;->PREPEND:Lv2/P;

    if-ne v15, v2, :cond_17

    iget-object v2, v3, Lv2/e1;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_16

    goto :goto_19

    :cond_16
    :goto_18
    const/4 v6, 0x1

    goto :goto_1a

    :cond_17
    :goto_19
    sget-object v2, Lv2/P;->APPEND:Lv2/P;

    if-ne v15, v2, :cond_18

    iget-object v2, v3, Lv2/e1;->c:Ljava/lang/Integer;

    if-nez v2, :cond_18

    goto :goto_18

    :goto_1a
    iput-boolean v6, v10, Ltb/s;->a:Z

    goto :goto_1b

    :cond_18
    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v3, p0

    move-object/from16 v20, v13

    move-object v13, v0

    move-object/from16 v0, v20

    goto/16 :goto_21

    :catchall_6
    move-exception v0

    const/4 v1, 0x0

    invoke-interface {v2, v1}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_19
    const/4 v1, 0x3

    const/4 v6, 0x1

    instance-of v2, v5, Lv2/d1;

    if-eqz v2, :cond_1e

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v11, Ltb/w;->a:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v0, v5}, Lv2/C0;->h(Lv2/P;Ljava/lang/Object;Lv2/f1;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    iget-object v1, v13, Lv2/C0;->i:Lv2/D0;

    iget-object v0, v1, Lv2/D0;->a:LYc/d;

    iput-object v13, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v15, v3, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v14, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v5, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v1, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v0, v3, Lv2/o0;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v3, Lv2/o0;->g:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v3, Lv2/o0;->n:I

    invoke-virtual {v0, v3}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1b

    goto/16 :goto_29

    :cond_1b
    move-object v2, v0

    move-object v0, v3

    move-object v9, v13

    move-object v3, v15

    :goto_1c
    :try_start_a
    iget-object v1, v1, Lv2/D0;->b:Lv2/H0;

    new-instance v6, Lv2/K;

    check-cast v5, Lv2/d1;

    iget-object v5, v5, Lv2/d1;->a:Ljava/lang/Throwable;

    invoke-direct {v6, v5}, Lv2/K;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, v0, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v14, v0, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v2, v0, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v1, v0, Lv2/o0;->d:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v5, v0, Lv2/o0;->f:Ljava/lang/Object;

    const/4 v5, 0x7

    iput v5, v0, Lv2/o0;->n:I

    invoke-virtual {v9, v1, v3, v6, v0}, Lv2/C0;->j(Lv2/H0;Lv2/P;Lv2/K;Lkb/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-ne v0, v4, :cond_1c

    goto/16 :goto_29

    :cond_1c
    move-object v0, v1

    move-object v1, v2

    move-object v4, v14

    :goto_1d
    :try_start_b
    iget-object v0, v0, Lv2/H0;->k:Ljava/util/LinkedHashMap;

    iget-object v2, v4, Lv2/G;->b:Lv2/C1;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, LYc/a;->b(Ljava/lang/Object;)V

    :cond_1d
    :goto_1e
    move-object/from16 v4, v17

    goto/16 :goto_29

    :goto_1f
    move-object v1, v2

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    goto :goto_1f

    :goto_20
    invoke-interface {v1, v2}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_1e
    :goto_21
    sget-object v2, Lv2/i0;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v2, v2, v16

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1f

    sget-object v2, Lv2/P;->APPEND:Lv2/P;

    goto :goto_22

    :cond_1f
    sget-object v2, Lv2/P;->PREPEND:Lv2/P;

    :goto_22
    iget-object v1, v13, Lv2/C0;->i:Lv2/D0;

    iget-object v6, v1, Lv2/D0;->a:LYc/d;

    iput-object v13, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v15, v3, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v14, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v0, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v11, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v10, v3, Lv2/o0;->f:Ljava/lang/Object;

    iput-object v7, v3, Lv2/o0;->g:Ljava/lang/Object;

    iput-object v5, v3, Lv2/o0;->h:Ljava/lang/Object;

    iput-object v2, v3, Lv2/o0;->i:Ljava/lang/Object;

    iput-object v1, v3, Lv2/o0;->j:Ljava/lang/Object;

    iput-object v6, v3, Lv2/o0;->k:LYc/d;

    move-object/from16 p0, v0

    const/16 v0, 0x8

    iput v0, v3, Lv2/o0;->n:I

    invoke-virtual {v6, v3}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_20

    goto/16 :goto_29

    :cond_20
    move-object v0, v13

    move-object v13, v11

    move-object v11, v10

    move-object v10, v7

    move-object v7, v5

    move-object v5, v2

    move-object v2, v15

    move-object v15, v14

    move-object/from16 v14, p0

    :goto_23
    :try_start_c
    iget-object v1, v1, Lv2/D0;->b:Lv2/H0;

    move-object/from16 v18, v9

    iget-object v9, v15, Lv2/G;->b:Lv2/C1;

    invoke-virtual {v1, v5, v9}, Lv2/H0;->c(Lv2/P;Lv2/C1;)Lv2/X;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-virtual {v1, v5}, Lv2/H0;->b(Lv2/X;)V

    iget-object v9, v0, Lv2/C0;->h:LPc/i;

    iput-object v0, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v2, v3, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v15, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v14, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v13, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v11, v3, Lv2/o0;->f:Ljava/lang/Object;

    iput-object v10, v3, Lv2/o0;->g:Ljava/lang/Object;

    iput-object v7, v3, Lv2/o0;->h:Ljava/lang/Object;

    iput-object v6, v3, Lv2/o0;->i:Ljava/lang/Object;

    iput-object v1, v3, Lv2/o0;->j:Ljava/lang/Object;

    move-object/from16 p0, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lv2/o0;->k:LYc/d;

    const/16 v1, 0x9

    iput v1, v3, Lv2/o0;->n:I

    invoke-interface {v9, v3, v5}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_21

    goto/16 :goto_29

    :cond_21
    move-object/from16 v1, p0

    move-object v5, v7

    move-object v7, v10

    move-object v10, v11

    move-object v11, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v2

    :goto_24
    move-object v2, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v11

    move-object v11, v10

    goto :goto_25

    :catchall_8
    move-exception v0

    move-object v1, v6

    goto/16 :goto_1

    :cond_22
    move-object/from16 p0, v1

    move-object v5, v7

    move-object v7, v10

    :goto_25
    iget v9, v15, Lv2/G;->a:I

    iget-object v10, v15, Lv2/G;->b:Lv2/C1;

    invoke-virtual {v10, v2}, Lv2/C1;->a(Lv2/P;)I

    move-result v10

    move-object/from16 v19, v12

    iget v12, v14, Ltb/u;->a:I

    add-int/2addr v10, v12

    invoke-virtual {v0, v1, v2, v9, v10}, Lv2/C0;->i(Lv2/H0;Lv2/P;II)Ljava/lang/Object;

    move-result-object v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    iget-object v10, v1, Lv2/H0;->l:LZ3/x;

    :try_start_d
    iput-object v9, v13, Ltb/w;->a:Ljava/lang/Object;

    if-nez v9, :cond_24

    invoke-virtual {v10, v2}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object v9

    instance-of v9, v9, Lv2/K;

    if-nez v9, :cond_24

    iget-boolean v9, v11, Ltb/s;->a:Z

    if-eqz v9, :cond_23

    sget-object v9, Lv2/M;->b:Lv2/M;

    goto :goto_26

    :cond_23
    sget-object v9, Lv2/M;->c:Lv2/M;

    :goto_26
    invoke-virtual {v10, v2, v9}, LZ3/x;->I(Lv2/P;LEc/g;)V

    :cond_24
    move-object v9, v5

    check-cast v9, Lv2/e1;

    invoke-virtual {v1, v9, v2}, Lv2/H0;->f(Lv2/e1;Lv2/P;)Lv2/Y;

    move-result-object v1

    iget-object v9, v0, Lv2/C0;->h:LPc/i;

    iput-object v0, v3, Lv2/o0;->a:Ljava/lang/Object;

    iput-object v2, v3, Lv2/o0;->b:Ljava/lang/Object;

    iput-object v15, v3, Lv2/o0;->c:Ljava/lang/Object;

    iput-object v14, v3, Lv2/o0;->d:Ljava/lang/Object;

    iput-object v13, v3, Lv2/o0;->e:Ljava/lang/Object;

    iput-object v11, v3, Lv2/o0;->f:Ljava/lang/Object;

    iput-object v7, v3, Lv2/o0;->g:Ljava/lang/Object;

    iput-object v5, v3, Lv2/o0;->h:Ljava/lang/Object;

    iput-object v6, v3, Lv2/o0;->i:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v3, Lv2/o0;->j:Ljava/lang/Object;

    iput-object v10, v3, Lv2/o0;->k:LYc/d;

    const/16 v12, 0xa

    iput v12, v3, Lv2/o0;->n:I

    invoke-interface {v9, v3, v1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-ne v1, v4, :cond_25

    goto :goto_29

    :cond_25
    move-object v1, v6

    move-object/from16 v20, v14

    move-object v14, v0

    move-object v0, v5

    move-object v5, v7

    move-object v7, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v15

    move-object v15, v2

    move-object v2, v13

    move-object/from16 v13, v21

    :goto_27
    invoke-interface {v1, v10}, LYc/a;->b(Ljava/lang/Object;)V

    instance-of v1, v5, Lv2/a1;

    if-eqz v1, :cond_26

    move-object v1, v0

    check-cast v1, Lv2/e1;

    iget-object v1, v1, Lv2/e1;->b:Ljava/lang/Integer;

    :cond_26
    instance-of v1, v5, Lv2/Y0;

    if-eqz v1, :cond_27

    check-cast v0, Lv2/e1;

    iget-object v0, v0, Lv2/e1;->c:Ljava/lang/Integer;

    :cond_27
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v7

    move-object v10, v11

    move-object v11, v13

    move-object v7, v14

    move-object v13, v15

    move-object/from16 v9, v18

    move-object/from16 v12, v19

    move-object v15, v2

    goto/16 :goto_f

    :goto_28
    invoke-interface {v1, v2}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :goto_29
    return-object v4

    :goto_2a
    invoke-interface {v5, v1}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_28
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_2b
    invoke-interface {v2, v1}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lv2/C0;Lv2/P;Lv2/C1;Lv2/t0;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lv2/i0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sget-object v1, Ldb/r;->a:Ldb/r;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p3}, Lv2/C0;->f(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_3

    move-object v1, p0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    iget-object p0, p0, Lv2/C0;->f:LX4/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lv2/P;->PREPEND:Lv2/P;

    if-eq p1, p3, :cond_2

    sget-object p3, Lv2/P;->APPEND:Lv2/P;

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "invalid load type for reset: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    new-instance p3, LB1/i;

    const/4 v0, 0x5

    invoke-direct {p3, v0, p1, p2}, LB1/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Lo3/n;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Lo3/n;->x(Lv2/z1;Lsb/n;)V

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Lv2/C0;LNc/B;)V
    .locals 4

    iget-object v0, p0, Lv2/C0;->c:Lv2/L0;

    iget v0, v0, Lv2/L0;->d:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    new-instance v0, Lv2/z0;

    invoke-direct {v0, p0, v3}, Lv2/z0;-><init>(Lv2/C0;Lib/c;)V

    invoke-static {p1, v3, v3, v0, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    :cond_0
    new-instance v0, Lv2/A0;

    invoke-direct {v0, p0, v3}, Lv2/A0;-><init>(Lv2/C0;Lib/c;)V

    invoke-static {p1, v3, v3, v0, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    new-instance v0, Lv2/B0;

    invoke-direct {v0, p0, v3}, Lv2/B0;-><init>(Lv2/C0;Lib/c;)V

    invoke-static {p1, v3, v3, v0, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public static h(Lv2/P;Ljava/lang/Object;Lv2/f1;)Ljava/lang/String;
    .locals 2

    const-string v0, "End "

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with loadkey "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Load CANCELLED."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with loadKey "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Returned "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final e(Lkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lv2/m0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lv2/m0;

    iget v1, v0, Lv2/m0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/m0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/m0;

    invoke-direct {v0, p0, p1}, Lv2/m0;-><init>(Lv2/C0;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lv2/m0;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/m0;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lv2/m0;->c:LYc/d;

    iget-object v1, v0, Lv2/m0;->b:Lv2/D0;

    iget-object v0, v0, Lv2/m0;->a:Lv2/C0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/C0;->i:Lv2/D0;

    iget-object v2, p1, Lv2/D0;->a:LYc/d;

    iput-object p0, v0, Lv2/m0;->a:Lv2/C0;

    iput-object p1, v0, Lv2/m0;->b:Lv2/D0;

    iput-object v2, v0, Lv2/m0;->c:LYc/d;

    iput v3, v0, Lv2/m0;->f:I

    invoke-virtual {v2, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    iget-object v0, v1, Lv2/D0;->b:Lv2/H0;

    iget-object p0, p0, Lv2/C0;->f:LX4/i;

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Lo3/n;

    iget-object p0, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, Lv2/z1;

    invoke-virtual {v0, p0}, Lv2/H0;->a(Lv2/z1;)Lv2/h1;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v2, p1}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final f(Lkb/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lv2/n0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lv2/n0;

    iget v3, v2, Lv2/n0;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lv2/n0;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lv2/n0;

    invoke-direct {v2, v0, v1}, Lv2/n0;-><init>(Lv2/C0;Lkb/c;)V

    :goto_0
    iget-object v1, v2, Lv2/n0;->e:Ljava/lang/Object;

    sget-object v3, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v4, v2, Lv2/n0;->g:I

    sget-object v5, Ldb/r;->a:Ldb/r;

    const-string v6, "message"

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v11, "Paging"

    const/4 v12, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LYc/a;

    :try_start_0
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :pswitch_1
    iget-object v0, v2, Lv2/n0;->d:LYc/d;

    iget-object v4, v2, Lv2/n0;->c:Ljava/lang/Object;

    check-cast v4, Lv2/D0;

    iget-object v6, v2, Lv2/n0;->b:Ljava/lang/Object;

    check-cast v6, Lv2/f1;

    iget-object v7, v2, Lv2/n0;->a:Ljava/lang/Object;

    check-cast v7, Lv2/C0;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v1, v6

    move-object v6, v0

    goto/16 :goto_c

    :pswitch_2
    iget-object v3, v2, Lv2/n0;->d:LYc/d;

    iget-object v0, v2, Lv2/n0;->c:Ljava/lang/Object;

    check-cast v0, Lv2/D0;

    iget-object v4, v2, Lv2/n0;->b:Ljava/lang/Object;

    check-cast v4, Lv2/f1;

    iget-object v2, v2, Lv2/n0;->a:Ljava/lang/Object;

    check-cast v2, Lv2/C0;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, v0, Lv2/D0;->b:Lv2/H0;

    iget-object v1, v2, Lv2/C0;->f:LX4/i;

    iget-object v1, v1, LX4/i;->b:Ljava/lang/Object;

    check-cast v1, Lo3/n;

    iget-object v1, v1, Lo3/n;->c:Ljava/lang/Object;

    check-cast v1, Lv2/z1;

    invoke-virtual {v0, v1}, Lv2/H0;->a(Lv2/z1;)Lv2/h1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v3, v12}, LYc/a;->b(Ljava/lang/Object;)V

    check-cast v4, Lv2/e1;

    iget-object v0, v4, Lv2/e1;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v4, Lv2/e1;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    invoke-interface {v3, v12}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :pswitch_3
    iget-object v0, v2, Lv2/n0;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LYc/a;

    iget-object v0, v2, Lv2/n0;->b:Ljava/lang/Object;

    check-cast v0, Lv2/f1;

    iget-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    check-cast v0, Lv2/C0;

    :try_start_2
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    :pswitch_4
    iget-object v0, v2, Lv2/n0;->d:LYc/d;

    iget-object v4, v2, Lv2/n0;->c:Ljava/lang/Object;

    check-cast v4, Lv2/D0;

    iget-object v6, v2, Lv2/n0;->b:Ljava/lang/Object;

    check-cast v6, Lv2/f1;

    iget-object v7, v2, Lv2/n0;->a:Ljava/lang/Object;

    check-cast v7, Lv2/C0;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_7

    :pswitch_5
    iget-object v0, v2, Lv2/n0;->d:LYc/d;

    iget-object v4, v2, Lv2/n0;->c:Ljava/lang/Object;

    check-cast v4, Lv2/D0;

    iget-object v9, v2, Lv2/n0;->b:Ljava/lang/Object;

    check-cast v9, Lv2/f1;

    iget-object v13, v2, Lv2/n0;->a:Ljava/lang/Object;

    check-cast v13, Lv2/C0;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v1, v9

    move-object v9, v0

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    check-cast v0, Lv2/C0;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, v2, Lv2/n0;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, LYc/a;

    iget-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    check-cast v0, Lv2/C0;

    :try_start_3
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    goto/16 :goto_12

    :pswitch_8
    iget-object v0, v2, Lv2/n0;->c:Ljava/lang/Object;

    check-cast v0, LYc/a;

    iget-object v4, v2, Lv2/n0;->b:Ljava/lang/Object;

    check-cast v4, Lv2/D0;

    iget-object v13, v2, Lv2/n0;->a:Ljava/lang/Object;

    check-cast v13, Lv2/C0;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v13

    goto :goto_1

    :pswitch_9
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v4, v0, Lv2/C0;->i:Lv2/D0;

    iget-object v1, v4, Lv2/D0;->a:LYc/d;

    iput-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    iput-object v4, v2, Lv2/n0;->b:Ljava/lang/Object;

    iput-object v1, v2, Lv2/n0;->c:Ljava/lang/Object;

    iput v9, v2, Lv2/n0;->g:I

    invoke-virtual {v1, v2}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_1

    return-object v3

    :cond_1
    :goto_1
    :try_start_4
    iget-object v4, v4, Lv2/D0;->b:Lv2/H0;

    sget-object v13, Lv2/P;->REFRESH:Lv2/P;

    iput-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    iput-object v1, v2, Lv2/n0;->b:Ljava/lang/Object;

    iput-object v12, v2, Lv2/n0;->c:Ljava/lang/Object;

    iput v10, v2, Lv2/n0;->g:I

    invoke-virtual {v0, v4, v13, v2}, Lv2/C0;->k(Lv2/H0;Lv2/P;Lkb/c;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-ne v4, v3, :cond_2

    return-object v3

    :cond_2
    move-object v4, v1

    :goto_2
    invoke-interface {v4, v12}, LYc/a;->b(Ljava/lang/Object;)V

    sget-object v1, Lv2/P;->REFRESH:Lv2/P;

    iget-object v4, v0, Lv2/C0;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lv2/C0;->g(Lv2/P;Ljava/lang/Object;)Lv2/c1;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-static {v11, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v9, v7

    :goto_3
    iget-object v4, v0, Lv2/C0;->b:Lv2/g1;

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "Start REFRESH with loadKey "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lv2/C0;->a:Ljava/lang/Object;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " on "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iput-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    iput-object v12, v2, Lv2/n0;->b:Ljava/lang/Object;

    iput v8, v2, Lv2/n0;->g:I

    invoke-virtual {v4, v1, v2}, Lv2/g1;->load(Lv2/c1;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    :goto_4
    check-cast v1, Lv2/f1;

    instance-of v4, v1, Lv2/e1;

    if-eqz v4, :cond_e

    iget-object v4, v0, Lv2/C0;->i:Lv2/D0;

    iget-object v9, v4, Lv2/D0;->a:LYc/d;

    iput-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    iput-object v1, v2, Lv2/n0;->b:Ljava/lang/Object;

    iput-object v4, v2, Lv2/n0;->c:Ljava/lang/Object;

    iput-object v9, v2, Lv2/n0;->d:LYc/d;

    const/4 v13, 0x4

    iput v13, v2, Lv2/n0;->g:I

    invoke-virtual {v9, v2}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_6

    return-object v3

    :cond_6
    move-object v13, v0

    :goto_5
    :try_start_5
    iget-object v0, v4, Lv2/D0;->b:Lv2/H0;

    sget-object v4, Lv2/P;->REFRESH:Lv2/P;

    move-object v14, v1

    check-cast v14, Lv2/e1;

    invoke-virtual {v0, v7, v4, v14}, Lv2/H0;->e(ILv2/P;Lv2/e1;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iget-object v0, v0, Lv2/H0;->l:LZ3/x;

    :try_start_6
    sget-object v14, Lv2/M;->c:Lv2/M;

    invoke-virtual {v0, v4, v14}, LZ3/x;->I(Lv2/P;LEc/g;)V

    move-object v14, v1

    check-cast v14, Lv2/e1;

    iget-object v14, v14, Lv2/e1;->b:Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    sget-object v15, Lv2/M;->b:Lv2/M;

    if-nez v14, :cond_7

    :try_start_7
    sget-object v14, Lv2/P;->PREPEND:Lv2/P;

    invoke-virtual {v0, v14, v15}, LZ3/x;->I(Lv2/P;LEc/g;)V

    goto :goto_6

    :catchall_4
    move-exception v0

    goto/16 :goto_b

    :cond_7
    :goto_6
    move-object v14, v1

    check-cast v14, Lv2/e1;

    iget-object v14, v14, Lv2/e1;->c:Ljava/lang/Integer;

    if-nez v14, :cond_8

    sget-object v14, Lv2/P;->APPEND:Lv2/P;

    invoke-virtual {v0, v14, v15}, LZ3/x;->I(Lv2/P;LEc/g;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_8
    invoke-interface {v9, v12}, LYc/a;->b(Ljava/lang/Object;)V

    if-eqz v7, :cond_c

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v11, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v13, Lv2/C0;->a:Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lv2/C0;->h(Lv2/P;Ljava/lang/Object;Lv2/f1;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    iget-object v4, v13, Lv2/C0;->i:Lv2/D0;

    iget-object v0, v4, Lv2/D0;->a:LYc/d;

    iput-object v13, v2, Lv2/n0;->a:Ljava/lang/Object;

    iput-object v1, v2, Lv2/n0;->b:Ljava/lang/Object;

    iput-object v4, v2, Lv2/n0;->c:Ljava/lang/Object;

    iput-object v0, v2, Lv2/n0;->d:LYc/d;

    const/4 v6, 0x5

    iput v6, v2, Lv2/n0;->g:I

    invoke-virtual {v0, v2}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_a

    return-object v3

    :cond_a
    move-object v6, v1

    move-object v1, v0

    move-object v0, v13

    :goto_7
    :try_start_8
    iget-object v4, v4, Lv2/D0;->b:Lv2/H0;

    iget-object v7, v0, Lv2/C0;->h:LPc/i;

    move-object v8, v6

    check-cast v8, Lv2/e1;

    sget-object v9, Lv2/P;->REFRESH:Lv2/P;

    invoke-virtual {v4, v8, v9}, Lv2/H0;->f(Lv2/e1;Lv2/P;)Lv2/Y;

    move-result-object v4

    iput-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    iput-object v6, v2, Lv2/n0;->b:Ljava/lang/Object;

    iput-object v1, v2, Lv2/n0;->c:Ljava/lang/Object;

    iput-object v12, v2, Lv2/n0;->d:LYc/d;

    const/4 v6, 0x6

    iput v6, v2, Lv2/n0;->g:I

    invoke-interface {v7, v2, v4}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-ne v2, v3, :cond_b

    return-object v3

    :cond_b
    move-object v3, v1

    :goto_8
    invoke-interface {v3, v12}, LYc/a;->b(Ljava/lang/Object;)V

    move-object v13, v0

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v3, v1

    :goto_9
    invoke-interface {v3, v12}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_c
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v13, Lv2/C0;->a:Ljava/lang/Object;

    invoke-static {v4, v0, v12}, Lv2/C0;->h(Lv2/P;Ljava/lang/Object;Lv2/f1;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v0, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_a
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_10

    :goto_b
    invoke-interface {v9, v12}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_e
    instance-of v4, v1, Lv2/d1;

    if-eqz v4, :cond_12

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v4, :cond_f

    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lv2/P;->REFRESH:Lv2/P;

    iget-object v7, v0, Lv2/C0;->a:Ljava/lang/Object;

    invoke-static {v4, v7, v1}, Lv2/C0;->h(Lv2/P;Ljava/lang/Object;Lv2/f1;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    iget-object v4, v0, Lv2/C0;->i:Lv2/D0;

    iget-object v6, v4, Lv2/D0;->a:LYc/d;

    iput-object v0, v2, Lv2/n0;->a:Ljava/lang/Object;

    iput-object v1, v2, Lv2/n0;->b:Ljava/lang/Object;

    iput-object v4, v2, Lv2/n0;->c:Ljava/lang/Object;

    iput-object v6, v2, Lv2/n0;->d:LYc/d;

    const/16 v7, 0x8

    iput v7, v2, Lv2/n0;->g:I

    invoke-virtual {v6, v2}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_10

    return-object v3

    :cond_10
    move-object v7, v0

    :goto_c
    :try_start_9
    iget-object v0, v4, Lv2/D0;->b:Lv2/H0;

    new-instance v4, Lv2/K;

    check-cast v1, Lv2/d1;

    iget-object v1, v1, Lv2/d1;->a:Ljava/lang/Throwable;

    invoke-direct {v4, v1}, Lv2/K;-><init>(Ljava/lang/Throwable;)V

    sget-object v1, Lv2/P;->REFRESH:Lv2/P;

    iput-object v6, v2, Lv2/n0;->a:Ljava/lang/Object;

    iput-object v12, v2, Lv2/n0;->b:Ljava/lang/Object;

    iput-object v12, v2, Lv2/n0;->c:Ljava/lang/Object;

    iput-object v12, v2, Lv2/n0;->d:LYc/d;

    const/16 v8, 0x9

    iput v8, v2, Lv2/n0;->g:I

    invoke-virtual {v7, v0, v1, v4, v2}, Lv2/C0;->j(Lv2/H0;Lv2/P;Lv2/K;Lkb/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-ne v0, v3, :cond_11

    return-object v3

    :cond_11
    move-object v2, v6

    :goto_d
    invoke-interface {v2, v12}, LYc/a;->b(Ljava/lang/Object;)V

    return-object v5

    :goto_e
    move-object v2, v6

    goto :goto_f

    :catchall_6
    move-exception v0

    goto :goto_e

    :goto_f
    invoke-interface {v2, v12}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_12
    :goto_10
    return-object v5

    :goto_11
    move-object v4, v1

    goto :goto_12

    :catchall_7
    move-exception v0

    goto :goto_11

    :goto_12
    invoke-interface {v4, v12}, LYc/a;->b(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lv2/P;Ljava/lang/Object;)Lv2/c1;
    .locals 0

    const-string p0, "loadType"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lv2/Z0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Lv2/Y0;

    invoke-direct {p0, p2}, Lv2/Y0;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key cannot be null for append"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    if-eqz p2, :cond_3

    new-instance p0, Lv2/a1;

    invoke-direct {p0, p2}, Lv2/a1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key cannot be null for prepend"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lv2/b1;

    invoke-direct {p0, p2}, Lv2/b1;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final i(Lv2/H0;Lv2/P;II)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lv2/E0;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p1, Lv2/H0;->h:I

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget v0, p1, Lv2/H0;->g:I

    :goto_0
    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    return-object v1

    :cond_2
    iget-object p3, p1, Lv2/H0;->l:LZ3/x;

    invoke-virtual {p3, p2}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object p3

    instance-of p3, p3, Lv2/K;

    if-eqz p3, :cond_3

    return-object v1

    :cond_3
    iget-object p0, p0, Lv2/C0;->c:Lv2/L0;

    iget p0, p0, Lv2/L0;->a:I

    if-lt p4, p0, :cond_4

    return-object v1

    :cond_4
    sget-object p0, Lv2/P;->PREPEND:Lv2/P;

    iget-object p1, p1, Lv2/H0;->c:Ljava/util/ArrayList;

    if-ne p2, p0, :cond_5

    invoke-static {p1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/e1;

    iget-object p0, p0, Lv2/e1;->b:Ljava/lang/Integer;

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/e1;

    iget-object p0, p0, Lv2/e1;->c:Ljava/lang/Integer;

    :goto_1
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot get loadId for loadType: REFRESH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Lv2/H0;Lv2/P;Lv2/K;Lkb/c;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lv2/H0;->l:LZ3/x;

    invoke-virtual {v0, p2}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object v0

    invoke-static {v0, p3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-nez v0, :cond_0

    iget-object p1, p1, Lv2/H0;->l:LZ3/x;

    invoke-virtual {p1, p2, p3}, LZ3/x;->I(Lv2/P;LEc/g;)V

    new-instance p2, Lv2/Z;

    invoke-virtual {p1}, LZ3/x;->J()Lv2/O;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lv2/Z;-><init>(Lv2/O;Lv2/O;)V

    iget-object p0, p0, Lv2/C0;->h:LPc/i;

    invoke-interface {p0, p4, p2}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public final k(Lv2/H0;Lv2/P;Lkb/c;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p1, Lv2/H0;->l:LZ3/x;

    invoke-virtual {v0, p2}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object v0

    sget-object v1, Lv2/L;->b:Lv2/L;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sget-object v2, Ldb/r;->a:Ldb/r;

    if-nez v0, :cond_0

    iget-object p1, p1, Lv2/H0;->l:LZ3/x;

    invoke-virtual {p1, p2, v1}, LZ3/x;->I(Lv2/P;LEc/g;)V

    new-instance p2, Lv2/Z;

    invoke-virtual {p1}, LZ3/x;->J()Lv2/O;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lv2/Z;-><init>(Lv2/O;Lv2/O;)V

    iget-object p0, p0, Lv2/C0;->h:LPc/i;

    invoke-interface {p0, p3, p2}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    return-object v2
.end method
