.class public final LC1/l;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LNc/j0;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:LNc/B;

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:LC1/m;

.field public final synthetic k:Lsb/k;

.field public final synthetic l:Landroid/content/Context;


# direct methods
.method public constructor <init>(LC1/m;Lsb/k;Landroid/content/Context;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/l;->j:LC1/m;

    iput-object p2, p0, LC1/l;->k:Lsb/k;

    iput-object p3, p0, LC1/l;->l:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method

.method public static final f(LC1/m;La0/r;Lc2/j;LNc/j0;La0/p0;)V
    .locals 3

    iget-object v0, p0, Lc2/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CoroutineSession clear"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GWT:CoroutineSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, LC1/m;->c()V

    invoke-interface {p1}, La0/r;->a()V

    invoke-virtual {p2}, Lc2/j;->g()V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p4}, La0/p0;->s()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, LC1/l;

    iget-object v1, p0, LC1/l;->k:Lsb/k;

    iget-object v2, p0, LC1/l;->l:Landroid/content/Context;

    iget-object p0, p0, LC1/l;->j:LC1/m;

    invoke-direct {v0, p0, v1, v2, p2}, LC1/l;-><init>(LC1/m;Lsb/k;Landroid/content/Context;Lib/c;)V

    iput-object p1, v0, LC1/l;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LC1/l;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/l;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    const-string v0, "Finish CoroutineSession "

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v1, LC1/l;->h:I

    sget-object v4, Ldb/r;->a:Ldb/r;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x1

    const-string v10, " "

    const-string v11, "msg"

    iget-object v12, v1, LC1/l;->j:LC1/m;

    const-string v13, "GWT:CoroutineSession"

    if-eqz v3, :cond_4

    if-eq v3, v9, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v8, :cond_0

    iget-object v0, v1, LC1/l;->i:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v7, v12

    move-object v4, v13

    goto/16 :goto_9

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, v1, LC1/l;->d:Ljava/lang/Object;

    check-cast v3, LC1/m;

    iget-object v5, v1, LC1/l;->c:Ljava/lang/Object;

    check-cast v5, La0/r;

    iget-object v6, v1, LC1/l;->b:Ljava/lang/Object;

    check-cast v6, La0/p0;

    iget-object v9, v1, LC1/l;->a:LNc/j0;

    iget-object v14, v1, LC1/l;->i:Ljava/lang/Object;

    check-cast v14, Lc2/j;

    :try_start_0
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v24, v4

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v12

    move-object v4, v13

    goto/16 :goto_7

    :cond_2
    iget-object v3, v1, LC1/l;->f:Ljava/lang/Object;

    check-cast v3, LNc/B;

    iget-object v5, v1, LC1/l;->e:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v9, v1, LC1/l;->d:Ljava/lang/Object;

    check-cast v9, LC1/m;

    iget-object v14, v1, LC1/l;->c:Ljava/lang/Object;

    check-cast v14, La0/r;

    iget-object v15, v1, LC1/l;->b:Ljava/lang/Object;

    check-cast v15, La0/p0;

    iget-object v8, v1, LC1/l;->a:LNc/j0;

    iget-object v6, v1, LC1/l;->i:Ljava/lang/Object;

    check-cast v6, Lc2/j;

    :try_start_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v24, v4

    move-object v7, v6

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object v6, v15

    move-object v4, v3

    move-object v3, v9

    move-object v9, v8

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v24, v4

    move-object v9, v8

    move-object/from16 v25, v12

    move-object v4, v13

    move-object v5, v14

    move-object v14, v6

    move-object v6, v15

    goto/16 :goto_7

    :cond_3
    iget-object v3, v1, LC1/l;->g:LNc/B;

    iget-object v6, v1, LC1/l;->f:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object v8, v1, LC1/l;->e:Ljava/lang/Object;

    check-cast v8, LC1/m;

    iget-object v9, v1, LC1/l;->d:Ljava/lang/Object;

    check-cast v9, La0/r;

    iget-object v14, v1, LC1/l;->c:Ljava/lang/Object;

    check-cast v14, La0/p0;

    iget-object v15, v1, LC1/l;->b:Ljava/lang/Object;

    check-cast v15, LQc/f0;

    iget-object v5, v1, LC1/l;->a:LNc/j0;

    iget-object v7, v1, LC1/l;->i:Ljava/lang/Object;

    check-cast v7, Lc2/j;

    :try_start_2
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v24, v4

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v29, v9

    move-object v9, v5

    move-object/from16 v5, v29

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v12

    move-object v4, v13

    move-object v6, v14

    move-object v14, v7

    :goto_0
    move-object/from16 v29, v9

    move-object v9, v5

    move-object/from16 v5, v29

    goto/16 :goto_7

    :cond_4
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v3, v1, LC1/l;->i:Ljava/lang/Object;

    check-cast v3, LNc/B;

    iget-object v5, v12, Lc2/m;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "runComposition "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " widget / "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Le7/a;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lc2/j;

    invoke-direct {v14, v3}, Lc2/j;-><init>(LNc/B;)V

    new-instance v5, LC1/k;

    const/4 v6, 0x0

    invoke-direct {v5, v12, v6}, LC1/k;-><init>(LC1/m;Lib/c;)V

    const/4 v7, 0x3

    invoke-static {v3, v6, v6, v5, v7}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object v5

    new-instance v6, Lz1/Q0;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Lz1/Q0;-><init>(I)V

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v15

    new-instance v7, La0/p0;

    invoke-interface {v3}, LNc/B;->v()Lib/h;

    move-result-object v8

    invoke-direct {v7, v8}, La0/p0;-><init>(Lib/h;)V

    new-instance v8, Lx1/b;

    invoke-direct {v8, v6}, Lx1/b;-><init>(Lx1/n;)V

    new-instance v9, La0/u;

    invoke-direct {v9, v7, v8}, La0/u;-><init>(La0/s;LJ2/i0;)V

    iget-object v8, v1, LC1/l;->k:Lsb/k;

    move-object/from16 v24, v4

    iget-object v4, v1, LC1/l;->j:LC1/m;

    move-object/from16 v25, v12

    iget-object v12, v1, LC1/l;->l:Landroid/content/Context;

    move-object/from16 v26, v13

    :try_start_3
    new-instance v13, LC1/d;

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    move-object/from16 v19, v12

    move-object/from16 v20, v7

    invoke-direct/range {v16 .. v21}, LC1/d;-><init>(La0/u;LC1/m;Landroid/content/Context;La0/p0;Lib/c;)V

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v3, v14, v11, v13, v10}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    new-instance v10, LC1/g;

    const/16 v23, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v7

    move-object/from16 v18, v15

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    move-object/from16 v21, v12

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v23}, LC1/g;-><init>(La0/p0;LQc/A0;Lz1/Q0;LC1/m;Landroid/content/Context;LNc/B;Lib/c;)V

    const/4 v6, 0x3

    const/4 v11, 0x0

    invoke-static {v3, v11, v11, v10, v6}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    iput-object v14, v1, LC1/l;->i:Ljava/lang/Object;

    iput-object v5, v1, LC1/l;->a:LNc/j0;

    iput-object v15, v1, LC1/l;->b:Ljava/lang/Object;

    iput-object v7, v1, LC1/l;->c:Ljava/lang/Object;

    iput-object v9, v1, LC1/l;->d:Ljava/lang/Object;

    iput-object v4, v1, LC1/l;->e:Ljava/lang/Object;

    iput-object v12, v1, LC1/l;->f:Ljava/lang/Object;

    iput-object v3, v1, LC1/l;->g:LNc/B;

    const/4 v6, 0x1

    iput v6, v1, LC1/l;->h:I

    invoke-interface {v8, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-ne v6, v2, :cond_5

    return-object v2

    :cond_5
    move-object v8, v4

    move-object v6, v12

    move-object/from16 v29, v9

    move-object v9, v5

    move-object/from16 v5, v29

    move-object/from16 v30, v14

    move-object v14, v7

    move-object/from16 v7, v30

    :goto_1
    :try_start_4
    new-instance v4, LC1/h;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Lkb/i;-><init>(ILib/c;)V

    iput-object v7, v1, LC1/l;->i:Ljava/lang/Object;

    iput-object v9, v1, LC1/l;->a:LNc/j0;

    iput-object v14, v1, LC1/l;->b:Ljava/lang/Object;

    iput-object v5, v1, LC1/l;->c:Ljava/lang/Object;

    iput-object v8, v1, LC1/l;->d:Ljava/lang/Object;

    iput-object v6, v1, LC1/l;->e:Ljava/lang/Object;

    iput-object v3, v1, LC1/l;->f:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v1, LC1/l;->g:LNc/B;

    const/4 v10, 0x2

    iput v10, v1, LC1/l;->h:I

    invoke-static {v15, v4, v1}, LQc/n0;->o(LQc/h;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-ne v4, v2, :cond_6

    return-object v2

    :cond_6
    move-object v4, v3

    move-object v3, v8

    move-object/from16 v29, v14

    move-object v14, v5

    move-object v5, v6

    move-object/from16 v6, v29

    :goto_2
    :try_start_5
    invoke-virtual {v3}, LC1/m;->k()Lc2/m;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v10, "getApplicationContext(...)"

    invoke-static {v5, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LC1/j;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v4, v7}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, v1, LC1/l;->i:Ljava/lang/Object;

    iput-object v9, v1, LC1/l;->a:LNc/j0;

    iput-object v6, v1, LC1/l;->b:Ljava/lang/Object;

    iput-object v14, v1, LC1/l;->c:Ljava/lang/Object;

    iput-object v3, v1, LC1/l;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v1, LC1/l;->e:Ljava/lang/Object;

    iput-object v4, v1, LC1/l;->f:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v1, LC1/l;->h:I

    invoke-virtual {v8, v5, v10, v1}, Lc2/m;->h(Landroid/content/Context;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ne v4, v2, :cond_7

    return-object v2

    :cond_7
    move-object v5, v14

    move-object v14, v7

    :goto_3
    :try_start_6
    iget-object v4, v3, Lc2/m;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v28

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Le7/a;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v4, v26

    :try_start_7
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v5, v14, v9, v6}, LC1/l;->f(LC1/m;La0/r;Lc2/j;LNc/j0;La0/p0;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v0, v24

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v4, v26

    goto :goto_7

    :goto_4
    move-object v5, v14

    :goto_5
    move-object v14, v7

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v4, v26

    goto :goto_4

    :goto_6
    move-object v6, v14

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v4, v26

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v4, v26

    move-object v6, v7

    goto/16 :goto_0

    :goto_7
    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Finished runComposition by "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v7, v25

    invoke-static {v7, v5, v14, v9, v6}, LC1/l;->f(LC1/m;La0/r;Lc2/j;LNc/j0;La0/p0;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Finish coroutine session"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Different message "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, LC1/l;->i:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v1, LC1/l;->a:LNc/j0;

    iput-object v3, v1, LC1/l;->b:Ljava/lang/Object;

    iput-object v3, v1, LC1/l;->c:Ljava/lang/Object;

    iput-object v3, v1, LC1/l;->d:Ljava/lang/Object;

    iput-object v3, v1, LC1/l;->e:Ljava/lang/Object;

    iput-object v3, v1, LC1/l;->f:Ljava/lang/Object;

    iput-object v3, v1, LC1/l;->g:LNc/B;

    const/4 v3, 0x4

    iput v3, v1, LC1/l;->h:I

    invoke-virtual {v7, v1}, LC1/m;->j(Lkb/c;)V

    move-object/from16 v1, v24

    if-ne v1, v2, :cond_9

    return-object v2

    :cond_8
    move-object/from16 v7, v25

    :cond_9
    :goto_9
    instance-of v1, v0, Ldb/l;

    if-nez v1, :cond_a

    move-object v1, v0

    check-cast v1, Ldb/r;

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v2, " onSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, LC1/m;->c()V

    :cond_a
    new-instance v1, Ldb/m;

    invoke-direct {v1, v0}, Ldb/m;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
