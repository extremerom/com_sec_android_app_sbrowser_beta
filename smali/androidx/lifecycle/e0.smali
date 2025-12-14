.class public final Landroidx/lifecycle/e0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ltb/w;

.field public b:Ltb/w;

.field public c:I

.field public final synthetic d:Landroidx/lifecycle/D;

.field public final synthetic e:Landroidx/lifecycle/C;

.field public final synthetic f:LNc/B;

.field public final synthetic g:Lkb/i;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/D;Landroidx/lifecycle/C;LNc/B;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/e0;->d:Landroidx/lifecycle/D;

    iput-object p2, p0, Landroidx/lifecycle/e0;->e:Landroidx/lifecycle/C;

    iput-object p3, p0, Landroidx/lifecycle/e0;->f:LNc/B;

    check-cast p4, Lkb/i;

    iput-object p4, p0, Landroidx/lifecycle/e0;->g:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, Landroidx/lifecycle/e0;

    iget-object v4, p0, Landroidx/lifecycle/e0;->g:Lkb/i;

    iget-object v1, p0, Landroidx/lifecycle/e0;->d:Landroidx/lifecycle/D;

    iget-object v2, p0, Landroidx/lifecycle/e0;->e:Landroidx/lifecycle/C;

    iget-object v3, p0, Landroidx/lifecycle/e0;->f:LNc/B;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/e0;-><init>(Landroidx/lifecycle/D;Landroidx/lifecycle/C;LNc/B;Lsb/n;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/e0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/e0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/e0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Landroidx/lifecycle/e0;->c:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x0

    iget-object v5, v0, Landroidx/lifecycle/e0;->d:Landroidx/lifecycle/D;

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v6, :cond_0

    iget-object v1, v0, Landroidx/lifecycle/e0;->b:Ltb/w;

    iget-object v2, v0, Landroidx/lifecycle/e0;->a:Ltb/w;

    :try_start_0
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v2, v5

    check-cast v2, Landroidx/lifecycle/L;

    iget-object v2, v2, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v7, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    if-ne v2, v7, :cond_2

    return-object v3

    :cond_2
    new-instance v2, Ltb/w;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ltb/w;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    :try_start_1
    iget-object v8, v0, Landroidx/lifecycle/e0;->e:Landroidx/lifecycle/C;

    iget-object v11, v0, Landroidx/lifecycle/e0;->f:LNc/B;

    iget-object v15, v0, Landroidx/lifecycle/e0;->g:Lkb/i;

    iput-object v2, v0, Landroidx/lifecycle/e0;->a:Ltb/w;

    iput-object v7, v0, Landroidx/lifecycle/e0;->b:Ltb/w;

    iput v6, v0, Landroidx/lifecycle/e0;->c:I

    new-instance v14, LNc/k;

    invoke-static/range {p0 .. p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object v0

    invoke-direct {v14, v6, v0}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v14}, LNc/k;->q()V

    sget-object v0, Landroidx/lifecycle/B;->Companion:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/lifecycle/z;->c(Landroidx/lifecycle/C;)Landroidx/lifecycle/B;

    move-result-object v9

    invoke-static {v8}, Landroidx/lifecycle/z;->a(Landroidx/lifecycle/C;)Landroidx/lifecycle/B;

    move-result-object v12

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object v0

    new-instance v6, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;

    move-object v8, v6

    move-object v10, v2

    move-object v13, v14

    move-object/from16 v16, v14

    move-object v14, v0

    invoke-direct/range {v8 .. v15}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;-><init>(Landroidx/lifecycle/B;Ltb/w;LNc/B;Landroidx/lifecycle/B;LNc/k;LYc/d;Lsb/n;)V

    iput-object v6, v7, Ltb/w;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroidx/lifecycle/D;->a(Landroidx/lifecycle/I;)V

    invoke-virtual/range {v16 .. v16}, LNc/k;->p()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v7

    :goto_0
    iget-object v0, v2, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LNc/j0;

    if-eqz v0, :cond_4

    invoke-interface {v0, v4}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iget-object v0, v1, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/H;

    if-eqz v0, :cond_5

    invoke-virtual {v5, v0}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    :cond_5
    return-object v3

    :catchall_1
    move-exception v0

    move-object v1, v7

    :goto_1
    iget-object v2, v2, Ltb/w;->a:Ljava/lang/Object;

    check-cast v2, LNc/j0;

    if-eqz v2, :cond_6

    invoke-interface {v2, v4}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_6
    iget-object v1, v1, Ltb/w;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/H;

    if-eqz v1, :cond_7

    invoke-virtual {v5, v1}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    :cond_7
    throw v0
.end method
