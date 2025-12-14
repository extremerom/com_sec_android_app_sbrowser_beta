.class public final LQc/I;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lib/c;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LQc/I;->a:I

    iput-object p2, p0, LQc/I;->e:Ljava/lang/Object;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lib/c;I)V
    .locals 0

    iput p3, p0, LQc/I;->a:I

    iput-object p1, p0, LQc/I;->e:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LQc/I;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LQc/i;

    check-cast p3, Lib/c;

    new-instance v0, LQc/I;

    iget-object p0, p0, LQc/I;->e:Ljava/lang/Object;

    check-cast p0, Lv2/h0;

    const/4 v1, 0x4

    invoke-direct {v0, p3, p0, v1}, LQc/I;-><init>(Lib/c;Ljava/lang/Object;I)V

    iput-object p1, v0, LQc/I;->c:Ljava/lang/Object;

    iput-object p2, v0, LQc/I;->d:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LQc/I;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lv2/b0;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lib/c;

    new-instance p2, LQc/I;

    iget-object p0, p0, LQc/I;->e:Ljava/lang/Object;

    check-cast p0, Lv2/h0;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p3, v0}, LQc/I;-><init>(Ljava/lang/Object;Lib/c;I)V

    iput-object p1, p2, LQc/I;->d:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p2, p0}, LQc/I;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LQc/i;

    check-cast p3, Lib/c;

    new-instance v0, LQc/I;

    iget-object p0, p0, LQc/I;->e:Ljava/lang/Object;

    check-cast p0, LNc/B;

    const/4 v1, 0x2

    invoke-direct {v0, p3, p0, v1}, LQc/I;-><init>(Lib/c;Ljava/lang/Object;I)V

    iput-object p1, v0, LQc/I;->c:Ljava/lang/Object;

    iput-object p2, v0, LQc/I;->d:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LQc/I;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LQc/i;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lib/c;

    new-instance v0, LQc/I;

    iget-object p0, p0, LQc/I;->e:Ljava/lang/Object;

    check-cast p0, Lsb/r;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p0, v1}, LQc/I;-><init>(Lib/c;Ljava/lang/Object;I)V

    iput-object p1, v0, LQc/I;->c:Ljava/lang/Object;

    iput-object p2, v0, LQc/I;->d:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LQc/I;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, LQc/i;

    check-cast p3, Lib/c;

    new-instance v0, LQc/I;

    iget-object p0, p0, LQc/I;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, LQc/I;-><init>(Ljava/lang/Object;Lib/c;I)V

    iput-object p1, v0, LQc/I;->c:Ljava/lang/Object;

    iput-object p2, v0, LQc/I;->d:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LQc/I;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v7, p0

    iget v0, v7, LQc/I;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v7, LQc/I;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, v7, LQc/I;->c:Ljava/lang/Object;

    check-cast v1, LQc/i;

    iget-object v3, v7, LQc/I;->d:Ljava/lang/Object;

    check-cast v3, Lv2/b0;

    iget-object v4, v3, Lv2/b0;->a:Lv2/C0;

    iget-object v5, v7, LQc/I;->e:Ljava/lang/Object;

    check-cast v5, Lv2/h0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lv2/d0;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Lkb/i;-><init>(ILib/c;)V

    new-instance v8, LQc/y;

    iget-object v4, v4, Lv2/C0;->k:LQc/y;

    invoke-direct {v8, v4, v6}, LQc/y;-><init>(LQc/h;Lsb/n;)V

    new-instance v4, Lv2/M0;

    new-instance v6, Lo3/e;

    iget-object v9, v5, Lv2/h0;->e:Lo3/c;

    invoke-direct {v6, v5, v9}, Lo3/e;-><init>(Lv2/h0;Lo3/c;)V

    new-instance v5, LB3/c;

    iget-object v3, v3, Lv2/b0;->a:Lv2/C0;

    invoke-direct {v5, v3}, LB3/c;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lv2/a;->c:Lv2/a;

    invoke-direct {v4, v8, v6, v5, v3}, Lv2/M0;-><init>(LQc/h;Lo3/e;LB3/c;Lsb/a;)V

    iput v2, v7, LQc/I;->b:I

    invoke-interface {v1, v4, v7}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Ldb/r;->a:Ldb/r;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v7, LQc/I;->b:I

    const/4 v2, 0x0

    iget-object v3, v7, LQc/I;->e:Ljava/lang/Object;

    check-cast v3, Lv2/h0;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-ne v1, v4, :cond_3

    iget-object v0, v7, LQc/I;->c:Ljava/lang/Object;

    check-cast v0, Lv2/g1;

    iget-object v1, v7, LQc/I;->d:Ljava/lang/Object;

    check-cast v1, Lv2/b0;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, v7, LQc/I;->d:Ljava/lang/Object;

    check-cast v1, Lv2/b0;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_3

    :cond_5
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, v7, LQc/I;->d:Ljava/lang/Object;

    check-cast v1, Lv2/b0;

    if-eqz v1, :cond_6

    iget-object v6, v1, Lv2/b0;->a:Lv2/C0;

    iget-object v6, v6, Lv2/C0;->b:Lv2/g1;

    goto :goto_2

    :cond_6
    move-object v6, v2

    :goto_2
    iput-object v1, v7, LQc/I;->d:Ljava/lang/Object;

    iput v5, v7, LQc/I;->b:I

    invoke-static {v3, v6, v7}, Lv2/h0;->a(Lv2/h0;Lv2/g1;Lkb/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_7

    goto/16 :goto_a

    :cond_7
    :goto_3
    check-cast v6, Lv2/g1;

    if-eqz v1, :cond_9

    iget-object v8, v1, Lv2/b0;->a:Lv2/C0;

    iput-object v1, v7, LQc/I;->d:Ljava/lang/Object;

    iput-object v6, v7, LQc/I;->c:Ljava/lang/Object;

    iput v4, v7, LQc/I;->b:I

    invoke-virtual {v8, v7}, Lv2/C0;->e(Lkb/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_8

    goto/16 :goto_a

    :cond_8
    move-object v0, v6

    :goto_4
    check-cast v4, Lv2/h1;

    move-object v8, v0

    goto :goto_5

    :cond_9
    move-object v4, v2

    move-object v8, v6

    :goto_5
    if-eqz v4, :cond_a

    iget-object v0, v4, Lv2/h1;->a:Ljava/util/List;

    goto :goto_6

    :cond_a
    move-object v0, v2

    :goto_6
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    if-eqz v1, :cond_c

    iget-object v0, v1, Lv2/b0;->b:Lv2/h1;

    if-eqz v0, :cond_c

    iget-object v6, v0, Lv2/h1;->a:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-ne v6, v5, :cond_c

    move-object v4, v0

    :cond_c
    if-eqz v4, :cond_d

    iget-object v0, v4, Lv2/h1;->b:Ljava/lang/Integer;

    goto :goto_7

    :cond_d
    move-object v0, v2

    :goto_7
    if-nez v0, :cond_f

    if-eqz v1, :cond_e

    iget-object v0, v1, Lv2/b0;->b:Lv2/h1;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lv2/h1;->b:Ljava/lang/Integer;

    goto :goto_8

    :cond_e
    move-object v0, v2

    :goto_8
    if-eqz v0, :cond_f

    iget-object v4, v1, Lv2/b0;->b:Lv2/h1;

    :cond_f
    if-nez v4, :cond_10

    iget-object v0, v3, Lv2/h0;->b:Ljava/lang/Object;

    goto :goto_9

    :cond_10
    invoke-virtual {v8, v4}, Lv2/g1;->getRefreshKey(Lv2/h1;)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v5, :cond_11

    const/4 v5, 0x3

    const-string v6, "Paging"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Refresh key "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " returned from PagingSource "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "message"

    invoke-static {v5, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_9
    if-eqz v1, :cond_12

    iget-object v5, v1, Lv2/b0;->a:Lv2/C0;

    iget-object v5, v5, Lv2/C0;->j:LNc/m0;

    invoke-virtual {v5, v2}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_12
    if-eqz v1, :cond_13

    iget-object v1, v1, Lv2/b0;->c:LNc/m0;

    invoke-virtual {v1, v2}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_13
    new-instance v1, Lv2/b0;

    iget-object v9, v3, Lv2/h0;->c:Lv2/L0;

    iget-object v2, v3, Lv2/h0;->e:Lo3/c;

    iget-object v2, v2, Lo3/c;->b:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, LQc/k;

    new-instance v2, LJ2/T;

    const-class v14, Lv2/h0;

    const-string v15, "refresh"

    const/4 v12, 0x0

    iget-object v3, v7, LQc/I;->e:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Lv2/h0;

    const-string v16, "refresh()V"

    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, LJ2/T;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v3, Lv2/C0;

    move-object v6, v3

    move-object v7, v0

    move-object v11, v4

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Lv2/C0;-><init>(Ljava/lang/Object;Lv2/g1;Lv2/L0;LQc/k;Lv2/h1;LJ2/T;)V

    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Lv2/b0;-><init>(Lv2/C0;Lv2/h1;LNc/m0;)V

    move-object v0, v1

    :goto_a
    return-object v0

    :pswitch_1
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v7, LQc/I;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_14

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_b

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, v7, LQc/I;->c:Ljava/lang/Object;

    check-cast v1, LQc/i;

    iget-object v3, v7, LQc/I;->d:Ljava/lang/Object;

    check-cast v3, Lv2/M0;

    new-instance v4, Lv2/T;

    iget-object v5, v7, LQc/I;->e:Ljava/lang/Object;

    check-cast v5, LNc/B;

    invoke-direct {v4, v5, v3}, Lv2/T;-><init>(LNc/B;Lv2/M0;)V

    iput v2, v7, LQc/I;->b:I

    invoke-interface {v1, v4, v7}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_16

    goto :goto_c

    :cond_16
    :goto_b
    sget-object v0, Ldb/r;->a:Ldb/r;

    :goto_c
    return-object v0

    :pswitch_2
    sget-object v8, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, v7, LQc/I;->b:I

    const/4 v9, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    if-eq v0, v1, :cond_18

    if-ne v0, v9, :cond_17

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_e

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, v7, LQc/I;->c:Ljava/lang/Object;

    check-cast v0, LQc/i;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v10, v0

    move-object/from16 v0, p1

    goto :goto_d

    :cond_19
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v0, v7, LQc/I;->c:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, LQc/i;

    iget-object v0, v7, LQc/I;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v3, v0, v1

    aget-object v4, v0, v9

    const/4 v5, 0x3

    aget-object v5, v0, v5

    const/4 v6, 0x4

    aget-object v6, v0, v6

    iput-object v10, v7, LQc/I;->c:Ljava/lang/Object;

    iput v1, v7, LQc/I;->b:I

    iget-object v0, v7, LQc/I;->e:Ljava/lang/Object;

    check-cast v0, Lsb/r;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p0

    invoke-interface/range {v0 .. v6}, Lsb/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1a

    goto :goto_f

    :cond_1a
    :goto_d
    const/4 v1, 0x0

    iput-object v1, v7, LQc/I;->c:Ljava/lang/Object;

    iput v9, v7, LQc/I;->b:I

    invoke-interface {v10, v0, v7}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1b

    goto :goto_f

    :cond_1b
    :goto_e
    sget-object v8, Ldb/r;->a:Ldb/r;

    :goto_f
    return-object v8

    :pswitch_3
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v7, LQc/I;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1d

    if-ne v1, v2, :cond_1c

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v1, v7, LQc/I;->c:Ljava/lang/Object;

    check-cast v1, LQc/i;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_10

    :cond_1e
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, v7, LQc/I;->c:Ljava/lang/Object;

    check-cast v1, LQc/i;

    iget-object v4, v7, LQc/I;->d:Ljava/lang/Object;

    iput-object v1, v7, LQc/I;->c:Ljava/lang/Object;

    iput v3, v7, LQc/I;->b:I

    iget-object v3, v7, LQc/I;->e:Ljava/lang/Object;

    invoke-interface {v3, v4, v7}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1f

    goto :goto_12

    :cond_1f
    :goto_10
    const/4 v4, 0x0

    iput-object v4, v7, LQc/I;->c:Ljava/lang/Object;

    iput v2, v7, LQc/I;->b:I

    invoke-interface {v1, v3, v7}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_20

    goto :goto_12

    :cond_20
    :goto_11
    sget-object v0, Ldb/r;->a:Ldb/r;

    :goto_12
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
