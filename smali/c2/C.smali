.class public final Lc2/C;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Landroidx/glance/session/SessionWorker;

.field public final synthetic d:Lc2/U;


# direct methods
.method public constructor <init>(Landroidx/glance/session/SessionWorker;Lc2/U;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/C;->c:Landroidx/glance/session/SessionWorker;

    iput-object p2, p0, Lc2/C;->d:Lc2/U;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lc2/C;

    iget-object v1, p0, Lc2/C;->c:Landroidx/glance/session/SessionWorker;

    iget-object p0, p0, Lc2/C;->d:Lc2/U;

    invoke-direct {v0, v1, p0, p1}, Lc2/C;-><init>(Landroidx/glance/session/SessionWorker;Lc2/U;Lib/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, Lc2/C;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/C;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/C;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v7, p0

    sget-object v8, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, v7, Lc2/C;->b:I

    const-string v9, " end"

    const-string v10, "SessionWorker "

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v13, 0x0

    const-string v14, " "

    const-string v15, "msg"

    const-string v6, "GWT:SessionWorker"

    iget-object v5, v7, Lc2/C;->c:Landroidx/glance/session/SessionWorker;

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v7, Lc2/C;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, v7, Lc2/C;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lc2/m;

    :try_start_0
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v5

    move-object v13, v6

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v5

    move-object v13, v6

    goto/16 :goto_4

    :cond_3
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v0, v5, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    iget-object v3, v5, Lf3/t;->b:Landroidx/work/WorkerParameters;

    iget v3, v3, Landroidx/work/WorkerParameters;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "doWork "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " start "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc2/B;

    invoke-direct {v0, v5, v13}, Lc2/B;-><init>(Landroidx/glance/session/SessionWorker;Lib/c;)V

    iput v2, v7, Lc2/C;->b:I

    iget-object v2, v5, Landroidx/glance/session/SessionWorker;->j:Lc2/n;

    invoke-interface {v2, v0, v7}, Lc2/n;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_5

    return-object v8

    :cond_5
    :goto_0
    move-object v11, v0

    check-cast v11, Lc2/m;

    if-nez v11, :cond_7

    iget-object v0, v5, Landroidx/glance/session/SessionWorker;->i:Landroidx/work/WorkerParameters;

    iget v0, v0, Landroidx/work/WorkerParameters;->e:I

    iget-object v1, v5, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SessionWorker attempted restart but Session is not available for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lf3/r;

    sget-object v1, Lf3/i;->c:Lf3/i;

    invoke-direct {v0, v1}, Lf3/r;-><init>(Lf3/i;)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No session available for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :try_start_1
    iget-object v0, v7, Lc2/C;->d:Lc2/U;

    iget-object v2, v5, Lf3/t;->a:Landroid/content/Context;

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v5, Landroidx/glance/session/SessionWorker;->k:Lc2/Q;

    new-instance v3, LA4/a;

    const/16 v12, 0x13

    invoke-direct {v3, v12, v5}, LA4/a;-><init>(ILjava/lang/Object;)V

    iput-object v11, v7, Lc2/C;->a:Ljava/lang/Object;

    iput v1, v7, Lc2/C;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v0

    move-object v0, v3

    move-object v3, v11

    move-object v12, v5

    move-object v5, v0

    move-object v13, v6

    move-object/from16 v6, p0

    :try_start_2
    invoke-static/range {v1 .. v6}, LG5/z;->a(Lc2/U;Landroid/content/Context;Lc2/m;Lc2/Q;LA4/a;Lkb/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v8, :cond_8

    return-object v8

    :cond_8
    move-object v1, v11

    :goto_1
    iget-object v0, v12, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    invoke-static {v2, v14, v0, v13}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LNc/y0;->a:LNc/y0;

    new-instance v2, Lc2/A;

    const/4 v3, 0x0

    invoke-direct {v2, v12, v1, v3}, Lc2/A;-><init>(Landroidx/glance/session/SessionWorker;Lc2/m;Lib/c;)V

    iput-object v3, v7, Lc2/C;->a:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v7, Lc2/C;->b:I

    invoke-static {v0, v2, v7}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_9

    return-object v8

    :cond_9
    :goto_2
    new-instance v0, Lf3/r;

    sget-object v1, Lf3/i;->c:Lf3/i;

    invoke-direct {v0, v1}, Lf3/r;-><init>(Lf3/i;)V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_3
    move-object v1, v11

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v12, v5

    move-object v13, v6

    goto :goto_3

    :goto_4
    iget-object v2, v12, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    invoke-static {v3, v14, v2, v13}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LNc/y0;->a:LNc/y0;

    new-instance v3, Lc2/A;

    const/4 v4, 0x0

    invoke-direct {v3, v12, v1, v4}, Lc2/A;-><init>(Landroidx/glance/session/SessionWorker;Lc2/m;Lib/c;)V

    iput-object v0, v7, Lc2/C;->a:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v7, Lc2/C;->b:I

    invoke-static {v2, v3, v7}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_a

    return-object v8

    :cond_a
    :goto_5
    throw v0
.end method
