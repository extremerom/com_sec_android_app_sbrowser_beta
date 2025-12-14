.class public final La0/H0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LN/v;

.field public b:Lsb/k;

.field public c:LPc/m;

.field public d:Lk0/g;

.field public e:Ljava/lang/Object;

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:LA4/a;


# direct methods
.method public constructor <init>(LA4/a;Lib/c;)V
    .locals 0

    iput-object p1, p0, La0/H0;->h:LA4/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, La0/H0;

    iget-object p0, p0, La0/H0;->h:LA4/a;

    invoke-direct {v0, p0, p2}, La0/H0;-><init>(LA4/a;Lib/c;)V

    iput-object p1, v0, La0/H0;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, La0/H0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, La0/H0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, La0/H0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x1

    sget-object v4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, v0, La0/H0;->f:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_3

    if-eq v5, v3, :cond_2

    if-eq v5, v7, :cond_1

    if-ne v5, v2, :cond_0

    iget-object v1, v0, La0/H0;->e:Ljava/lang/Object;

    iget-object v5, v0, La0/H0;->d:Lk0/g;

    iget-object v8, v0, La0/H0;->c:LPc/m;

    iget-object v9, v0, La0/H0;->b:Lsb/k;

    iget-object v10, v0, La0/H0;->a:LN/v;

    iget-object v11, v0, La0/H0;->g:Ljava/lang/Object;

    check-cast v11, LQc/i;

    :try_start_0
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v3

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v0, La0/H0;->e:Ljava/lang/Object;

    iget-object v5, v0, La0/H0;->d:Lk0/g;

    iget-object v8, v0, La0/H0;->c:LPc/m;

    iget-object v9, v0, La0/H0;->b:Lsb/k;

    iget-object v10, v0, La0/H0;->a:LN/v;

    iget-object v11, v0, La0/H0;->g:Ljava/lang/Object;

    check-cast v11, LQc/i;

    :try_start_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v12, p1

    goto/16 :goto_1

    :cond_2
    iget-object v1, v0, La0/H0;->e:Ljava/lang/Object;

    iget-object v5, v0, La0/H0;->d:Lk0/g;

    iget-object v8, v0, La0/H0;->c:LPc/m;

    iget-object v9, v0, La0/H0;->b:Lsb/k;

    iget-object v10, v0, La0/H0;->a:LN/v;

    iget-object v11, v0, La0/H0;->g:Ljava/lang/Object;

    check-cast v11, LQc/i;

    :try_start_2
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v5, v0, La0/H0;->g:Ljava/lang/Object;

    move-object v11, v5

    check-cast v11, LQc/i;

    new-instance v10, LN/v;

    invoke-direct {v10}, LN/v;-><init>()V

    new-instance v9, LN/y;

    invoke-direct {v9, v10, v3}, LN/y;-><init>(LN/v;I)V

    const v5, 0x7fffffff

    invoke-static {v5, v1, v6}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v8

    new-instance v5, LB1/h;

    invoke-direct {v5, v1, v8}, LB1/h;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lk0/n;->a:LZ3/x;

    sget-object v1, Lk0/m;->c:Lk0/m;

    invoke-static {v1}, Lk0/n;->f(Lsb/k;)Ljava/lang/Object;

    sget-object v1, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v12, Lk0/n;->g:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    invoke-static {v12, v5}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    sput-object v12, Lk0/n;->g:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    monitor-exit v1

    new-instance v1, Lk0/g;

    invoke-direct {v1, v5}, Lk0/g;-><init>(Lsb/n;)V

    :try_start_4
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v5

    invoke-virtual {v5, v9}, Lk0/h;->t(Lsb/k;)Lk0/h;

    move-result-object v5

    iget-object v12, v0, La0/H0;->h:LA4/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v5}, Lk0/h;->j()Lk0/h;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-virtual {v12}, LA4/a;->invoke()Ljava/lang/Object;

    move-result-object v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-static {v13}, Lk0/h;->p(Lk0/h;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v5}, Lk0/h;->c()V

    iput-object v11, v0, La0/H0;->g:Ljava/lang/Object;

    iput-object v10, v0, La0/H0;->a:LN/v;

    iput-object v9, v0, La0/H0;->b:Lsb/k;

    iput-object v8, v0, La0/H0;->c:LPc/m;

    iput-object v1, v0, La0/H0;->d:Lk0/g;

    iput-object v12, v0, La0/H0;->e:Ljava/lang/Object;

    iput v3, v0, La0/H0;->f:I

    invoke-interface {v11, v12, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ne v5, v4, :cond_4

    return-object v4

    :cond_4
    move-object v5, v1

    move-object v1, v12

    :goto_0
    :try_start_9
    iput-object v11, v0, La0/H0;->g:Ljava/lang/Object;

    iput-object v10, v0, La0/H0;->a:LN/v;

    iput-object v9, v0, La0/H0;->b:Lsb/k;

    iput-object v8, v0, La0/H0;->c:LPc/m;

    iput-object v5, v0, La0/H0;->d:Lk0/g;

    iput-object v1, v0, La0/H0;->e:Ljava/lang/Object;

    iput v7, v0, La0/H0;->f:I

    invoke-interface {v8, v0}, LPc/A;->r(Lkb/i;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_5

    return-object v4

    :cond_5
    :goto_1
    check-cast v12, Ljava/util/Set;

    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_b

    iget-object v14, v10, LN/v;->b:[Ljava/lang/Object;

    iget-object v15, v10, LN/v;->a:[J

    array-length v6, v15

    sub-int/2addr v6, v7

    if-ltz v6, :cond_9

    move-object/from16 v17, v4

    const/4 v7, 0x0

    :goto_3
    aget-wide v3, v15, v7

    move-object/from16 v18, v14

    not-long v13, v3

    const/16 v19, 0x7

    shl-long v13, v13, v19

    and-long/2addr v13, v3

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v13, v13, v19

    cmp-long v13, v13, v19

    if-eqz v13, :cond_8

    sub-int v13, v7, v6

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_7

    const-wide/16 v20, 0xff

    and-long v20, v3, v20

    const-wide/16 v22, 0x80

    cmp-long v20, v20, v22

    if-gez v20, :cond_6

    shl-int/lit8 v20, v7, 0x3

    add-int v20, v20, v14

    aget-object v2, v18, v20

    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    const/16 v2, 0x8

    shr-long/2addr v3, v2

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x3

    goto :goto_4

    :cond_7
    const/16 v2, 0x8

    const/16 v16, 0x1

    if-ne v13, v2, :cond_a

    goto :goto_5

    :cond_8
    const/16 v16, 0x1

    :goto_5
    if-eq v7, v6, :cond_a

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v14, v18

    const/4 v2, 0x3

    goto :goto_3

    :cond_9
    move/from16 v16, v3

    move-object/from16 v17, v4

    :cond_a
    const/4 v14, 0x0

    goto :goto_7

    :cond_b
    move/from16 v16, v3

    move-object/from16 v17, v4

    :goto_6
    move/from16 v14, v16

    :goto_7
    invoke-interface {v8}, LPc/A;->n()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, LPc/o;

    if-nez v3, :cond_c

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    move-object v12, v2

    check-cast v12, Ljava/util/Set;

    if-nez v12, :cond_f

    if-eqz v14, :cond_e

    invoke-virtual {v10}, LN/v;->b()V

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v2

    invoke-virtual {v2, v9}, Lk0/h;->t(Lsb/k;)Lk0/h;

    move-result-object v2

    iget-object v3, v0, La0/H0;->h:LA4/a;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v2}, Lk0/h;->j()Lk0/h;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v3}, LA4/a;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-static {v4}, Lk0/h;->p(Lk0/h;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-virtual {v2}, Lk0/h;->c()V

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iput-object v11, v0, La0/H0;->g:Ljava/lang/Object;

    iput-object v10, v0, La0/H0;->a:LN/v;

    iput-object v9, v0, La0/H0;->b:Lsb/k;

    iput-object v8, v0, La0/H0;->c:LPc/m;

    iput-object v5, v0, La0/H0;->d:Lk0/g;

    iput-object v3, v0, La0/H0;->e:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, La0/H0;->f:I

    invoke-interface {v11, v3, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v4, v17

    if-ne v1, v4, :cond_d

    return-object v4

    :cond_d
    move-object v1, v3

    :goto_9
    move/from16 v3, v16

    const/4 v6, 0x0

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_e
    move-object/from16 v4, v17

    const/4 v2, 0x3

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_e
    invoke-static {v4}, Lk0/h;->p(Lk0/h;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_f
    invoke-virtual {v2}, Lk0/h;->c()V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_f
    move/from16 v3, v16

    move-object/from16 v4, v17

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v5, v1

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-static {v13}, Lk0/h;->p(Lk0/h;)V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_11
    invoke-virtual {v5}, Lk0/h;->c()V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :goto_a
    invoke-virtual {v5}, Lk0/g;->a()V

    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0
.end method
